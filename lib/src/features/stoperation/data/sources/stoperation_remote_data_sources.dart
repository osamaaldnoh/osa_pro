import 'package:osa_pro/src/core/api/end_points.dart';
import 'package:osa_pro/src/core/api/helper_service.dart';
import 'package:osa_pro/src/core/api/methods/http_methods.dart';
import 'package:osa_pro/src/core/config/config.dart';
import 'package:osa_pro/src/core/error/exception/exception_handlers.dart';
import 'package:osa_pro/src/features/stoperation/data/models/stoperation_models.dart';

abstract class StoperationRemoteDataSource {
  // Make API call to fetch data and return object.
  // ...
  Future<List<StoperationModel>> getStoperations();
}

class StoperationRemoteDataSourceImp implements StoperationRemoteDataSource {
  final HttpMethods _httpMethods = HttpMethods(client: sl());

  @override
  Future<List<StoperationModel>> getStoperations() async {
    try {
      List response = await _httpMethods.postApi(
          pathUri: EndPoints.stoperationUri, body: HelperService.body) as List;

      List<StoperationModel> itemsList = response
          .map<StoperationModel>(
              (jsonStoperation) => StoperationModel.fromJson(jsonStoperation))
          .toList();

      return itemsList;
    } catch (e) {
      throw ExceptionHandlers().getExceptionString(e);
    }
  }
}
