import 'package:osa_pro/src/core/api/end_points.dart';
import 'package:osa_pro/src/core/api/methods/http_methods.dart';
import 'package:osa_pro/src/core/config/config.dart';
import 'package:osa_pro/src/core/error/exception/exception_handlers.dart';
import 'package:osa_pro/src/core/services/shared/shared_per.dart';
import 'package:osa_pro/src/features/items/data/models/models.dart';

abstract class ItemsRemoteDataSource {
  // Make API call to fetch data and return object.
  // ...
  Future<List<ItemsModel>> getItems();
}

class ItemsRemoteDataSourceImp implements ItemsRemoteDataSource {
  final HttpMethods _httpMethods = HttpMethods(client: sl());
  final SharedPreferencesService _sharedPreferencesService =
      SharedPreferencesService(sl());
  @override
  Future<List<ItemsModel>> getItems() async {
    final body = {
      'userid': _sharedPreferencesService.getString('userid'),
      'branchid': _sharedPreferencesService.getString('branchid'),
      "dateTime": null
    };

    try {
      List response = await _httpMethods.postApi(
          pathUri: EndPoints.itemsUri, body: body) as List;

      final List<ItemsModel> itemsList = response
          .map<ItemsModel>((jsonItems) => ItemsModel.fromJson(jsonItems))
          .toList();

      return itemsList;
    } catch (e) {
      throw ExceptionHandlers().getExceptionString(e);
    }
  }
}
