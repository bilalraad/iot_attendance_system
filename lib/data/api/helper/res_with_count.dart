import 'package:freezed_annotation/freezed_annotation.dart';

part 'res_with_count.g.dart';

@JsonSerializable(createToJson: false, genericArgumentFactories: true)
@immutable
class ResWithCount<T> {
  @JsonKey(name: "count")
  final int count;

  @JsonKey(name: 'results')
  final List<T> results;

  const ResWithCount({required this.results, required this.count});

  factory ResWithCount.empty() {
    // ignore: prefer_const_literals_to_create_immutables, prefer_const_constructors
    return ResWithCount(count: 0, results: <T>[]);
  }

  bool get isLastPage => results.length < count;

  factory ResWithCount.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonModel) =>
      _$ResWithCountFromJson<T>(json, fromJsonModel);
}
