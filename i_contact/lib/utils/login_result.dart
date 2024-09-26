import 'package:i_contact/models/contact_model.dart';

class LoginResult {
  final ContactModel? user;
  final String? errorMessage;

  LoginResult({this.user, this.errorMessage});
}
