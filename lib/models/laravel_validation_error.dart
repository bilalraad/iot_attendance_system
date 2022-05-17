import 'package:json_annotation/json_annotation.dart';

part 'laravel_validation_error.g.dart';

@JsonSerializable()
class LaravelValidationError {
  final String message;
  final int code;
  final List<FieldsError> errors;

  LaravelValidationError(this.message, this.code, this.errors);

  factory LaravelValidationError.fromJson(Map<String, dynamic> json) =>
      _$LaravelValidationErrorFromJson(json);
}

@JsonSerializable()
class FieldsError {
  final String field;
  final String message;

  FieldsError(this.field, this.message);

  factory FieldsError.fromJson(Map<String, dynamic> json) =>
      _$FieldsErrorFromJson(json);
}
