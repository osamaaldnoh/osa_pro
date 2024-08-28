import 'package:osa_pro/src/core/api/end_points.dart';
import 'package:osa_pro/src/core/api/methods/http_methods.dart';
import 'package:osa_pro/src/core/config/config.dart';
import 'package:osa_pro/src/core/error/exception/exception_handlers.dart';
import 'package:osa_pro/src/core/services/shared/shared_per.dart';
import 'package:osa_pro/src/features/units/data/models/models.dart';

abstract class UnitsRemoteDataSource {
  // Make API call to fetch data and return object.
  // ...
  Future<List<UnitsModel>> getAllUnits();
}

class UnitsRemoteDataSourceImp implements UnitsRemoteDataSource {
  final HttpMethods _httpMethods = HttpMethods(client: sl());
  final SharedPreferencesService _sharedPreferencesService =
      SharedPreferencesService(sl());
  @override
  Future<List<UnitsModel>> getAllUnits() async {
    final body = {
      'userid': _sharedPreferencesService.getString('userid'),
      'branchid': _sharedPreferencesService.getString('branchid'),
      "dateTime": null
    };

    try {
      List response = await _httpMethods.postApi(
          pathUri: EndPoints.unitsUri, body: body) as List;

      final List<UnitsModel> unitsModel =
          response.map<UnitsModel>((jsonUnitsModel) {
        return UnitsModel.fromJson(jsonUnitsModel);
      }).toList();

      return unitsModel;
    } catch (e) {
      throw ExceptionHandlers().getExceptionString(e);
    }
  }
  // Make API call to fetch data and return object.
  // ...
}
