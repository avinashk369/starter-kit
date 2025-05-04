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
    try {
      User? user;

      final GoogleSignIn googleSignIn = GoogleSignIn();

      final GoogleSignInAccount? googleSignInAccount =
          await googleSignIn.signIn();

      if (googleSignInAccount != null) {
        final GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;

        final AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleSignInAuthentication.accessToken,
          idToken: googleSignInAuthentication.idToken,
        );
        try {
          final UserCredential? userCredential = await _signInWithCredential(
            credential,
          );

          user = userCredential?.user;
        } on FirebaseAuthException catch (e) {
          if (e.code == 'account-exists-with-different-credential') {
            throw ServerError.withError(
              error: "The account already exists with a different credential.",
            );
          } else if (e.code == 'invalid-credential') {
            throw ServerError.withError(
              error: "Error occurred while accessing credentials. Try again.",
            );
          }
        } catch (e) {
          throw ServerError.withError(
            error: "Error occurred using Google Sign-In. Try again.",
          );
        }
      }

      return UserModel()..id = user?.email ?? '';
    } on PlatformException catch (e) {
      if (e.code == 'sign_in_failed') {
        throw ServerError.withError(
          error: "Sign-in failed.",
        );
      } else {
        throw ServerError.withError(
          error: "An unknown error occurred. Try again.",
        );
      }
    } catch (error) {
      throw ServerError.withError(error: error);
    }
  }

  @override
  Future<bool> authLogout() async {
    try {
      final GoogleSignIn googleSignIn = GoogleSignIn();

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

      final UserCredential linkedUserCredential =
          await _auth.currentUser!.linkWithCredential(credential);

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
