// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sessions_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SessionsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int? skip) loadSessions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int? skip)? loadSessions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int? skip)? loadSessions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadSessions value) loadSessions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadSessions value)? loadSessions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadSessions value)? loadSessions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionsEventCopyWith<$Res> {
  factory $SessionsEventCopyWith(
          SessionsEvent value, $Res Function(SessionsEvent) then) =
      _$SessionsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SessionsEventCopyWithImpl<$Res>
    implements $SessionsEventCopyWith<$Res> {
  _$SessionsEventCopyWithImpl(this._value, this._then);

  final SessionsEvent _value;
  // ignore: unused_field
  final $Res Function(SessionsEvent) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res> extends _$SessionsEventCopyWithImpl<$Res>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, (v) => _then(v as _$_Started));

  @override
  _$_Started get _value => super._value as _$_Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'SessionsEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int? skip) loadSessions,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int? skip)? loadSessions,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int? skip)? loadSessions,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadSessions value) loadSessions,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadSessions value)? loadSessions,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadSessions value)? loadSessions,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SessionsEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_LoadSessionsCopyWith<$Res> {
  factory _$$_LoadSessionsCopyWith(
          _$_LoadSessions value, $Res Function(_$_LoadSessions) then) =
      __$$_LoadSessionsCopyWithImpl<$Res>;
  $Res call({int? skip});
}

/// @nodoc
class __$$_LoadSessionsCopyWithImpl<$Res>
    extends _$SessionsEventCopyWithImpl<$Res>
    implements _$$_LoadSessionsCopyWith<$Res> {
  __$$_LoadSessionsCopyWithImpl(
      _$_LoadSessions _value, $Res Function(_$_LoadSessions) _then)
      : super(_value, (v) => _then(v as _$_LoadSessions));

  @override
  _$_LoadSessions get _value => super._value as _$_LoadSessions;

  @override
  $Res call({
    Object? skip = freezed,
  }) {
    return _then(_$_LoadSessions(
      skip == freezed
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_LoadSessions implements _LoadSessions {
  const _$_LoadSessions(this.skip);

  @override
  final int? skip;

  @override
  String toString() {
    return 'SessionsEvent.loadSessions(skip: $skip)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSessions &&
            const DeepCollectionEquality().equals(other.skip, skip));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(skip));

  @JsonKey(ignore: true)
  @override
  _$$_LoadSessionsCopyWith<_$_LoadSessions> get copyWith =>
      __$$_LoadSessionsCopyWithImpl<_$_LoadSessions>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int? skip) loadSessions,
  }) {
    return loadSessions(skip);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int? skip)? loadSessions,
  }) {
    return loadSessions?.call(skip);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int? skip)? loadSessions,
    required TResult orElse(),
  }) {
    if (loadSessions != null) {
      return loadSessions(skip);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadSessions value) loadSessions,
  }) {
    return loadSessions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadSessions value)? loadSessions,
  }) {
    return loadSessions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadSessions value)? loadSessions,
    required TResult orElse(),
  }) {
    if (loadSessions != null) {
      return loadSessions(this);
    }
    return orElse();
  }
}

abstract class _LoadSessions implements SessionsEvent {
  const factory _LoadSessions(final int? skip) = _$_LoadSessions;

  int? get skip => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_LoadSessionsCopyWith<_$_LoadSessions> get copyWith =>
      throw _privateConstructorUsedError;
}
