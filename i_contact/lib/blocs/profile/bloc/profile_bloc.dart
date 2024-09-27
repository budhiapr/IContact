import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:i_contact/blocs/base/bloc/base_bloc.dart';
import 'package:i_contact/models/contact_model.dart';
import 'package:i_contact/utils/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, BaseState<ProfileState>> {
  ProfileBloc() : super(const BaseState.loading(true)) {
    on<_GetProfile>((event, emit) async {
      try {
        final SharedPreferences prefs = await SharedPreferences.getInstance();
        final loggedInUserId = prefs.getString('loggedInUserId') ?? '';

        final user = await fetchUserById(loggedInUserId);
        if (user != null) {
          emit(BaseState.next(ProfileState.loadedProfile(user)));
        } else {
          emit(const BaseState.error(Constants.ERROR_USER_NOT_FOUND));
        }
      } catch (e) {
        emit(BaseState.error(e.toString()));
      }
    });
  }

  Future<ContactModel?> fetchUserById(String userId) async {
    final String response = await rootBundle.loadString('lib/data/data.json');
    final List<dynamic> data = json.decode(response);

    // Mencari pengguna berdasarkan ID
    for (var user in data) {
      if (user['id'] == userId) {
        return ContactModel.fromJson(user);
      }
    }

    return null; // Jika tidak ditemukan
  }
}
