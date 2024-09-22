import 'package:osa_pro/src/core/api/end_points.dart';
import 'package:osa_pro/src/core/api/helper_service.dart';
import 'package:osa_pro/src/core/api/methods/http_methods.dart';
import 'package:osa_pro/src/core/config/config.dart';
import 'package:osa_pro/src/core/error/exception/exception_handlers.dart';
import 'package:osa_pro/src/core/services/shared/shared_per.dart';
import 'package:osa_pro/src/features/sales_man_settings/data/models/sales_man_settings_models.dart';

abstract class SalesManSettingsRemoteDataSource {
  // Make API call to fetch data and return object.
  // ...
  Future<SalesManSettingsModel> getSalesManSettings();
}

class SalesManSettingsRemoteDataSourceImp
    implements SalesManSettingsRemoteDataSource {
  final HttpMethods _httpMethods = HttpMethods(client: sl());

  @override
  Future<SalesManSettingsModel> getSalesManSettings() async {
    try {
      final remoteSalesManSettings = await _httpMethods.postApi(
          pathUri: EndPoints.salesManSettingsUri, body: HelperService.body);
      print("remoteSalesManSettings::::$remoteSalesManSettings");

      return SalesManSettingsModel.fromJson(remoteSalesManSettings);
    } catch (e) {
      print("remoteSalesManSettings::::$e");
      throw ExceptionHandlers().getExceptionString(e);
    }
  }
}
