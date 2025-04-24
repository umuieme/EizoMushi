import 'package:eizo_mushi/app/utils/context_extension.dart';
import 'package:flutter/material.dart';

class AppLoading extends StatelessWidget {
  const AppLoading({super.key, this.size, this.color, this.isCenter = true});
  final double? size;
  final Color? color;
  final bool isCenter;

  @override
  Widget build(BuildContext context) {
    final widget = SizedBox(
      height: size ?? 32,
      width: size ?? 32,
      child: CircularProgressIndicator(
        color: color ?? context.primaryColor,
      ),
    );
    if (isCenter) {
      return Center(child: widget);
    }
    return widget;
  }
}
