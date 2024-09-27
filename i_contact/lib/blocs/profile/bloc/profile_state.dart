part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.loadedProfile(ContactModel contact) =
      _LoadedProfile;
}
