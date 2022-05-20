// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'participant.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Participant _$ParticipantFromJson(Map<String, dynamic> json) {
  return _Participant.fromJson(json);
}

/// @nodoc
mixin _$Participant {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone')
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'gender')
  Gender get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'governorate')
  String get governorate => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_of_birth')
  DateTime get dateOfBirth => throw _privateConstructorUsedError;
  @JsonKey(name: 'nationality')
  String? get nationality => throw _privateConstructorUsedError;
  @JsonKey(name: 'field_of_study')
  String? get fieldOfStudy => throw _privateConstructorUsedError;
  @JsonKey(name: 'educational_background')
  String? get educationalBackground => throw _privateConstructorUsedError;
  @JsonKey(name: 'university')
  String? get university => throw _privateConstructorUsedError;
  @JsonKey(name: 'attendance')
  bool get attendance => throw _privateConstructorUsedError;
  @JsonKey(name: 'session_id')
  int get sessionId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParticipantCopyWith<Participant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParticipantCopyWith<$Res> {
  factory $ParticipantCopyWith(
          Participant value, $Res Function(Participant) then) =
      _$ParticipantCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'phone') String phone,
      @JsonKey(name: 'gender') Gender gender,
      @JsonKey(name: 'governorate') String governorate,
      @JsonKey(name: 'date_of_birth') DateTime dateOfBirth,
      @JsonKey(name: 'nationality') String? nationality,
      @JsonKey(name: 'field_of_study') String? fieldOfStudy,
      @JsonKey(name: 'educational_background') String? educationalBackground,
      @JsonKey(name: 'university') String? university,
      @JsonKey(name: 'attendance') bool attendance,
      @JsonKey(name: 'session_id') int sessionId});
}

/// @nodoc
class _$ParticipantCopyWithImpl<$Res> implements $ParticipantCopyWith<$Res> {
  _$ParticipantCopyWithImpl(this._value, this._then);

  final Participant _value;
  // ignore: unused_field
  final $Res Function(Participant) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? gender = freezed,
    Object? governorate = freezed,
    Object? dateOfBirth = freezed,
    Object? nationality = freezed,
    Object? fieldOfStudy = freezed,
    Object? educationalBackground = freezed,
    Object? university = freezed,
    Object? attendance = freezed,
    Object? sessionId = freezed,
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
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      governorate: governorate == freezed
          ? _value.governorate
          : governorate // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirth: dateOfBirth == freezed
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime,
      nationality: nationality == freezed
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as String?,
      fieldOfStudy: fieldOfStudy == freezed
          ? _value.fieldOfStudy
          : fieldOfStudy // ignore: cast_nullable_to_non_nullable
              as String?,
      educationalBackground: educationalBackground == freezed
          ? _value.educationalBackground
          : educationalBackground // ignore: cast_nullable_to_non_nullable
              as String?,
      university: university == freezed
          ? _value.university
          : university // ignore: cast_nullable_to_non_nullable
              as String?,
      attendance: attendance == freezed
          ? _value.attendance
          : attendance // ignore: cast_nullable_to_non_nullable
              as bool,
      sessionId: sessionId == freezed
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_ParticipantCopyWith<$Res>
    implements $ParticipantCopyWith<$Res> {
  factory _$$_ParticipantCopyWith(
          _$_Participant value, $Res Function(_$_Participant) then) =
      __$$_ParticipantCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'phone') String phone,
      @JsonKey(name: 'gender') Gender gender,
      @JsonKey(name: 'governorate') String governorate,
      @JsonKey(name: 'date_of_birth') DateTime dateOfBirth,
      @JsonKey(name: 'nationality') String? nationality,
      @JsonKey(name: 'field_of_study') String? fieldOfStudy,
      @JsonKey(name: 'educational_background') String? educationalBackground,
      @JsonKey(name: 'university') String? university,
      @JsonKey(name: 'attendance') bool attendance,
      @JsonKey(name: 'session_id') int sessionId});
}

