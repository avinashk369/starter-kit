import 'package:flutter/material.dart';
import 'package:moneymemos/core/const/app_colors.dart';
import 'package:moneymemos/core/const/string_constant.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({
    super.key,
    required this.title,
    this.actions,
    this.subtitle = false,
    this.preferredSize = const Size.fromHeight(50.0),
  });
  final String title;
  final List<Widget>? actions;
  final bool subtitle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
      forceMaterialTransparency: true,
      title: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Text(title),
          Image(
            image: AssetImage('assets/images/logo.png'),
            fit: BoxFit.contain,
            width: 100,
          ),
          subtitle
              ? Text(
                  StringsConstants.appName,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: AppColors.darkBackground),
                )
              : const SizedBox.shrink(),
        ],
      ),
      centerTitle: false,
      titleSpacing: 8,
      titleTextStyle:
          Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 18),
      // leadingWidth: 45,
      // leading: const Padding(
      //   padding: EdgeInsets.only(left: 8),
      //   child: Image(
      //     image: AssetImage(
      //       'assets/images/logo.png',
      //     ),
      //     fit: BoxFit.contain,
      //   ),
      // ),
      actions: actions,
    );
  }

  @override
  final Size preferredSize;
}
