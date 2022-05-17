import 'package:iot_attendance_system/data/api/helper/endpoints.dart';
import 'package:iot_attendance_system/utils/globals.dart';
import 'package:url_launcher/url_launcher.dart';

void downLoadExcel() {
  var uri = Uri.parse("$BASE_URL${Endpoint.projects}/export");
  uri = uri.replace();

  launchUrl(uri);
}
