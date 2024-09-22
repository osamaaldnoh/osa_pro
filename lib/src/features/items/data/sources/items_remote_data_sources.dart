import 'package:osa_pro/src/core/api/end_points.dart';
import 'package:osa_pro/src/core/api/helper_service.dart';
import 'package:osa_pro/src/core/api/methods/http_methods.dart';
import 'package:osa_pro/src/core/config/config.dart';
import 'package:osa_pro/src/core/error/exception/exception_handlers.dart';
import 'package:osa_pro/src/features/items/data/models/items_models.dart';

abstract class ItemsRemoteDataSource {
  // Make API call to fetch data and return object.
  // ...
  Future<List<ItemsModel>> getItems();
}

class ItemsRemoteDataSourceImp implements ItemsRemoteDataSource {
  final HttpMethods _httpMethods = HttpMethods(client: sl());

  @override
  Future<List<ItemsModel>> getItems() async {
    try {
      List response = await _httpMethods.postApi(
          pathUri: EndPoints.itemsUri, body: HelperService.body) as List;
      print(response);

      List<ItemsModel> itemsList = response
          .map<ItemsModel>((jsonItems) => ItemsModel.fromJson(jsonItems))
          .toList();

      return itemsList;
    } catch (e) {
      throw ExceptionHandlers().getExceptionString(e);
    }
  }
}
