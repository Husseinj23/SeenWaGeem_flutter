// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'avatar_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AvatarEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAvatars,
    required TResult Function(int index) avatarSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAvatars,
    TResult? Function(int index)? avatarSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAvatars,
    TResult Function(int index)? avatarSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAvatars value) fetchAvatars,
    required TResult Function(_AvatarSelected value) avatarSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchAvatars value)? fetchAvatars,
    TResult? Function(_AvatarSelected value)? avatarSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAvatars value)? fetchAvatars,
    TResult Function(_AvatarSelected value)? avatarSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvatarEventCopyWith<$Res> {
  factory $AvatarEventCopyWith(
          AvatarEvent value, $Res Function(AvatarEvent) then) =
      _$AvatarEventCopyWithImpl<$Res, AvatarEvent>;
}

/// @nodoc
class _$AvatarEventCopyWithImpl<$Res, $Val extends AvatarEvent>
    implements $AvatarEventCopyWith<$Res> {
  _$AvatarEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchAvatarsImplCopyWith<$Res> {
  factory _$$FetchAvatarsImplCopyWith(
          _$FetchAvatarsImpl value, $Res Function(_$FetchAvatarsImpl) then) =
      __$$FetchAvatarsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchAvatarsImplCopyWithImpl<$Res>
    extends _$AvatarEventCopyWithImpl<$Res, _$FetchAvatarsImpl>
    implements _$$FetchAvatarsImplCopyWith<$Res> {
  __$$FetchAvatarsImplCopyWithImpl(
      _$FetchAvatarsImpl _value, $Res Function(_$FetchAvatarsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchAvatarsImpl implements _FetchAvatars {
  const _$FetchAvatarsImpl();

  @override
  String toString() {
    return 'AvatarEvent.fetchAvatars()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchAvatarsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAvatars,
    required TResult Function(int index) avatarSelected,
  }) {
    return fetchAvatars();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAvatars,
    TResult? Function(int index)? avatarSelected,
  }) {
    return fetchAvatars?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAvatars,
    TResult Function(int index)? avatarSelected,
    required TResult orElse(),
  }) {
    if (fetchAvatars != null) {
      return fetchAvatars();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAvatars value) fetchAvatars,
    required TResult Function(_AvatarSelected value) avatarSelected,
  }) {
    return fetchAvatars(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchAvatars value)? fetchAvatars,
    TResult? Function(_AvatarSelected value)? avatarSelected,
  }) {
    return fetchAvatars?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAvatars value)? fetchAvatars,
    TResult Function(_AvatarSelected value)? avatarSelected,
    required TResult orElse(),
  }) {
    if (fetchAvatars != null) {
      return fetchAvatars(this);
    }
    return orElse();
  }
}

abstract class _FetchAvatars implements AvatarEvent {
  const factory _FetchAvatars() = _$FetchAvatarsImpl;
}

/// @nodoc
abstract class _$$AvatarSelectedImplCopyWith<$Res> {
  factory _$$AvatarSelectedImplCopyWith(_$AvatarSelectedImpl value,
          $Res Function(_$AvatarSelectedImpl) then) =
      __$$AvatarSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$AvatarSelectedImplCopyWithImpl<$Res>
    extends _$AvatarEventCopyWithImpl<$Res, _$AvatarSelectedImpl>
    implements _$$AvatarSelectedImplCopyWith<$Res> {
  __$$AvatarSelectedImplCopyWithImpl(
      _$AvatarSelectedImpl _value, $Res Function(_$AvatarSelectedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$AvatarSelectedImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AvatarSelectedImpl implements _AvatarSelected {
  const _$AvatarSelectedImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'AvatarEvent.avatarSelected(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvatarSelectedImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AvatarSelectedImplCopyWith<_$AvatarSelectedImpl> get copyWith =>
      __$$AvatarSelectedImplCopyWithImpl<_$AvatarSelectedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAvatars,
    required TResult Function(int index) avatarSelected,
  }) {
    return avatarSelected(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAvatars,
    TResult? Function(int index)? avatarSelected,
  }) {
    return avatarSelected?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAvatars,
    TResult Function(int index)? avatarSelected,
    required TResult orElse(),
  }) {
    if (avatarSelected != null) {
      return avatarSelected(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAvatars value) fetchAvatars,
    required TResult Function(_AvatarSelected value) avatarSelected,
  }) {
    return avatarSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchAvatars value)? fetchAvatars,
    TResult? Function(_AvatarSelected value)? avatarSelected,
  }) {
    return avatarSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAvatars value)? fetchAvatars,
    TResult Function(_AvatarSelected value)? avatarSelected,
    required TResult orElse(),
  }) {
    if (avatarSelected != null) {
      return avatarSelected(this);
    }
    return orElse();
  }
}

abstract class _AvatarSelected implements AvatarEvent {
  const factory _AvatarSelected(final int index) = _$AvatarSelectedImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$AvatarSelectedImplCopyWith<_$AvatarSelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
