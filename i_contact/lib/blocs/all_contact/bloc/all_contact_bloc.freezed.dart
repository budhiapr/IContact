// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_contact_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AllContactEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllContact,
    required TResult Function(String query) searchContact,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllContact,
    TResult? Function(String query)? searchContact,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllContact,
    TResult Function(String query)? searchContact,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllContact value) getAllContact,
    required TResult Function(_SearchContact value) searchContact,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllContact value)? getAllContact,
    TResult? Function(_SearchContact value)? searchContact,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllContact value)? getAllContact,
    TResult Function(_SearchContact value)? searchContact,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllContactEventCopyWith<$Res> {
  factory $AllContactEventCopyWith(
          AllContactEvent value, $Res Function(AllContactEvent) then) =
      _$AllContactEventCopyWithImpl<$Res, AllContactEvent>;
}

/// @nodoc
class _$AllContactEventCopyWithImpl<$Res, $Val extends AllContactEvent>
    implements $AllContactEventCopyWith<$Res> {
  _$AllContactEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetAllContactImplCopyWith<$Res> {
  factory _$$GetAllContactImplCopyWith(
          _$GetAllContactImpl value, $Res Function(_$GetAllContactImpl) then) =
      __$$GetAllContactImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllContactImplCopyWithImpl<$Res>
    extends _$AllContactEventCopyWithImpl<$Res, _$GetAllContactImpl>
    implements _$$GetAllContactImplCopyWith<$Res> {
  __$$GetAllContactImplCopyWithImpl(
      _$GetAllContactImpl _value, $Res Function(_$GetAllContactImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllContactImpl implements _GetAllContact {
  const _$GetAllContactImpl();

  @override
  String toString() {
    return 'AllContactEvent.getAllContact()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllContactImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllContact,
    required TResult Function(String query) searchContact,
  }) {
    return getAllContact();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllContact,
    TResult? Function(String query)? searchContact,
  }) {
    return getAllContact?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllContact,
    TResult Function(String query)? searchContact,
    required TResult orElse(),
  }) {
    if (getAllContact != null) {
      return getAllContact();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllContact value) getAllContact,
    required TResult Function(_SearchContact value) searchContact,
  }) {
    return getAllContact(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllContact value)? getAllContact,
    TResult? Function(_SearchContact value)? searchContact,
  }) {
    return getAllContact?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllContact value)? getAllContact,
    TResult Function(_SearchContact value)? searchContact,
    required TResult orElse(),
  }) {
    if (getAllContact != null) {
      return getAllContact(this);
    }
    return orElse();
  }
}

abstract class _GetAllContact implements AllContactEvent {
  const factory _GetAllContact() = _$GetAllContactImpl;
}

/// @nodoc
abstract class _$$SearchContactImplCopyWith<$Res> {
  factory _$$SearchContactImplCopyWith(
          _$SearchContactImpl value, $Res Function(_$SearchContactImpl) then) =
      __$$SearchContactImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchContactImplCopyWithImpl<$Res>
    extends _$AllContactEventCopyWithImpl<$Res, _$SearchContactImpl>
    implements _$$SearchContactImplCopyWith<$Res> {
  __$$SearchContactImplCopyWithImpl(
      _$SearchContactImpl _value, $Res Function(_$SearchContactImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchContactImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchContactImpl implements _SearchContact {
  const _$SearchContactImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'AllContactEvent.searchContact(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchContactImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchContactImplCopyWith<_$SearchContactImpl> get copyWith =>
      __$$SearchContactImplCopyWithImpl<_$SearchContactImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllContact,
    required TResult Function(String query) searchContact,
  }) {
    return searchContact(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllContact,
    TResult? Function(String query)? searchContact,
  }) {
    return searchContact?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllContact,
    TResult Function(String query)? searchContact,
    required TResult orElse(),
  }) {
    if (searchContact != null) {
      return searchContact(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllContact value) getAllContact,
    required TResult Function(_SearchContact value) searchContact,
  }) {
    return searchContact(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllContact value)? getAllContact,
    TResult? Function(_SearchContact value)? searchContact,
  }) {
    return searchContact?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllContact value)? getAllContact,
    TResult Function(_SearchContact value)? searchContact,
    required TResult orElse(),
  }) {
    if (searchContact != null) {
      return searchContact(this);
    }
    return orElse();
  }
}

abstract class _SearchContact implements AllContactEvent {
  const factory _SearchContact(final String query) = _$SearchContactImpl;

