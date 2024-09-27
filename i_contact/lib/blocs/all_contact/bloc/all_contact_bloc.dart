import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:i_contact/blocs/base/bloc/base_bloc.dart';
import 'package:i_contact/models/contact_model.dart';

part 'all_contact_event.dart';
part 'all_contact_state.dart';
part 'all_contact_bloc.freezed.dart';

class AllContactBloc extends Bloc<AllContactEvent, BaseState<AllContactState>> {
  List<ContactModel> allContacts = [];

  AllContactBloc() : super(const BaseState.loading(true)) {
    on<_GetAllContact>((event, emit) async {
      emit(const BaseState.loading(true));

      try {
        final String response =
            await rootBundle.loadString('lib/data/data.json');
        final List<dynamic> data = jsonDecode(response);
        allContacts = data.map((json) => ContactModel.fromJson(json)).toList();

        emit(BaseState.next(AllContactState.loadedAllContact(allContacts)));
      } catch (e) {
        emit(BaseState.error(e.toString()));
      }
    });

    on<_SearchContact>((event, emit) async {
      final query = event.query.toLowerCase();
      final filteredContact = allContacts
          .where((contact) =>
              contact.firstName.toLowerCase().contains(query) ||
              contact.lastName.toLowerCase().contains(query))
          .toList();
      emit(BaseState.next(AllContactState.loadedAllContact(filteredContact)));
    });
  }
}
