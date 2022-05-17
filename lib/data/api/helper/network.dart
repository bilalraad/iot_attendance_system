import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:iot_attendance_system/data/api/helper/token.dart';
import 'package:iot_attendance_system/data/shared_pref_helper.dart';
import 'package:iot_attendance_system/utils/globals.dart';

class Network {
  static Dio provideDio(SharedPreferenceHelper sharedPrefHelper) {
    final dio = Dio();
    dio
      ..options.baseUrl = BASE_URL
      ..options.contentType = 'application/json; charset=utf-8'
      ..options.headers = {"Accept": "application/json"}
      ..interceptors.add(
        InterceptorsWrapper(
          onRequest: (RequestOptions options,
              RequestInterceptorHandler handler) async {
            final Token? token = sharedPrefHelper.authTokens;
            if (token != null) {
              options.headers["Authorization"] = "Bearer ${token.access}";
            }
            return handler.next(options);
          },
          onError: (
            DioError e,
            ErrorInterceptorHandler handler,
          ) async {
            //NOTE: Refesh token implementation

            /// if error code is 401 and is signed in
            // final Token? token = sharedPrefHelper.authTokens;
            // if (e.response?.statusCode == 401 && token != null) {
            //   await dio.post(
            //     Endpoint.refreshToken,
            //     data: {'refreshToken': token.refresh},
            //   ).then(
            //     (value) async {
            //       // var response = SignInResponse.fromJson(value.data);

            //       await sharedPrefHelper.saveAuthToken(value.data['token']);
            //       // await sharedPrefHelper.saveUser(response.user);
            //     },
            //   ).catchError(
            //     (_) async {
            //      await sharedPrefHelper.clear();
            //     },
            //   );
            // }

            return handler.next(e);
          },
        ),
      );
    if (!kIsWeb) {
      (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
          (HttpClient client) {
        client.badCertificateCallback =
            (X509Certificate cert, String host, int port) => true;
        return client;
      };
    }

    if (kDebugMode) {
      dio.interceptors.add(
        LogInterceptor(
          request: true,
          responseBody: true,
          requestBody: true,
          requestHeader: true,
          error: true,
          responseHeader: true,
        ),
      );
    }

    return dio;
  }
}
