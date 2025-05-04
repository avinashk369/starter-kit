import 'package:flutter/material.dart';
import 'package:moneymemos/widgets/pops/i_pop_button.dart';

class ITextButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final IconData? leadingIcon;
  final IconData? trailingIcon;
  final EdgeInsets? padding;
  final TextStyle? textStyle;

  const ITextButton({
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
      child: TextButton(
        onPressed: onPressed,
        style: Theme.of(context).textButtonTheme.style?.copyWith(
              padding: WidgetStateProperty.all(
                padding ??
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              ),
            ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (leadingIcon != null) ...[
              Icon(leadingIcon, size: 20),
              const SizedBox(width: 8),
            ],
            Text(
              text,
              style: textStyle ??
                  Theme.of(context)
                      .textButtonTheme
                      .style
                      ?.textStyle
                      ?.resolve({}),
            ),
            if (trailingIcon != null) ...[
              const SizedBox(width: 8),
              Icon(trailingIcon, size: 20),
            ],
          ],
        ),
      ),
    );
  }
}
