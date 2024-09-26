import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:i_contact/blocs/base/bloc/base_bloc.dart';
import 'package:i_contact/blocs/repositories/auth_repositories/auth_repository_impl.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, BaseState<AuthState>> {
  final AuthRepositoryImpl authRepositoryImpl;

  AuthBloc(this.authRepositoryImpl) : super(const BaseState.loading(true)) {
    on<_Login>((event, emit) async {
      try {
        emit(const BaseState.loading(true));
        var login = await authRepositoryImpl.login(event.userId);
        if (login.user != null) {
          emit(const BaseState.next(AuthState.authenticated()));
        } else {
          emit(const BaseState.next(AuthState.unauthenticated()));
        }
      } catch (e) {
        emit(BaseState.error(e.toString()));
      }
    });

    on<_Logout>((event, emit) async {});

    on<_IsLoggedIn>((event, emit) async {
      var isLoggedIn = await authRepositoryImpl.getIsLoggedIn();
      try {
        if (isLoggedIn) {
          emit(const BaseState.next(AuthState.authenticated()));
        } else {
          emit(const BaseState.next(AuthState.unauthenticated()));
        }
      } catch (e) {
        emit(BaseState.error(e.toString()));
      }
    });
  }
}
