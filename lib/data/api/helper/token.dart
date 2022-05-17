import 'package:json_annotation/json_annotation.dart';

part "token.g.dart";

@JsonSerializable(explicitToJson: true)
class Token {
  @JsonKey(name: 'access')
  final String access;

  Token({required this.access});

  factory Token.fromJson(Map<String, dynamic> json) => _$TokenFromJson(json);

  Map<String, dynamic> toJson() => _$TokenToJson(this);
}
