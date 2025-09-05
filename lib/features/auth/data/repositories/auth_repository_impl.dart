import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:moneymemos/core/errors/server_errors.dart';
import 'package:moneymemos/features/auth/data/model/user_model.dart';
import 'package:moneymemos/features/auth/domain/repositories/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl extends AuthRepository {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Future<UserModel> googleSignIn() async {
    final googleSignIn = GoogleSignIn.instance;

    try {
      await googleSignIn.initialize();
      await googleSignIn.disconnect();
      final account = await googleSignIn.authenticate();
      final auth = account.authentication;
      final credentials = GoogleAuthProvider.credential(idToken: auth.idToken);

      final userCredential = await FirebaseAuth.instance.signInWithCredential(
        credentials,
      );
      final user = userCredential.user;

      if (user == null) {
        throw ServerError.withError(error: 'Firebase user is null.');
      }
      return UserModel()
        ..token = await user.getIdToken() ?? ''
        ..name = user.displayName ?? ''
        ..imageUrl = user.photoURL ?? ''
        ..email = user.email ?? '';
    } on PlatformException catch (e) {
      throw _mapPlatformException(e);
    } on FirebaseAuthException catch (e) {
      throw _mapFirebaseAuthException(e);
    } on GoogleSignInException catch (e) {
      throw _mapAuthenticationError(e);
    } catch (e, _) {
      throw ServerError.withError(error: 'Unexpected error during sign-in: $e');
    }
  }

  // Helper function to map FirebaseAuthException to ServerError
  ServerError _mapFirebaseAuthException(FirebaseAuthException e) {
    return switch (e.code) {
      'account-exists-with-different-credential' => ServerError.withError(
        error: 'Account already exists with a different credential.',
      ),
      'invalid-credential' => ServerError.withError(
        error: 'Invalid credentials. Please try again.',
      ),
      _ => ServerError.withError(
        error: 'Firebase authentication error: ${e.message}',
      ),
    };
  }

  // Helper function to map authentication errors
  ServerError _mapAuthenticationError(Object error) {
    if (error is PlatformException) {
      return switch (error.code) {
        'sign_in_canceled' => ServerError.withError(
          error: 'Sign-in cancelled by user.',
        ),
        'sign_in_failed' => ServerError.withError(error: 'Sign-in failed.'),
        _ => ServerError.withError(
          error: 'Authentication error: ${error.message}',
        ),
      };
    }
    return ServerError.withError(
      error: 'Unexpected authentication error: $error',
    );
  }

  // Helper function to map PlatformException to ServerError
  ServerError _mapPlatformException(PlatformException e) {
    return switch (e.code) {
      'sign_in_canceled' => ServerError.withError(
        error: 'Sign-in cancelled by user.',
      ),
      'sign_in_failed' => ServerError.withError(error: 'Sign-in failed.'),
      'network_error' => ServerError.withError(
        error: 'Network error. Please check your connection.',
      ),
      _ => ServerError.withError(
        error: 'Google Sign-In error: ${e.message ?? e.code}',
      ),
    };
  }

  @override
  Future<bool> authLogout() async {
    try {
      final GoogleSignIn googleSignIn = GoogleSignIn.instance;

      try {
        if (!kIsWeb) {
          await googleSignIn.signOut();
        }
        await FirebaseAuth.instance.signOut();
        return true;
      } catch (e) {
        throw ServerError.withError(error: e);
      }
    } catch (e) {
      throw ServerError.withError(error: e);
    }
  }

  Future<UserCredential?> _signInWithCredential(
    AuthCredential credential,
  ) async {
    try {
      // Try signing in with the provided credential
      final UserCredential userCredential = await _auth.signInWithCredential(
        credential,
      );

      return userCredential;
    } on FirebaseAuthException catch (e) {
      // Handle account exists with different credential error
      if (e.code == 'account-exists-with-different-credential') {
        return await _handleExistingAccountWithDifferentCredential(
          e,
          credential,
        );
      } else {
        _handleAuthError(e);
        return null;
      }
    }
  }

  // Handle the case when an account exists with a different credential
  Future<UserCredential?> _handleExistingAccountWithDifferentCredential(
    FirebaseAuthException e,
    AuthCredential credential,
  ) async {
    try {
      // Get available sign-in methods for the email
      String email = e.email ?? '';
      if (email.isEmpty) {
        throw FirebaseAuthException(
          code: 'invalid-email',
          message: 'No email associated with this credential',
        );
      }

      // If signed in, link the new credential to the current user
      if (_auth.currentUser != null) {
        // Link the credential to the current user
        return linkCredential(credential);
      } else {
        // For this approach, we'll need the user to use one of the existing methods first
        // and then link the new provider
        return null;
      }
    } catch (error) {
      // print('Error handling existing account: $error');
      return null;
    }
  }

  // Link different provider credentials to an account
  Future<UserCredential?> linkCredential(AuthCredential credential) async {
    try {
      if (_auth.currentUser == null) {
        throw FirebaseAuthException(
          code: 'no-current-user',
          message: 'No user is currently signed in',
        );
      }

      final UserCredential linkedUserCredential = await _auth.currentUser!
          .linkWithCredential(credential);

      return linkedUserCredential;
    } on FirebaseAuthException catch (e) {
      _handleAuthError(e);
      return null;
    }
  }

  // Central error handling
  void _handleAuthError(FirebaseAuthException e) {
    switch (e.code) {
      case 'email-already-in-use':
        // print('Email already in use. Try signing in instead.');
        break;
      case 'invalid-email':
        // print('Invalid email address.');
        break;
      case 'user-disabled':
        // print('This user account has been disabled.');
        break;
      case 'user-not-found':
        // print('No user found for this email.');
        break;
      case 'wrong-password':
        // print('Incorrect password.');
        break;
      case 'invalid-credential':
        // print('The credential is invalid.');
        break;
      case 'operation-not-allowed':
        // print('This operation is not allowed.');
        break;
      case 'weak-password':
        // print('Password is too weak.');
        break;
      case 'account-exists-with-different-credential':
        // print(
        //   'An account already exists with the same email address but different sign-in credentials.',
        // );
        break;
      default:
      // print('An error occurred during authentication: ${e.message}');
    }

    throw e; // Re-throw to allow caller to handle
  }
}
