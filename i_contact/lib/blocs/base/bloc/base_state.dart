part of 'base_bloc.dart';

@freezed
class BaseState<T> with _$BaseState<T> {
  const factory BaseState.loading(isLoading) = _Loading;
  const factory BaseState.next(T data) = _Next<T>;
  const factory BaseState.error(String message) = _Error;
}
