import 'package:osa_pro/src/core/api/end_points.dart';
import 'package:osa_pro/src/core/api/methods/http_methods.dart';
import 'package:osa_pro/src/core/config/config.dart';
import 'package:osa_pro/src/core/error/exception/exception_handlers.dart';
import 'package:osa_pro/src/core/services/shared/shared_per.dart';
import 'package:osa_pro/src/features/user_store/data/models/models.dart';

abstract class UserStoreRemoteDataSource {
  // Make API call to fetch data and return object.
  // ...

  Future<UserStoreModel> getUserStore();
}

class UserStoreRemoteDataSourceImp implements UserStoreRemoteDataSource {
  HttpMethods httpMethods = HttpMethods(client: sl());
  final SharedPreferencesService _sharedPreferencesService =
      SharedPreferencesService(sl());

  @override
  Future<UserStoreModel> getUserStore() async {
    final body = {
      'userid': _sharedPreferencesService.getString('userid'),
      'branchid': _sharedPreferencesService.getString('branchid'),
      "dateTime": null
    };
    try {
      final response = await httpMethods.postApi(
          pathUri: EndPoints.userStoreUri, body: body);
      return UserStoreModel.fromJson(response);
    } catch (e) {
      throw ExceptionHandlers().getExceptionString(e);
    }
  }
}
