part of 'all_contact_bloc.dart';

@freezed
class AllContactState with _$AllContactState {
  const factory AllContactState.loadedAllContact(
      List<ContactModel> loadedAllContact) = _LoadedAllContact;
}
