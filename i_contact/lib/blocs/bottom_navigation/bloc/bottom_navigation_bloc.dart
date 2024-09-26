import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bottom_navigation_event.dart';
part 'bottom_navigation_state.dart';
part 'bottom_navigation_bloc.freezed.dart';

class BottomNavigationBloc
    extends Bloc<BottomNavigationEvent, BottomNavigationState> {
  BottomNavigationBloc() : super(const _Initial(tabIndex: 0)) {
    on<BottomNavigationEvent>((event, emit) {
      emit(BottomNavigationState.initial(tabIndex: event.tabIndex));
    });
  }
}
