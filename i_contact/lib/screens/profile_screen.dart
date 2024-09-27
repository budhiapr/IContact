import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:i_contact/blocs/base/bloc/base_bloc.dart';
import 'package:i_contact/blocs/logout/bloc/logout_bloc.dart';
import 'package:i_contact/blocs/profile/bloc/profile_bloc.dart';
import 'package:i_contact/utils/constants.dart';
import 'package:i_contact/utils/theme_app_colors.dart';
import 'package:i_contact/widgets/error_widget_component.dart';
import 'package:i_contact/widgets/loading_widget_component.dart';
import 'package:i_contact/widgets/text_widget_component.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) =>
                ProfileBloc()..add(const ProfileEvent.getProfile())),
        BlocProvider(create: (context) => LogoutBloc())
      ],
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            Constants.LABEL_MY_PROFILE,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          actions: [
            BlocListener<LogoutBloc, BaseState<LogoutState>>(
              listener: (context, state) {
                state.when(
                  loading: (_) => const LoadingWidgetComponent(),
                  next: (nextData) {
                    nextData.map(loggedOut: (_) {
                      Fluttertoast.showToast(
                        msg: Constants.LABEL_LOGOUT_SUCCESSFULLY,
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.green,
                        textColor: Colors.white,
                        fontSize: 16.0,
                      );
                    });
                  },
                  error: (errorMessage) => ErrorWidgetComponent(errorMessage),
                );
              },
              child: GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    Constants.LABEL_BUTTON_LOGOUT,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: ThemeAppColors.blue,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                onTap: () {
                  context.read<LogoutBloc>().add(const LogoutEvent.logout());
                  Get.offAllNamed('/login');
                },
              ),
            ),
          ],
        ),
        body: BlocBuilder<ProfileBloc, BaseState<ProfileState>>(
          builder: (context, state) {
            return state.when(
                loading: (_) => const LoadingWidgetComponent(),
                next: (nextData) {
                  return nextData.map(loadedProfile: (loaded) {
                    return SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 12, horizontal: 12),
                            child: CircleAvatar(
                              radius: 50,
                              backgroundColor: ThemeAppColors.blue,
                              child: Text(
                                "${loaded.contact.firstName[0]}${loaded.contact.lastName[0]}",
                                style: Theme.of(context)
                                    .textTheme
                                    .displaySmall!
                                    .copyWith(color: ThemeAppColors.white),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: TextWidgetComponent(
                                '${loaded.contact.firstName} ${loaded.contact.lastName}',
                                ThemeAppColors.black.withAlpha(80),
                                'bodyLarge'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: TextWidgetComponent(
                                loaded.contact.email ??
                                    Constants.LABEL_EMAIL_NOT_PROVIDED,
                                ThemeAppColors.black.withAlpha(80),
                                'bodyLarge'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: TextWidgetComponent(
                                loaded.contact.dob ??
                                    Constants.LABEL_DOB_NOT_PROVIDED,
                                ThemeAppColors.black.withAlpha(80),
                                'bodyLarge'),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                    shape: WidgetStateProperty.all(
                                        RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          8.0), // Border radius of 8
                                    )),
                                    backgroundColor:
                                        WidgetStateProperty.resolveWith<Color>(
                                      (Set<WidgetState> states) {
                                        if (states
                                            .contains(WidgetState.pressed)) {
                                          return ThemeAppColors.blue.withAlpha(
                                              80); // Darker color when pressed
                                        }
                                        return ThemeAppColors.blue
                                            .withAlpha(40); // Default color
                                      },
                                    )),
                                onPressed: null,
                                child: const TextWidgetComponent(
                                    Constants.LABEL_BUTTON_UPDATE_MY_DETAIL,
                                    ThemeAppColors.blue,
                                    "titleMedium"),
                              ),
                            ),
                          ),
                          const Spacer()
                        ],
                      ),
                    );
                  });
                },
                error: (errorMessage) => ErrorWidgetComponent(errorMessage));
          },
        ),
      ),
    );
  }
}
