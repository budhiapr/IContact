part of 'all_contact_bloc.dart';

@freezed
class AllContactEvent with _$AllContactEvent {
  const factory AllContactEvent.getAllContact() = _GetAllContact;
  const factory AllContactEvent.searchContact(String query) = _SearchContact;
}
