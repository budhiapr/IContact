import 'package:flutter/material.dart';
import 'package:i_contact/utils/constants.dart';
import 'package:i_contact/utils/theme_app_colors.dart';
import 'package:i_contact/widgets/login_form_component.dart';
import 'package:i_contact/widgets/text_widget_component.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: _LoginPageBody(),
      ),
    );
  }
}

class _LoginPageBody extends StatelessWidget {
  const _LoginPageBody();

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _GreetingText(),
            SizedBox(height: 50),
            LoginFormComponent(),
          ],
        ),
      ),
    );
  }
}

class _GreetingText extends StatelessWidget {
  const _GreetingText();

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextWidgetComponent(
          Constants.LABEL_HI_THERE,
          ThemeAppColors.blue,
          'headlineSmall',
        ),
        TextWidgetComponent(
          Constants.LABEL_PLEASE_LOGIN,
          ThemeAppColors.darkGray,
          'bodyMedium',
        ),
      ],
    );
  }
}
