// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'laravel_validation_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LaravelValidationError _$LaravelValidationErrorFromJson(
        Map<String, dynamic> json) =>
    LaravelValidationError(
      json['message'] as String,
      json['code'] as int,
      (json['errors'] as List<dynamic>)
          .map((e) => FieldsError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LaravelValidationErrorToJson(
        LaravelValidationError instance) =>
    <String, dynamic>{
      'message': instance.message,
      'code': instance.code,
      'errors': instance.errors,
    };

FieldsError _$FieldsErrorFromJson(Map<String, dynamic> json) => FieldsError(
      json['field'] as String,
      json['message'] as String,
    );

Map<String, dynamic> _$FieldsErrorToJson(FieldsError instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };
