import 'package:dim_loading_dialog/dim_loading_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';
import 'package:i_contact/blocs/auth/bloc/auth_bloc.dart';
import 'package:i_contact/blocs/base/bloc/base_bloc.dart';
import 'package:i_contact/blocs/repositories/auth_repositories/auth_repository_impl.dart';
import 'package:i_contact/pages/home_page.dart';
import 'package:i_contact/pages/login_page.dart';
import 'package:i_contact/utils/constants.dart';
import 'package:i_contact/utils/theme_app_colors.dart';
import 'package:i_contact/widgets/text_widget_component.dart';

class LoginFormComponent extends StatefulWidget {
  const LoginFormComponent({super.key});

  @override
  State<LoginFormComponent> createState() => _LoginFormComponentState();
}

class _LoginFormComponentState extends State<LoginFormComponent> {
  late TextEditingController userIdController;
  final ValueNotifier<bool> isButtonEnabled = ValueNotifier(false);
  final formKey = GlobalKey<FormBuilderState>();

  @override
  void initState() {
    userIdController = TextEditingController();
    userIdController.addListener(handleTextChanged);
    super.initState();
  }

  @override
  void dispose() {
    userIdController.dispose();
    isButtonEnabled.dispose();
    super.dispose();
  }

  void handleTextChanged() {
    isButtonEnabled.value = userIdController.text.isNotEmpty;
  }

  @override
  Widget build(BuildContext context) {
    final dimDialog = DimLoadingDialog(
      context,
      blur: 2,
      backgroundColor: const Color(0x33000000),
      animationDuration: const Duration(milliseconds: 500),
    );

    return RepositoryProvider(
      create: (context) => AuthRepositoryImpl(),
      child: BlocConsumer<AuthBloc, BaseState<AuthState>>(
        listener: (context, state) {
          state.maybeWhen(
              loading: (isLoading) {
                dimDialog.show();
              },
              next: (dataNext) => dataNext.map(authenticated: (_) async {
                    await Future.delayed(const Duration(seconds: 1));
                    dimDialog.dismiss();
                    Get.offAll(() => const HomePage());
                  }, unauthenticated: (_) async {
                    await Future.delayed(const Duration(seconds: 1));
                    Fluttertoast.showToast(
                        msg: Constants.ERROR_USER_NOT_FOUND,
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0);

                    Get.offAll(() => const LoginPage());
                  }),
              error: (message) async {
                String formatErrorMessage(String message) {
                  if (message.contains('Exception: ')) {
                    return message.split('Exception: ').last;
                  }
                  return message;
                }

                var errorMessage = formatErrorMessage(message);

                Fluttertoast.showToast(
                    msg: errorMessage,
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    fontSize: 16.0);
              },
              orElse: () {
                Get.offAll(() => const LoginPage());
              });
        },
        builder: (context, state) {
          return FormBuilder(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: RichText(
                      text: const TextSpan(
                        text: Constants.LABEL_FORM_LOGIN,
                        style: TextStyle(color: Colors.black, fontSize: 16),
                        children: <TextSpan>[
                          TextSpan(
                            text: Constants.LABEL_IS_REQUIRED,
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  FormBuilderTextField(
                    cursorColor: ThemeAppColors.darkGray,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.person_outline_outlined,
                          color: ThemeAppColors.blue,
                        ),
                        hintText: Constants.LABEL_PLACEHOLDER_LOGIN,
                        hintStyle:
                            const TextStyle(color: ThemeAppColors.darkGray),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: const BorderSide(
                                color: ThemeAppColors.blue, width: 2)),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide:
                              const BorderSide(color: ThemeAppColors.blue),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide:
                              const BorderSide(color: ThemeAppColors.blue),
                        )),
                    name: 'userId',
                    controller: userIdController,
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                      FormBuilderValidators.minLength(3),
                    ]),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: ValueListenableBuilder<bool>(
                      valueListenable: isButtonEnabled,
                      builder: (context, isEnabled, child) {
                        return ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0))),
                          onPressed: isEnabled
                              ? () {
                                  context.read<AuthBloc>().add(
                                      AuthEvent.login(userIdController.text));
                                }
                              : null,
                          child: const TextWidgetComponent(
                              Constants.LABEL_BUTTON_LOGIN,
                              ThemeAppColors.blue,
                              "titleMedium"),
                        );
                      },
                    ),
                  )
                ],
              ));
        },
      ),
    );
  }
}
