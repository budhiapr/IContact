import 'package:flutter/material.dart';

class TextWidgetComponent extends StatelessWidget {
  final String label;
  final Color color;
  final String textStyle;
  const TextWidgetComponent(this.label, this.color, this.textStyle,
      {super.key});

  TextStyle? getTextStyle(BuildContext context, String styleName) {
    switch (styleName) {
      case 'headlineLarge':
        return Theme.of(context).textTheme.headlineLarge;
      case 'headlineMedium':
        return Theme.of(context).textTheme.headlineMedium;
      case 'headlineSmall':
        return Theme.of(context).textTheme.headlineSmall;
      case 'bodyLarge':
        return Theme.of(context).textTheme.bodyLarge;
      case 'bodyMedium':
        return Theme.of(context).textTheme.bodyMedium;
      case 'bodySmall':
        return Theme.of(context).textTheme.bodySmall;
      case 'titleLarge':
        return Theme.of(context).textTheme.titleLarge;
      case 'titleMedium':
        return Theme.of(context).textTheme.titleMedium;
      case 'titleSmall':
        return Theme.of(context).textTheme.titleSmall;
      default:
        return Theme.of(context).textTheme.bodySmall; // default style
    }
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: getTextStyle(context, textStyle)?.copyWith(
        color: color,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
