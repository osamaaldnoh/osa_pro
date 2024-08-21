import 'package:osa_pro/src/core/api/end_points.dart';

class HelperService {
  static const String host = "192.168.2.21";

  static const int port = 10222;
  static const String scheme = "http";
  static const String apiPath = "/api/";

  static Uri buildUri(String path) {
    return Uri(
      scheme: scheme,
      host: host,
      port: port,
      path: EndPoints.apiUri + path,
    );
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
}
