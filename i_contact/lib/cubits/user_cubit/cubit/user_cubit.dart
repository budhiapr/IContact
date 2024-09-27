import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_contact/cubits/user_cubit/cubit/user_state.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(const UserState.initial());

  Future<void> fetchLoggedInUserId() async {
    emit(const UserState.loading());
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final userId = prefs.getString('loggedInUserId');

    if (userId != null) {
      emit(UserState.loaded(userId));
    } else {
      emit(const UserState.error('User ID not found.'));
    }
  }
}
