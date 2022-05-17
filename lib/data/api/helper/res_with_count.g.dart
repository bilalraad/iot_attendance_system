// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'res_with_count.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResWithCount<T> _$ResWithCountFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    ResWithCount<T>(
      results: (json['results'] as List<dynamic>).map(fromJsonT).toList(),
      count: json['count'] as int,
    );
