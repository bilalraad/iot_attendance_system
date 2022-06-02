import 'package:flutter/widgets.dart';
import 'package:iot_attendance_system/utils/strings.dart';

typedef Action<T> = Function(T builder);

class ValidationBuilder {
  static const int maxSelectedImages = 10;
  static const int passwordMinLength = 8;
  static const int passwordMaxLength = 64;
  static const int unitMaxLength = 3;
  static const int areaLength = 9;

  ValidationBuilder({
    this.isOptional = false,
    this.requiredMessage,
  }) {
    // Unless a builder is isOptional, the first thing we do is to add a
    // [required] validator. All subsequent validators should expect
    // a non-null argument.
    if (!isOptional) required(requiredMessage);
  }

  static final RegExp _emailRegExp = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9\-\_]+(\.[a-zA-Z]+)*$");
  static final RegExp _nonDigitsExp = RegExp(r'[^\d]');
  static final RegExp _anyLetter = RegExp(r'[A-Za-z]');
  static final RegExp _phoneRegExp = RegExp(r"07[3-9][0-9]{8}");
  static final RegExp _urlRegExp = RegExp(
      r'(https?:\/\/(?:www\.|(?!www))[a-zA-Z0-9][a-zA-Z0-9-]+[a-zA-Z0-9]\.[^\s]{2,}|www\.[a-zA-Z0-9][a-zA-Z0-9-]+[a-zA-Z0-9]\.[^\s]{2,}|https?:\/\/(?:www\.|(?!www))[a-zA-Z0-9]+\.[^\s]{2,}|www\.[a-zA-Z0-9]+\.[^\s]{2,})');
  //convert Arabic numbers to english numbers ١٢٣٢١٣abcd => 123213abcd
  String a2e(String s) {
    final arabicNumbers = ['٠', '١', '٢', '٣', '٤', '٥', '٦', '٧', '٨', '٩'];
    for (var l in arabicNumbers) {
      s = s.replaceAll(l, arabicNumbers.indexOf(l).toString());
    }
    return s;
  }

  /// language regex
  // ignore: unused_field
  static final RegExp _arabicExp = RegExp(r'^[\u0621-\u064A0-9 ]+$');
  // ignore: unused_field
  static final RegExp _englishExp = RegExp(r'^[a-zA-Z]$');

  final bool isOptional;
  final String? requiredMessage;
  final List<FormFieldValidator<String>> validations = [];

  /// Clears validation list and adds required validation if
  /// [isOptional] is false
  ValidationBuilder reset() {
    validations.clear();
    if (isOptional != true) {
      required(requiredMessage);
    }
    return this;
  }

  /// Adds new item to [validations] list, returns this instance
  ValidationBuilder add(FormFieldValidator<String> validator) {
    validations.add(validator);
    return this;
  }

  /// Tests [value] against defined [validations]
  String? test(String? value) {
    for (var validate in validations) {
      // Return null if field is isOptional and value is null
      if (isOptional && (value == null || value.isEmpty)) {
        return null;
      }

      // Otherwise execute validations
      final result = validate(value);
      if (result != null) {
        return result;
      }
    }
    return null;
  }

  /// Returns a validator function for FormInput
  FormFieldValidator<String> build() => test;

  /// Throws error only if [left] and [right] validators throw error same time.
  /// If [reverse] is true left builder's error will be displayed otherwise
  /// right builder's error. Because this is default behaviour on most of the
  /// programming languages.
  ValidationBuilder or(
    Action<ValidationBuilder> left,
    Action<ValidationBuilder> right, {
    bool reverse = false,
  }) {
    // Create
    final v1 = ValidationBuilder();
    final v2 = ValidationBuilder();

    // Configure
    left(v1);
    right(v2);

    // Build
    final v1cb = v1.build();
    final v2cb = v2.build();

    // Test
    return add((value) {
      final leftResult = v1cb(value);
      if (leftResult == null) {
        return null;
      }
      final rightResult = v2cb(value);
      if (rightResult == null) {
        return null;
      }
      return reverse == true ? leftResult : rightResult;
    });
  }

  /// Value must not be null
  ValidationBuilder required([String? message]) => add((v) =>
      v == null || v.isEmpty ? message ?? Strings.requiredMessage : null);

  ValidationBuilder equal(dynamic value, String valueName, [String? message]) =>
      add((v) => v != value
          ? message ?? Strings.fieldMustEqualError(valueName)
          : null);

  ValidationBuilder notEqual(dynamic value, [String? message]) =>
      add((v) => v == value ? message : null);

  /// Value length must be greater than or equal to [minLength]
  ValidationBuilder minLength(int minLength, [String? message]) =>
      add((v) => v!.length < minLength
          ? message ?? Strings.minLengthError(minLength)
          : null);

  /// Value length must be less than or equal to [maxLength]
  ValidationBuilder maxLength(int maxLength, [String? message]) =>
      add((v) => v!.length > maxLength
          ? message ?? Strings.minLengthError(maxLength)
          : null);

  /// Value must match [regExp]
  ValidationBuilder regExp(RegExp regExp, String message) =>
      add((v) => regExp.hasMatch(v!) ? null : message);

  /// Value must be a well formatted email
  ValidationBuilder email([String? message]) => add(
      (v) => _emailRegExp.hasMatch(v!) ? null : message ?? Strings.emailError);

  /// Value must be a well formatted phone number
  ValidationBuilder phone([String? message]) =>
      add((v) => !_anyLetter.hasMatch(v!) &&
              _phoneRegExp.hasMatch(a2e(v).replaceAll(_nonDigitsExp, ''))
          ? null
          : message ?? Strings.phoneError);
}