  String get query;
  @JsonKey(ignore: true)
  _$$SearchContactImplCopyWith<_$SearchContactImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AllContactState {
  List<ContactModel> get loadedAllContact => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ContactModel> loadedAllContact)
        loadedAllContact,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ContactModel> loadedAllContact)? loadedAllContact,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ContactModel> loadedAllContact)? loadedAllContact,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadedAllContact value) loadedAllContact,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadedAllContact value)? loadedAllContact,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadedAllContact value)? loadedAllContact,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AllContactStateCopyWith<AllContactState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllContactStateCopyWith<$Res> {
  factory $AllContactStateCopyWith(
          AllContactState value, $Res Function(AllContactState) then) =
      _$AllContactStateCopyWithImpl<$Res, AllContactState>;
  @useResult
  $Res call({List<ContactModel> loadedAllContact});
}

/// @nodoc
class _$AllContactStateCopyWithImpl<$Res, $Val extends AllContactState>
    implements $AllContactStateCopyWith<$Res> {
  _$AllContactStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadedAllContact = null,
  }) {
    return _then(_value.copyWith(
      loadedAllContact: null == loadedAllContact
          ? _value.loadedAllContact
          : loadedAllContact // ignore: cast_nullable_to_non_nullable
              as List<ContactModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadedAllContactImplCopyWith<$Res>
    implements $AllContactStateCopyWith<$Res> {
  factory _$$LoadedAllContactImplCopyWith(_$LoadedAllContactImpl value,
          $Res Function(_$LoadedAllContactImpl) then) =
      __$$LoadedAllContactImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ContactModel> loadedAllContact});
}

/// @nodoc
class __$$LoadedAllContactImplCopyWithImpl<$Res>
    extends _$AllContactStateCopyWithImpl<$Res, _$LoadedAllContactImpl>
    implements _$$LoadedAllContactImplCopyWith<$Res> {
  __$$LoadedAllContactImplCopyWithImpl(_$LoadedAllContactImpl _value,
      $Res Function(_$LoadedAllContactImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadedAllContact = null,
  }) {
    return _then(_$LoadedAllContactImpl(
      null == loadedAllContact
          ? _value._loadedAllContact
          : loadedAllContact // ignore: cast_nullable_to_non_nullable
              as List<ContactModel>,
    ));
  }
}

/// @nodoc

class _$LoadedAllContactImpl implements _LoadedAllContact {
  const _$LoadedAllContactImpl(final List<ContactModel> loadedAllContact)
      : _loadedAllContact = loadedAllContact;

  final List<ContactModel> _loadedAllContact;
  @override
  List<ContactModel> get loadedAllContact {
    if (_loadedAllContact is EqualUnmodifiableListView)
      return _loadedAllContact;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_loadedAllContact);
  }

  @override
  String toString() {
    return 'AllContactState.loadedAllContact(loadedAllContact: $loadedAllContact)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedAllContactImpl &&
            const DeepCollectionEquality()
                .equals(other._loadedAllContact, _loadedAllContact));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_loadedAllContact));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedAllContactImplCopyWith<_$LoadedAllContactImpl> get copyWith =>
      __$$LoadedAllContactImplCopyWithImpl<_$LoadedAllContactImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ContactModel> loadedAllContact)
        loadedAllContact,
  }) {
    return loadedAllContact(this.loadedAllContact);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ContactModel> loadedAllContact)? loadedAllContact,
  }) {
    return loadedAllContact?.call(this.loadedAllContact);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ContactModel> loadedAllContact)? loadedAllContact,
    required TResult orElse(),
  }) {
    if (loadedAllContact != null) {
      return loadedAllContact(this.loadedAllContact);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadedAllContact value) loadedAllContact,
  }) {
    return loadedAllContact(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadedAllContact value)? loadedAllContact,
  }) {
    return loadedAllContact?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadedAllContact value)? loadedAllContact,
    required TResult orElse(),
  }) {
    if (loadedAllContact != null) {
      return loadedAllContact(this);
    }
    return orElse();
  }
}

abstract class _LoadedAllContact implements AllContactState {
  const factory _LoadedAllContact(final List<ContactModel> loadedAllContact) =
      _$LoadedAllContactImpl;

  @override
  List<ContactModel> get loadedAllContact;
  @override
  @JsonKey(ignore: true)
  _$$LoadedAllContactImplCopyWith<_$LoadedAllContactImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
