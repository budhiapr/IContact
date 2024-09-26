import 'package:flutter/material.dart';

class ErrorWidgetComponent extends StatelessWidget {
  final String errorMessage;
  const ErrorWidgetComponent(this.errorMessage, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(errorMessage,
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .copyWith(color: Colors.red));
  }
}
