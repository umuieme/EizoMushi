import 'package:eizo_mushi/app/utils/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EmptyWidget extends StatelessWidget {
  const EmptyWidget({super.key, this.message, this.onRetryPressed});
  final String? message;
  final GestureTapCallback? onRetryPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        message ?? 'No Data Found',
        style: context.textTheme.headlineMedium,
      ),
    );
  }
}
