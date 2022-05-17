extension MapperAndCleanUp on Map<String, dynamic> {
  /// this delete if value is null
  Map<String, dynamic> removeNullAll(Map<String, dynamic> dict) => this
    ..removeWhere((key, value) => value == null)
    ..addAll(dict);

  Map<String, dynamic> removeNull() =>
      this..removeWhere((key, value) => value == null);

  /// remove null, emptyString, false, and emptyList for api request body
  Map<String, dynamic> cleanUpValues() => this
    ..removeWhere((key, value) =>
        value == null ||
        value.toString().isEmpty ||
        value == "" ||
        value == false ||
        value == []);

  Map<String, dynamic> removeAndEmptyString() => this
    ..removeWhere((key, value) =>
        value == null || value.toString().isEmpty || value == "");

  Map<String, dynamic> removeNullAndAdd(Map<String, dynamic> dict) => this
    ..removeWhere((key, value) => value == null)
    ..addAll(dict);

  dynamic valueAt(int index) => values.elementAt(index);

  dynamic keyAt(int index) => keys.elementAt(index);
}
