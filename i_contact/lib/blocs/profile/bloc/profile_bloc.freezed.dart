// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProfile value) getProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProfile value)? getProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProfile value)? getProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res, ProfileEvent>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res, $Val extends ProfileEvent>
    implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetProfileImplCopyWith<$Res> {
  factory _$$GetProfileImplCopyWith(
          _$GetProfileImpl value, $Res Function(_$GetProfileImpl) then) =
      __$$GetProfileImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetProfileImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$GetProfileImpl>
    implements _$$GetProfileImplCopyWith<$Res> {
  __$$GetProfileImplCopyWithImpl(
      _$GetProfileImpl _value, $Res Function(_$GetProfileImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetProfileImpl implements _GetProfile {
  const _$GetProfileImpl();

  @override
  String toString() {
    return 'ProfileEvent.getProfile()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetProfileImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProfile,
  }) {
    return getProfile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProfile,
  }) {
    return getProfile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProfile,
    required TResult orElse(),
  }) {
    if (getProfile != null) {
      return getProfile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProfile value) getProfile,
  }) {
    return getProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProfile value)? getProfile,
  }) {
    return getProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProfile value)? getProfile,
    required TResult orElse(),
  }) {
    if (getProfile != null) {
      return getProfile(this);
    }
    return orElse();
  }
}

abstract class _GetProfile implements ProfileEvent {
  const factory _GetProfile() = _$GetProfileImpl;
}

/// @nodoc
mixin _$ProfileState {
  ContactModel get contact => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ContactModel contact) loadedProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ContactModel contact)? loadedProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ContactModel contact)? loadedProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadedProfile value) loadedProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadedProfile value)? loadedProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadedProfile value)? loadedProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
  @useResult
  $Res call({ContactModel contact});

  $ContactModelCopyWith<$Res> get contact;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = null,
  }) {
    return _then(_value.copyWith(
      contact: null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as ContactModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ContactModelCopyWith<$Res> get contact {
    return $ContactModelCopyWith<$Res>(_value.contact, (value) {
      return _then(_value.copyWith(contact: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoadedProfileImplCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$LoadedProfileImplCopyWith(
          _$LoadedProfileImpl value, $Res Function(_$LoadedProfileImpl) then) =
      __$$LoadedProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ContactModel contact});

  @override
  $ContactModelCopyWith<$Res> get contact;
}

/// @nodoc
class __$$LoadedProfileImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$LoadedProfileImpl>
    implements _$$LoadedProfileImplCopyWith<$Res> {
  __$$LoadedProfileImplCopyWithImpl(
      _$LoadedProfileImpl _value, $Res Function(_$LoadedProfileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = null,
  }) {
    return _then(_$LoadedProfileImpl(
      null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as ContactModel,
    ));
  }
}

/// @nodoc

class _$LoadedProfileImpl implements _LoadedProfile {
  const _$LoadedProfileImpl(this.contact);

  @override
  final ContactModel contact;

  @override
  String toString() {
    return 'ProfileState.loadedProfile(contact: $contact)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedProfileImpl &&
            (identical(other.contact, contact) || other.contact == contact));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contact);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedProfileImplCopyWith<_$LoadedProfileImpl> get copyWith =>
      __$$LoadedProfileImplCopyWithImpl<_$LoadedProfileImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ContactModel contact) loadedProfile,
  }) {
    return loadedProfile(contact);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ContactModel contact)? loadedProfile,
  }) {
    return loadedProfile?.call(contact);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ContactModel contact)? loadedProfile,
    required TResult orElse(),
  }) {
    if (loadedProfile != null) {
      return loadedProfile(contact);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadedProfile value) loadedProfile,
  }) {
    return loadedProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadedProfile value)? loadedProfile,
  }) {
    return loadedProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadedProfile value)? loadedProfile,
    required TResult orElse(),
  }) {
    if (loadedProfile != null) {
      return loadedProfile(this);
    }
    return orElse();
  }
}

abstract class _LoadedProfile implements ProfileState {
  const factory _LoadedProfile(final ContactModel contact) =
      _$LoadedProfileImpl;

  @override
  ContactModel get contact;
  @override
  @JsonKey(ignore: true)
  _$$LoadedProfileImplCopyWith<_$LoadedProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
