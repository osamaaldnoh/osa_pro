import 'package:osa_pro/src/core/api/end_points.dart';
import 'package:osa_pro/src/core/api/helper_service.dart';
import 'package:osa_pro/src/core/api/methods/http_methods.dart';
import 'package:osa_pro/src/core/config/config.dart';
import 'package:osa_pro/src/core/error/exception/exception_handlers.dart';
import 'package:osa_pro/src/features/user_store/data/models/store_models.dart';

abstract class StoreRemoteDataSource {
  // Make API call to fetch data and return object.
  // ...

  Future<List<StoreModel>> getUserStore();
}

class StoreRemoteDataSourceImp implements StoreRemoteDataSource {
  HttpMethods httpMethods = HttpMethods(client: sl());

  @override
  Future<List<StoreModel>> getUserStore() async {
    try {
      final response = await httpMethods.postApi(
          pathUri: EndPoints.userStoreUri, body: HelperService.body);
      print("response");
      return StoreModel.fromJsonList(response);
    } catch (e) {
      throw ExceptionHandlers().getExceptionString(e);
    }
  }
}
