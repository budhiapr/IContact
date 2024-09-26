import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_bloc_event.dart';
part 'contact_bloc_state.dart';
part 'contact_bloc_bloc.freezed.dart';

class ContactBlocBloc extends Bloc<ContactBlocEvent, ContactBlocState> {
  ContactBlocBloc() : super(_Initial()) {
    on<ContactBlocEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
