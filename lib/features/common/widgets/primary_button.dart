import 'package:eizo_mushi/app/theme/app_colors.dart';
import 'package:eizo_mushi/features/common/widgets/app_loading.dart';
import 'package:flutter/material.dart';

enum IconPosition { left, right }

class AppPrimaryButton extends StatelessWidget {
  const AppPrimaryButton({
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
  final BoxBorder? border;
  final TextStyle? textStyle;
  final bool expanded;
  final Widget? icon;
  final IconPosition iconPosition;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 8),
          ),
        ),
        textStyle: WidgetStatePropertyAll(textStyle),
        padding: WidgetStatePropertyAll(
          padding ?? const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
        ),
        overlayColor:
            WidgetStatePropertyAll(Colors.black.withValues(alpha: 0.1)),
        backgroundColor: WidgetStatePropertyAll(
          onPressed != null ? color : AppColor.disabled,
        ),
      ),
      child: isLoading
          ? AppLoading(
              size: textStyle?.fontSize ?? 30,
              color: Colors.white,
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
