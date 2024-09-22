import 'package:osa_pro/src/core/api/end_points.dart';
import 'package:osa_pro/src/core/config/config.dart';
import 'package:osa_pro/src/core/services/shared/app_shared_per_get.dart';
import 'package:osa_pro/src/core/services/shared/shared_per.dart';

final AppSharedPerGet appSharedPerGet = AppSharedPerGet();

class HelperService {
  static String host = appSharedPerGet.getIp!;
  // static const String host = "192.168.2.36";

  static int port = int.tryParse(appSharedPerGet.getPort!)!;
  static const String scheme = "http";
  static const String apiPath = "/api/";

  static Uri buildUri(String path) {
    return Uri(
        scheme: scheme, host: host, port: port, path: EndPoints.apiUri + path);
  }

  // static Map<String, String> buildHeaders({String? accessToken}) {
  //   Map<String, String> headers = {
  //     "Accept": "application/json",
  //     "Content-Type": "application/json",
  //   };
  //   if (accessToken != null || accessToken != '') {
  //     headers['Authorization'] = 'Bearer $accessToken';
  //   }
  //   return headers;
  // }
  static final SharedPreferencesService _sharedPreferencesService =
      SharedPreferencesService(sl());

  static Map<String, dynamic> body = {
    'userid': _sharedPreferencesService.getString('userId'),
    'branchid': _sharedPreferencesService.getString('branchId') ?? 1,
    'dateTime': null
  };
}
