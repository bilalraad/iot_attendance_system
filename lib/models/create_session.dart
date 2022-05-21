import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_session.freezed.dart';
part 'create_session.g.dart';

@freezed
class CreateSession with _$CreateSession {
  factory CreateSession({
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'date') required DateTime? date,
  }) = _CreateSession;

  factory CreateSession.fromJson(Map<String, dynamic> json) =>
      _$CreateSessionFromJson(json);

  factory CreateSession.empty() => CreateSession(title: '', date: null);

  static CreateSession fromJsonModel(dynamic json) =>
      CreateSession.fromJson(json);
}
