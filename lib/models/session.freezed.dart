// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Session _$SessionFromJson(Map<String, dynamic> json) {
  return _Session.fromJson(json);
}

/// @nodoc
mixin _$Session {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'date')
  DateTime get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'participants_count', defaultValue: 0)
  int get participantsCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'participants', defaultValue: [])
  List<Participant> get participants => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SessionCopyWith<Session> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionCopyWith<$Res> {
  factory $SessionCopyWith(Session value, $Res Function(Session) then) =
      _$SessionCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id')
          int id,
      @JsonKey(name: 'title')
          String name,
      @JsonKey(name: 'date')
          DateTime date,
      @JsonKey(name: 'participants_count', defaultValue: 0)
          int participantsCount,
      @JsonKey(name: 'participants', defaultValue: [])
          List<Participant> participants});
}

/// @nodoc
class _$SessionCopyWithImpl<$Res> implements $SessionCopyWith<$Res> {
  _$SessionCopyWithImpl(this._value, this._then);

  final Session _value;
  // ignore: unused_field
  final $Res Function(Session) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? date = freezed,
    Object? participantsCount = freezed,
    Object? participants = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      participantsCount: participantsCount == freezed
          ? _value.participantsCount
          : participantsCount // ignore: cast_nullable_to_non_nullable
              as int,
      participants: participants == freezed
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<Participant>,
    ));
  }
}

/// @nodoc
abstract class _$$_SessionCopyWith<$Res> implements $SessionCopyWith<$Res> {
  factory _$$_SessionCopyWith(
          _$_Session value, $Res Function(_$_Session) then) =
      __$$_SessionCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id')
          int id,
      @JsonKey(name: 'title')
          String name,
      @JsonKey(name: 'date')
          DateTime date,
      @JsonKey(name: 'participants_count', defaultValue: 0)
          int participantsCount,
      @JsonKey(name: 'participants', defaultValue: [])
          List<Participant> participants});
}

/// @nodoc
class __$$_SessionCopyWithImpl<$Res> extends _$SessionCopyWithImpl<$Res>
    implements _$$_SessionCopyWith<$Res> {
  __$$_SessionCopyWithImpl(_$_Session _value, $Res Function(_$_Session) _then)
      : super(_value, (v) => _then(v as _$_Session));

  @override
  _$_Session get _value => super._value as _$_Session;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? date = freezed,
    Object? participantsCount = freezed,
    Object? participants = freezed,
  }) {
    return _then(_$_Session(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      participantsCount: participantsCount == freezed
          ? _value.participantsCount
          : participantsCount // ignore: cast_nullable_to_non_nullable
              as int,
      participants: participants == freezed
          ? _value._participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<Participant>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Session implements _Session {
  _$_Session(
      {@JsonKey(name: 'id')
          required this.id,
      @JsonKey(name: 'title')
          required this.name,
      @JsonKey(name: 'date')
          required this.date,
      @JsonKey(name: 'participants_count', defaultValue: 0)
          required this.participantsCount,
      @JsonKey(name: 'participants', defaultValue: [])
          required final List<Participant> participants})
      : _participants = participants;

  factory _$_Session.fromJson(Map<String, dynamic> json) =>
      _$$_SessionFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'title')
  final String name;
  @override
  @JsonKey(name: 'date')
  final DateTime date;
  @override
  @JsonKey(name: 'participants_count', defaultValue: 0)
  final int participantsCount;
  final List<Participant> _participants;
  @override
  @JsonKey(name: 'participants', defaultValue: [])
  List<Participant> get participants {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participants);
  }

  @override
  String toString() {
    return 'Session(id: $id, name: $name, date: $date, participantsCount: $participantsCount, participants: $participants)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Session &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality()
                .equals(other.participantsCount, participantsCount) &&
            const DeepCollectionEquality()
                .equals(other._participants, _participants));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(participantsCount),
      const DeepCollectionEquality().hash(_participants));

  @JsonKey(ignore: true)
  @override
  _$$_SessionCopyWith<_$_Session> get copyWith =>
      __$$_SessionCopyWithImpl<_$_Session>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SessionToJson(this);
  }
}

abstract class _Session implements Session {
  factory _Session(
      {@JsonKey(name: 'id')
          required final int id,
      @JsonKey(name: 'title')
          required final String name,
      @JsonKey(name: 'date')
          required final DateTime date,
      @JsonKey(name: 'participants_count', defaultValue: 0)
          required final int participantsCount,
      @JsonKey(name: 'participants', defaultValue: [])
          required final List<Participant> participants}) = _$_Session;

  factory _Session.fromJson(Map<String, dynamic> json) = _$_Session.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'title')
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'date')
  DateTime get date => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'participants_count', defaultValue: 0)
  int get participantsCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'participants', defaultValue: [])
  List<Participant> get participants => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SessionCopyWith<_$_Session> get copyWith =>
      throw _privateConstructorUsedError;
}
