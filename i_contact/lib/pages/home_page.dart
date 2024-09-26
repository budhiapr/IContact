import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_contact/blocs/bottom_navigation/bloc/bottom_navigation_bloc.dart';
import 'package:i_contact/screens/home_screen.dart';
import 'package:i_contact/screens/profile_screen.dart';
import 'package:i_contact/utils/theme_app_colors.dart';
import 'package:i_contact/widgets/bottom_bar_navigation.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final widgetOptionsUser = [
    const HomeScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavigationBloc, BottomNavigationState>(
      builder: (context, state) {
        return state.when(
          initial: (tabIndex) {
            return Scaffold(
              bottomNavigationBar: BottomNavigationBar(
                selectedItemColor: ThemeAppColors.blue,
                unselectedItemColor: ThemeAppColors.darkGray,
                iconSize: 24,
                type: BottomNavigationBarType.fixed,
                enableFeedback: true,
                elevation: 8.0,
                currentIndex: tabIndex,
                showUnselectedLabels: false,
                items: bottomBarNavUser,
                onTap: (index) {
                  BlocProvider.of<BottomNavigationBloc>(context)
                      .add(BottomNavigationEvent.tabChange(tabIndex: index));
                },
              ),
              body: SafeArea(child: widgetOptionsUser.elementAt(tabIndex)),
            );
          },
        );
      },
    );
  }
}
