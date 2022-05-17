import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:iot_attendance_system/models/laravel_validation_error.dart';
import 'package:iot_attendance_system/utils/strings.dart';

part 'network_exceptions.freezed.dart';

@freezed
class NetworkExceptions with _$NetworkExceptions {
  const factory NetworkExceptions.requestCancelled() = RequestCancelled;

  const factory NetworkExceptions.httpError(Response response) = HttpError;

  const factory NetworkExceptions.requestTimeout() = RequestTimeout;

  const factory NetworkExceptions.sendTimeout() = SendTimeout;

  const factory NetworkExceptions.noInternetConnection() = NoInternetConnection;

  const factory NetworkExceptions.formatException() = FormatException;

  const factory NetworkExceptions.unableToProcess() = UnableToProcess;

  const factory NetworkExceptions.unexpectedError() = UnexpectedError;

  static NetworkExceptions getFilteredException(error) {
    if (error is Exception) {
      try {
        NetworkExceptions networkExceptions;
        if (error is DioError) {
          switch (error.type) {
            case DioErrorType.cancel:
              networkExceptions = const NetworkExceptions.requestCancelled();
              break;
            case DioErrorType.connectTimeout:
              networkExceptions = const NetworkExceptions.requestTimeout();
              break;
            case DioErrorType.receiveTimeout:
              networkExceptions = const NetworkExceptions.sendTimeout();
              break;
            case DioErrorType.response:
              networkExceptions = NetworkExceptions.httpError(error.response!);
              break;
            case DioErrorType.sendTimeout:
              networkExceptions = const NetworkExceptions.sendTimeout();
              break;
            case DioErrorType.other:
              networkExceptions =
                  const NetworkExceptions.noInternetConnection();
              break;
          }
        } else if (error is SocketException) {
          networkExceptions = const NetworkExceptions.noInternetConnection();
        } else {
          networkExceptions = const NetworkExceptions.unexpectedError();
        }
        return networkExceptions;
      } on FormatException catch (_) {
        return const NetworkExceptions.formatException();
      } catch (_) {
        return const NetworkExceptions.unexpectedError();
      }
    } else {
      if (error.toString().contains("is not a subtype of")) {
        return const NetworkExceptions.unableToProcess();
      } else {
        return const NetworkExceptions.unexpectedError();
      }
    }
  }
}

extension NetworkErrorHandler on NetworkExceptions {
  String getErrorMessage() {
    var errorMessage = "";
    when(
      requestCancelled: () {
        errorMessage = Strings.operationCanceled;
      },
      httpError: (Response response) {
        if (response.statusCode == 422) {
          errorMessage = LaravelValidationError.fromJson(response.data)
              .errors
              .first
              .message;
        } else if (response.statusCode == 404 /*Not found*/ ||
                response.statusCode == 401 /*Wrong credential*/ ||
                response.statusCode == 409 /*Email taken*/ ||
                response.statusCode == 403 /*Not Authorized*/
            ) {
          errorMessage = response.data;
        } else {
          errorMessage = Strings.unKnownError;
        }
      },
      unexpectedError: () {
        errorMessage = Strings.unKnownError;
      },
      requestTimeout: () {
        errorMessage = Strings.connectionFailed;
      },
      noInternetConnection: () {
        errorMessage = Strings.noInternet;
      },
      sendTimeout: () {
        errorMessage = Strings.connectionFailed;
      },
      unableToProcess: () {
        if (kDebugMode) {
          errorMessage = "Unable to process the data backend error";
        } else {
          errorMessage = Strings.unKnownError;
        }
      },
      formatException: () {
        errorMessage = Strings.unKnownError;
      },
    );
    return errorMessage;
  }
}
