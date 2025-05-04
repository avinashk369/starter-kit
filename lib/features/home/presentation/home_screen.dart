import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moneymemos/core/theme/bloc/theme_bloc.dart';
import 'package:moneymemos/widgets/buttons/i_elevated_button.dart';
import 'package:moneymemos/widgets/buttons/i_outline_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Center(
                child: IElevatedButton(
                  leadingIcon: Icons.home,
                  onPressed: () {},
                  text: title,
                ),
              ),
              Center(
                child: IOutlineButton(
                  leadingIcon: Icons.home,
                  onPressed: () {},
                  text: title,
                ),
              ),
              BlocBuilder<ThemeBloc, ThemeState>(
                builder: (context, state) {
                  return IconButton(
                    icon: Icon(
                      state.themeMode == ThemeMode.dark
                          ? Icons.light_mode
                          : Icons.dark_mode,
                    ),
                    onPressed: () {
                      context.read<ThemeBloc>().add(
                            ChangeTheme(isDarkMode: true),
                          );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
