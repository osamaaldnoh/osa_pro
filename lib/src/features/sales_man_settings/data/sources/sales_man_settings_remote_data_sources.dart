import 'package:osa_pro/src/core/api/end_points.dart';
import 'package:osa_pro/src/core/api/methods/http_methods.dart';
import 'package:osa_pro/src/core/config/config.dart';
import 'package:osa_pro/src/core/error/exception/exception_handlers.dart';
import 'package:osa_pro/src/core/services/shared/shared_per.dart';
import 'package:osa_pro/src/features/sales_man_settings/data/models/models.dart';

abstract class SalesManSettingsRemoteDataSource {
  // Make API call to fetch data and return object.
  // ...
  Future<SalesManSettingsModel> getSalesManSettings();
}

class SalesManSettingsRemoteDataSourceImp
    implements SalesManSettingsRemoteDataSource {
  final HttpMethods _httpMethods = HttpMethods(client: sl());
  final SharedPreferencesService _sharedPreferencesService =
      SharedPreferencesService(sl());
  @override
  Future<SalesManSettingsModel> getSalesManSettings() async {
    final body = {
      'userid': _sharedPreferencesService.getString('userid'),
      'branchid': _sharedPreferencesService.getString('branchid'),
      "dateTime": null
    };

    try {
      final remoteSalesManSettings = await _httpMethods.postApi(
          pathUri: EndPoints.salesManSettingsUri, body: body);
      print("remoteSalesManSettings::::$remoteSalesManSettings");

      return SalesManSettingsModel.fromJson(remoteSalesManSettings);
    } catch (e) {
      print("remoteSalesManSettings::::$e");
      throw ExceptionHandlers().getExceptionString(e);
    }
  }
}
