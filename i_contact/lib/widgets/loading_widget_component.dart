import 'package:flutter/material.dart';

class LoadingWidgetComponent extends StatelessWidget {
  const LoadingWidgetComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
