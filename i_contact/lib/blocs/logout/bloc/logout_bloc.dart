import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:i_contact/blocs/base/bloc/base_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'logout_event.dart';
part 'logout_state.dart';
part 'logout_bloc.freezed.dart';

class LogoutBloc extends Bloc<LogoutEvent, BaseState<LogoutState>> {
  LogoutBloc() : super(const BaseState.loading(true)) {
    on<_Logout>((event, emit) async {
      emit(const BaseState.loading(true));
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.clear();

      emit(const BaseState.next(LogoutState.loggedOut()));
    });
  }
}
