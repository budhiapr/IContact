import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_contact/blocs/auth/bloc/auth_bloc.dart';
import 'package:i_contact/blocs/base/bloc/base_bloc.dart';
import 'package:i_contact/blocs/bottom_navigation/bloc/bottom_navigation_bloc.dart';
import 'package:i_contact/blocs/logout/bloc/logout_bloc.dart';
import 'package:i_contact/blocs/repositories/auth_repositories/auth_repository_impl.dart';
import 'package:i_contact/cubits/user_cubit/cubit/user_cubit.dart';
import 'package:i_contact/pages/home_page.dart';
import 'package:i_contact/pages/login_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_contact/widgets/error_widget_component.dart';
import 'package:i_contact/widgets/loading_widget_component.dart';

void main() {
  runApp(
    MultiRepositoryProvider(
      providers: [
        RepositoryProvider<AuthRepositoryImpl>(
          create: (context) => AuthRepositoryImpl(),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<AuthBloc>(
            create: (context) => AuthBloc(
              RepositoryProvider.of<AuthRepositoryImpl>(context),
            ),
          ),
          BlocProvider(create: (context) => BottomNavigationBloc()),
          BlocProvider(create: (context) => LogoutBloc()),
          BlocProvider(create: (context) => UserCubit()),
        ],
        child: const MainApp(), // Ganti dengan widget utama Anda
      ),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(name: '/login', page: () => const LoginPage()),
        GetPage(name: '/home', page: () => const HomePage()),
      ],
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: RepositoryProvider(
        // Menggunakan hanya satu RepositoryProvider
        create: (context) => AuthRepositoryImpl(),
        child: BlocProvider(
          create: (context) => AuthBloc(
            RepositoryProvider.of<AuthRepositoryImpl>(context),
          )..add(const AuthEvent.isLoggedIn()),
          child: BlocBuilder<AuthBloc, BaseState<AuthState>>(
            builder: (context, state) {
              return state.maybeWhen(
                loading: (_) => const LoadingWidgetComponent(),
                next: (nextData) {
                  return nextData.when(
                    authenticated: () => const HomePage(),
                    unauthenticated: () => const LoginPage(),
                  );
                },
                error: (errorMessage) => ErrorWidgetComponent(errorMessage),
                orElse: () => const LoginPage(),
              );
            },
          ),
        ),
      ),
    );
  }
}
