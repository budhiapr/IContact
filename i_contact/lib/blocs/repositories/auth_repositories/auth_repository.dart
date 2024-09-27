import 'package:i_contact/models/contact_model.dart';
import 'package:i_contact/utils/login_result.dart';

abstract class AuthRepository {
  Future<LoginResult> login(String userId);
  Future<List<ContactModel>> loadContacts();
  Future<bool> getIsLoggedIn();
  Future<LoginResult> getProfile();
  Future<void> saveSessionLoggedIn(String userId);
}
