import 'package:flutter/material.dart';
import 'package:moneymemos/widgets/pops/i_pop_button.dart';

class IElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final Widget? leadingIcon;
  final Widget? trailingIcon;
  final EdgeInsets? padding;
  final TextStyle? textStyle;

  const IElevatedButton({
    super.key,
    required this.text,
    this.onPressed,
    this.leadingIcon,
    this.trailingIcon,
    this.padding,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return IPopButton(
      child: ElevatedButton(
        onPressed: onPressed,
        style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
              padding: WidgetStateProperty.all(
                padding ??
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              ),
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              elevation: WidgetStateProperty.all(0),
            ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (leadingIcon != null) ...[
              leadingIcon ?? const SizedBox.shrink(),
              const SizedBox(width: 8),
            ],
            Text(
              text,
              style: textStyle ??
                  Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
            ),
            if (trailingIcon != null) ...[
              const SizedBox(width: 8),
              trailingIcon ?? const SizedBox.shrink(),
            ],
          ],
        ),
      ),
    );
  }
}
