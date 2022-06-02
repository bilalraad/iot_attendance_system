import 'dart:async';
import 'dart:convert';
import 'package:iot_attendance_system/data/api/helper/token.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceHelper {
  final SharedPreferences _sharedPreference;

  const SharedPreferenceHelper(this._sharedPreference);

  /// tokens as [Map]
  /// * access token
  /// * refresh token
  Future saveAuthToken(Token value) async {
    var tokens = value.toJson();
    var encode = json.encode(tokens);
    await _sharedPreference.setString(Preferences.authToken, encode);
  }

  Token? get authTokens {
    var authTokensString = _sharedPreference.getString(Preferences.authToken);
    if (authTokensString != null) {
      var userMap = jsonDecode(authTokensString);
      return Token.fromJson(userMap);
    }
    return null;
  }

  Future removeAuthToken() => _sharedPreference.remove(Preferences.authToken);

  Future clear() => _sharedPreference.clear();

  /// save object in [SharedPreferences]
  /// map -> json > string
  /// * use [toJson] method on object from [JsonSerializable]
  /// * encode it to json by [jsonEncode]
  /// * save it as string

  // Future saveUser(User value) => _sharedPreference.setString(
  //     Preferences.user, json.encode(value.toJson()));

  /// get object from [SharedPreferences]
  /// string -> json -> map
  /// * get object as string
  /// * decode it to json by [jsonDecode]
  /// * use [fromjson] method on object from [JsonSerializable]

  /// AgentSignUp crud [SignUp] object

  // User? get user {
  //   var userString = _sharedPreference.getString(Preferences.user);
  //   if (userString != null) {
  //     var userMap = jsonDecode(userString);
  //     return User.fromJson(userMap);
  //   }
  //   return null;
  // }

  // Future removeUser() async => _sharedPreference.remove(Preferences.user);

  // Future saveAppConfig(AppConfig value) => _sharedPreference.setString(
  //     Preferences.appConfig, json.encode(value.toJson()));

  // AppConfig? get appConfig {
  //   var appConfigString = _sharedPreference.getString(Preferences.appConfig);
  //   if (appConfigString != null) {
  //     var appConfigMap = jsonDecode(appConfigString);
  //     return AppConfig.fromJson(appConfigMap);
  //   }
  //   return null;
  // }
}

class Preferences {
  static const authToken = 'authToken';
  static const user = 'user';
}
