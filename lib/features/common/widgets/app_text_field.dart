import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    this.titleText,
    this.initialValue,
    this.focusNode,
    this.onChanged,
    this.onSaved,
    this.validator,
    this.obscureText = false,
    this.hint,
    this.prefixIcon,
    this.borderRadius,
    this.enabled,
    this.maxLines,
    this.maxLength,
    this.maxLengthEnforcement,
    this.inputDecoration,
    this.label,
    this.contentPadding,
    this.suffixIcon,
    this.autovalidateMode,
    this.keyboardType,
    this.inputBorder,
    this.focusedBorder,
    this.focusedErrorBorder,
    this.labelStyle,
    this.hintStyle,
    this.fillColor,
    this.controller,
    this.enabledInputBorder,
    this.inputTextStyle,
    this.inputFormatter,
    this.textInputAction,
    this.onFieldSubmitted,
    this.minLines,
    this.autoFocus = false,
    this.errorText,
  });

  final String? label;
  final TextStyle? labelStyle;
  final String? titleText;
  final String? hint;
  final String? initialValue;
  final FocusNode? focusNode;
  final void Function(String?)? onChanged;
  final ValueChanged<String?>? onSaved;
  final bool obscureText;
  final FormFieldValidator<String>? validator;
  final Widget? prefixIcon;
  final BorderRadius? borderRadius;
  final bool? enabled;
  final int? maxLines;
  final int? minLines;
  final int? maxLength;
  final MaxLengthEnforcement? maxLengthEnforcement;
  final InputDecoration? inputDecoration;
  final InputBorder? inputBorder;
  final InputBorder? focusedBorder;
  final InputBorder? focusedErrorBorder;
  final InputBorder? enabledInputBorder;
  final EdgeInsetsGeometry? contentPadding;
  final Widget? suffixIcon;
  final AutovalidateMode? autovalidateMode;
  final TextInputType? keyboardType;
  final TextStyle? hintStyle;
  final TextStyle? inputTextStyle;
  final Color? fillColor;
  final TextEditingController? controller;
  final List<TextInputFormatter>? inputFormatter;
  final TextInputAction? textInputAction;
  final void Function(String)? onFieldSubmitted;
  final bool autoFocus;
  final String? errorText;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (titleText != null) ...[
          Text(
            titleText!,
            style: textTheme.bodyMedium?.copyWith(),
          ),
          const SizedBox(height: 8),
        ],
        TextFormField(
          autofocus: autoFocus,
          minLines: minLines,
          validator: validator,
          obscureText: obscureText,
          onSaved: onSaved,
          onChanged: onChanged,
          onFieldSubmitted: onFieldSubmitted,
          initialValue: initialValue,
          controller: controller,
          textInputAction: textInputAction,
          enabled: enabled,
          maxLines: maxLines ?? 1,
          maxLength: maxLength,
          maxLengthEnforcement: maxLengthEnforcement,
          keyboardType: keyboardType,
          autovalidateMode:
              autovalidateMode ?? AutovalidateMode.onUserInteraction,
          style: inputTextStyle ?? textTheme.bodyLarge,
          decoration: inputDecoration ??
              InputDecoration(
                counterText: '',
                errorText: errorText,
                label: label != null
                    ? Text(
                        label ?? '',
                      )
                    : null,
                labelStyle: labelStyle ?? textTheme.bodyMedium,
                hintText: hint,
                hintStyle: hintStyle ?? textTheme.titleLarge,
                contentPadding: contentPadding ??
                    const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                enabledBorder: enabledInputBorder ??
                    OutlineInputBorder(
                      borderRadius: borderRadius ?? BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: Colors.grey.shade700,
                      ),
                    ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: borderRadius ?? BorderRadius.circular(12),
                ),
                border: inputBorder ??
                    OutlineInputBorder(
                      borderRadius: borderRadius ?? BorderRadius.circular(12),
                      borderSide: const BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                focusedBorder: focusedBorder ??
                    OutlineInputBorder(
                      borderRadius: borderRadius ?? BorderRadius.circular(12),
                      borderSide: const BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                focusedErrorBorder: focusedErrorBorder ??
                    OutlineInputBorder(
                      borderRadius: borderRadius ?? BorderRadius.circular(12),
                    ),
                prefixIcon: prefixIcon,
                suffixIcon: suffixIcon,
              ),
          inputFormatters: inputFormatter,
        ),
      ],
    );
  }
}