/// @nodoc
class __$$_ParticipantCopyWithImpl<$Res> extends _$ParticipantCopyWithImpl<$Res>
    implements _$$_ParticipantCopyWith<$Res> {
  __$$_ParticipantCopyWithImpl(
      _$_Participant _value, $Res Function(_$_Participant) _then)
      : super(_value, (v) => _then(v as _$_Participant));

  @override
  _$_Participant get _value => super._value as _$_Participant;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? gender = freezed,
    Object? governorate = freezed,
    Object? dateOfBirth = freezed,
    Object? nationality = freezed,
    Object? fieldOfStudy = freezed,
    Object? educationalBackground = freezed,
    Object? university = freezed,
    Object? attendance = freezed,
    Object? sessionId = freezed,
  }) {
    return _then(_$_Participant(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      governorate: governorate == freezed
          ? _value.governorate
          : governorate // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirth: dateOfBirth == freezed
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime,
      nationality: nationality == freezed
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as String?,
      fieldOfStudy: fieldOfStudy == freezed
          ? _value.fieldOfStudy
          : fieldOfStudy // ignore: cast_nullable_to_non_nullable
              as String?,
      educationalBackground: educationalBackground == freezed
          ? _value.educationalBackground
          : educationalBackground // ignore: cast_nullable_to_non_nullable
              as String?,
      university: university == freezed
          ? _value.university
          : university // ignore: cast_nullable_to_non_nullable
              as String?,
      attendance: attendance == freezed
          ? _value.attendance
          : attendance // ignore: cast_nullable_to_non_nullable
              as bool,
      sessionId: sessionId == freezed
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Participant implements _Participant {
  _$_Participant(
      {@JsonKey(name: 'id')
          required this.id,
      @JsonKey(name: 'name')
          required this.name,
      @JsonKey(name: 'email')
          required this.email,
      @JsonKey(name: 'phone')
          required this.phone,
      @JsonKey(name: 'gender')
          required this.gender,
      @JsonKey(name: 'governorate')
          required this.governorate,
      @JsonKey(name: 'date_of_birth')
          required this.dateOfBirth,
      @JsonKey(name: 'nationality')
          required this.nationality,
      @JsonKey(name: 'field_of_study')
          required this.fieldOfStudy,
      @JsonKey(name: 'educational_background')
          required this.educationalBackground,
      @JsonKey(name: 'university')
          required this.university,
      @JsonKey(name: 'attendance')
          required this.attendance,
      @JsonKey(name: 'session_id')
          required this.sessionId});

  factory _$_Participant.fromJson(Map<String, dynamic> json) =>
      _$$_ParticipantFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'email')
  final String email;
  @override
  @JsonKey(name: 'phone')
  final String phone;
  @override
  @JsonKey(name: 'gender')
  final Gender gender;
  @override
  @JsonKey(name: 'governorate')
  final String governorate;
  @override
  @JsonKey(name: 'date_of_birth')
  final DateTime dateOfBirth;
  @override
  @JsonKey(name: 'nationality')
  final String? nationality;
  @override
  @JsonKey(name: 'field_of_study')
  final String? fieldOfStudy;
  @override
  @JsonKey(name: 'educational_background')
  final String? educationalBackground;
  @override
  @JsonKey(name: 'university')
  final String? university;
  @override
  @JsonKey(name: 'attendance')
  final bool attendance;
  @override
  @JsonKey(name: 'session_id')
  final int sessionId;

  @override
  String toString() {
    return 'Participant(id: $id, name: $name, email: $email, phone: $phone, gender: $gender, governorate: $governorate, dateOfBirth: $dateOfBirth, nationality: $nationality, fieldOfStudy: $fieldOfStudy, educationalBackground: $educationalBackground, university: $university, attendance: $attendance, sessionId: $sessionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Participant &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.gender, gender) &&
            const DeepCollectionEquality()
                .equals(other.governorate, governorate) &&
            const DeepCollectionEquality()
                .equals(other.dateOfBirth, dateOfBirth) &&
            const DeepCollectionEquality()
                .equals(other.nationality, nationality) &&
            const DeepCollectionEquality()
                .equals(other.fieldOfStudy, fieldOfStudy) &&
            const DeepCollectionEquality()
                .equals(other.educationalBackground, educationalBackground) &&
            const DeepCollectionEquality()
                .equals(other.university, university) &&
            const DeepCollectionEquality()
                .equals(other.attendance, attendance) &&
            const DeepCollectionEquality().equals(other.sessionId, sessionId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(gender),
      const DeepCollectionEquality().hash(governorate),
      const DeepCollectionEquality().hash(dateOfBirth),
      const DeepCollectionEquality().hash(nationality),
      const DeepCollectionEquality().hash(fieldOfStudy),
      const DeepCollectionEquality().hash(educationalBackground),
      const DeepCollectionEquality().hash(university),
      const DeepCollectionEquality().hash(attendance),
      const DeepCollectionEquality().hash(sessionId));

  @JsonKey(ignore: true)
  @override
  _$$_ParticipantCopyWith<_$_Participant> get copyWith =>
      __$$_ParticipantCopyWithImpl<_$_Participant>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ParticipantToJson(this);
  }
}

abstract class _Participant implements Participant {
  factory _Participant(
      {@JsonKey(name: 'id')
          required final int id,
      @JsonKey(name: 'name')
          required final String name,
      @JsonKey(name: 'email')
          required final String email,
      @JsonKey(name: 'phone')
          required final String phone,
      @JsonKey(name: 'gender')
          required final Gender gender,
      @JsonKey(name: 'governorate')
          required final String governorate,
      @JsonKey(name: 'date_of_birth')
          required final DateTime dateOfBirth,
      @JsonKey(name: 'nationality')
          required final String? nationality,
      @JsonKey(name: 'field_of_study')
          required final String? fieldOfStudy,
      @JsonKey(name: 'educational_background')
          required final String? educationalBackground,
      @JsonKey(name: 'university')
          required final String? university,
      @JsonKey(name: 'attendance')
          required final bool attendance,
      @JsonKey(name: 'session_id')
          required final int sessionId}) = _$_Participant;

  factory _Participant.fromJson(Map<String, dynamic> json) =
      _$_Participant.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'email')
  String get email => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'phone')
  String get phone => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'gender')
  Gender get gender => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'governorate')
  String get governorate => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'date_of_birth')
  DateTime get dateOfBirth => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'nationality')
  String? get nationality => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'field_of_study')
  String? get fieldOfStudy => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'educational_background')
  String? get educationalBackground => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'university')
  String? get university => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'attendance')
  bool get attendance => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'session_id')
  int get sessionId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ParticipantCopyWith<_$_Participant> get copyWith =>
      throw _privateConstructorUsedError;
}
