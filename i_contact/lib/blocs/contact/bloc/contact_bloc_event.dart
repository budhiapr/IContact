part of 'contact_bloc_bloc.dart';

@freezed
class ContactBlocEvent with _$ContactBlocEvent {
  const factory ContactBlocEvent.started() = _Started;
}