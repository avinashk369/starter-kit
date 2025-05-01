import 'package:flutter/material.dart';
import 'package:moneymemos/core/const/app_colors.dart';
import 'package:moneymemos/core/const/placeholder_const.dart';
import 'package:moneymemos/utils/extensions/widget_provider.dart';

class AppErrorWidget extends StatelessWidget {
  const AppErrorWidget({super.key, required this.error, this.isError = false});
  final String error;
  final bool isError;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              isError ? Icons.error : Icons.warning,
              size: 100,
              color: isError ? AppColors.red : Colors.amber,
            )
                .margin(EdgeInsets.all(20))
                .background(AppColors.bgColor)
                .cornerRadius(BorderRadius.circular(100)),
            SizedBox(height: 48),
            Text(
              PlaceholderConst.errorWidget,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: AppColors.white,
                  ),
            ),
            SizedBox(height: 16),
            Text(
              error,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: AppColors.descColor,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
