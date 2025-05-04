import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:moneymemos/features/welcome/presentation/bloc/welcome_bloc.dart';
import 'package:moneymemos/routes/route_names.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => GetIt.I<WelcomeBloc>()..add(CheckAndNavigate()),
      child: Scaffold(
        body: BlocListener<WelcomeBloc, WelcomeState>(
          listener: (context, state) {
            state.mapOrNull(
              shouldNavigate: (value) {
                value.shouldNavigate
                    ? context.go(RouteNames.dashboardHome)
                    : context.goNamed(RouteNames.auth);
              },
            );
          },
          child: const SizedBox.shrink(),
        ),
      ),
    );
  }
}
