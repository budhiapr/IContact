import 'dart:convert';
import 'dart:developer';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:i_contact/blocs/repositories/auth_repositories/auth_repository.dart';
import 'package:i_contact/models/contact_model.dart';
import 'package:i_contact/utils/login_result.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepositoryImpl implements AuthRepository {
  @override
  Future<LoginResult> login(String userId) async {
    List<ContactModel> contacts = [];

    try {
      contacts = await loadContacts();

      final user = contacts.firstWhereOrNull((contact) => contact.id == userId);

      if (user == null) {
        return LoginResult(errorMessage: 'User Not Found');
      }

      await saveSessionLoggedIn(user.id);

      return LoginResult(user: ContactModel.fromJson(user.toJson()));
    } catch (e) {
      return LoginResult(errorMessage: e.toString());
    }
  }

  @override
  Future<void> saveSessionLoggedIn(String userId) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    try {
      prefs.setString("loggedInUserId", userId);
      prefs.setBool("sessionIsLoggedIn", true);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<bool> getIsLoggedIn() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    try {
      var isLoggedIn = prefs.getBool("sessionIsLoggedIn") ?? false;
      log("Session: $isLoggedIn");
      return Future.value(isLoggedIn);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<ContactModel> getProfile() {
    // TODO: implement getProfile
    throw UnimplementedError();
  }

  Future<List<ContactModel>> loadContacts() async {
    final String response = await rootBundle.loadString('lib/data/data.json');
    final List<dynamic> data = json.decode(response);

    return data
        .map((json) => ContactModel.fromJson(json))
        .toList()
        .cast<ContactModel>();
  }
}
