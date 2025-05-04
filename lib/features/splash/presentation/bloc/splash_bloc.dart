import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class SplashBloc extends Cubit<bool> {
  SplashBloc() : super(false);

  void checkAndNavigate() {
    // Simulate a network call or some initialization
    Future.delayed(const Duration(seconds: 2), () {
      emit(true); // Emit true to indicate navigation should happen
    });
  }

  void reset() {
    emit(false); // Reset the state to false
  }
}
