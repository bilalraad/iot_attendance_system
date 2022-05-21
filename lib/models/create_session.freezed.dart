// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateSession _$CreateSessionFromJson(Map<String, dynamic> json) {
  return _CreateSession.fromJson(json);
}

/// @nodoc
mixin _$CreateSession {
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'date')
  DateTime? get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateSessionCopyWith<CreateSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateSessionCopyWith<$Res> {
  factory $CreateSessionCopyWith(
          CreateSession value, $Res Function(CreateSession) then) =
      _$CreateSessionCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'date') DateTime? date});
}

/// @nodoc
class _$CreateSessionCopyWithImpl<$Res>
    implements $CreateSessionCopyWith<$Res> {
  _$CreateSessionCopyWithImpl(this._value, this._then);

  final CreateSession _value;
  // ignore: unused_field
  final $Res Function(CreateSession) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$$_CreateSessionCopyWith<$Res>
    implements $CreateSessionCopyWith<$Res> {
  factory _$$_CreateSessionCopyWith(
          _$_CreateSession value, $Res Function(_$_CreateSession) then) =
      __$$_CreateSessionCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'date') DateTime? date});
}

/// @nodoc
class __$$_CreateSessionCopyWithImpl<$Res>
    extends _$CreateSessionCopyWithImpl<$Res>
    implements _$$_CreateSessionCopyWith<$Res> {
  __$$_CreateSessionCopyWithImpl(
      _$_CreateSession _value, $Res Function(_$_CreateSession) _then)
      : super(_value, (v) => _then(v as _$_CreateSession));

  @override
  _$_CreateSession get _value => super._value as _$_CreateSession;

  @override
  $Res call({
    Object? title = freezed,
    Object? date = freezed,
  }) {
    return _then(_$_CreateSession(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateSession implements _CreateSession {
  _$_CreateSession(
      {@JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'date') required this.date});

  factory _$_CreateSession.fromJson(Map<String, dynamic> json) =>
      _$$_CreateSessionFromJson(json);

  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'date')
  final DateTime? date;

  @override
  String toString() {
    return 'CreateSession(title: $title, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateSession &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.date, date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(date));

  @JsonKey(ignore: true)
  @override
  _$$_CreateSessionCopyWith<_$_CreateSession> get copyWith =>
      __$$_CreateSessionCopyWithImpl<_$_CreateSession>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateSessionToJson(this);
  }
}

abstract class _CreateSession implements CreateSession {
  factory _CreateSession(
      {@JsonKey(name: 'title') required final String title,
      @JsonKey(name: 'date') required final DateTime? date}) = _$_CreateSession;

  factory _CreateSession.fromJson(Map<String, dynamic> json) =
      _$_CreateSession.fromJson;

  @override
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'date')
  DateTime? get date => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CreateSessionCopyWith<_$_CreateSession> get copyWith =>
      throw _privateConstructorUsedError;
}
