import 'package:eizo_mushi/app/utils/context_extension.dart';
import 'package:eizo_mushi/features/common/widgets/app_loading.dart';
import 'package:eizo_mushi/features/common/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class AppSecondaryButton extends StatelessWidget {
  const AppSecondaryButton({
    required this.title,
    required this.onPressed,
    super.key,
    this.padding,
    this.isLoading = false,
    this.borderRadius,
    this.textColor,
    this.color,
    this.border,
    this.textStyle,
    this.elevation,
    this.expanded = true,
    this.iconPosition = IconPosition.left,
    this.icon,
  });
  final String title;
  final EdgeInsets? padding;
  final GestureTapCallback? onPressed;
  final bool isLoading;
  final double? borderRadius;
  final Color? textColor;
  final Color? color;
  final BorderSide? border;
  final TextStyle? textStyle;
  final double? elevation;
  final bool expanded;
  final Widget? icon;
  final IconPosition iconPosition;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        elevation: elevation != null ? WidgetStatePropertyAll(elevation) : null,
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 8),
            side: border ?? const BorderSide(),
          ),
        ),
        backgroundColor: const WidgetStatePropertyAll(Colors.transparent),
        foregroundColor:
            textColor == null ? WidgetStatePropertyAll(textColor) : null,
        padding: WidgetStatePropertyAll(
          padding ?? const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
        ),
        textStyle: WidgetStatePropertyAll(
          textStyle ?? context.textTheme.bodyLarge,
        ),
      ),
      child: isLoading
          ? AppLoading(
              size: textStyle?.fontSize ?? 30,
              isCenter: expanded,
            )
          : Row(
              mainAxisSize: expanded ? MainAxisSize.max : MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (icon != null && iconPosition == IconPosition.left) ...[
                  icon!,
                  const SizedBox(width: 8),
                ],
                Text(
                  title,
                ),
                if (icon != null && iconPosition == IconPosition.right) ...[
                  const SizedBox(width: 8),
                  icon!,
                ],
              ],
            ),
    );
  }
}
