import 'package:iot_attendance_system/data/api/helper/endpoints.dart';
import 'package:iot_attendance_system/utils/globals.dart';
import 'package:url_launcher/url_launcher.dart';

void downLoadSessionExcel(String sessionId) {
  var uri = Uri.parse(
      "${Env.baseURL}${Endpoint.participants}export?session_id=$sessionId");
  // uri = uri.replace();
  launchUrl(uri);
}
