import 'package:osa_pro/src/core/api/end_points.dart';
import 'package:osa_pro/src/core/api/helper_service.dart';
import 'package:osa_pro/src/core/api/methods/http_methods.dart';
import 'package:osa_pro/src/core/config/config.dart';
import 'package:osa_pro/src/core/error/exception/exception_handlers.dart';
import 'package:osa_pro/src/features/units/data/models/units_models.dart';

abstract class UnitsRemoteDataSource {
  // Make API call to fetch data and return object.
  // ...
  Future<List<UnitsModel>> getAllUnits();
}

class UnitsRemoteDataSourceImp implements UnitsRemoteDataSource {
  final HttpMethods _httpMethods = HttpMethods(client: sl());

  @override
  Future<List<UnitsModel>> getAllUnits() async {
    try {
      List response = await _httpMethods.postApi(
          pathUri: EndPoints.unitsUri, body: HelperService.body) as List;

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
