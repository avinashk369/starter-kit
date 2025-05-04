import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:moneymemos/features/splash/presentation/bloc/splash_bloc.dart';
import 'package:moneymemos/routes/route_names.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.I<SplashBloc>()..checkAndNavigate(),
      child: Scaffold(
        body: BlocListener<SplashBloc, bool>(
          listener: (context, state) {
            if (state) {
              context.goNamed(RouteNames.welcome);
            }
          },
          child: Center(
            child: Text(
              'Splash Screen',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
        ),
      ),
    );
  }
}
