import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:iot_attendance_system/utils/app_error.dart';

part 'result_state.freezed.dart';

@freezed
class BlocsState<T> with _$BlocsState<T> {
  const factory BlocsState.initial() = Initial;
  const factory BlocsState.loading() = Loading;
  const factory BlocsState.data(T results) = Data;
  const factory BlocsState.failure(AppError error) = Failure;
}
