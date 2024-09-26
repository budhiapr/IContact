import 'dart:ui';
import 'package:flutter/material.dart';

class DimLoadingDialogComponent {
  static void show(
    BuildContext context, {
    double blur = 2,
    Color backgroundColor = const Color(0x33000000),
    Duration animationDuration = const Duration(milliseconds: 500),
  }) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return _buildDialog(context, blur, backgroundColor, animationDuration);
      },
    );
  }

  static void dismiss(BuildContext context) {
    if (Navigator.canPop(context)) {
      Navigator.pop(context);
    }
  }

  static Widget _buildDialog(
    BuildContext context,
    double blur,
    Color backgroundColor,
    Duration animationDuration,
  ) {
    return Stack(
      children: [
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
          child: Container(
            color: backgroundColor,
          ),
        ),
        const Center(
          child:
              CircularProgressIndicator(), // Ganti sesuai dengan loading widget Anda
        ),
      ],
    );
  }
}
