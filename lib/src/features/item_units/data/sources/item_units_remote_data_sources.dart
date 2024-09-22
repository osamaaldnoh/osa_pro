import 'package:osa_pro/src/core/api/end_points.dart';
import 'package:osa_pro/src/core/api/helper_service.dart';
import 'package:osa_pro/src/core/api/methods/http_methods.dart';
import 'package:osa_pro/src/core/config/config.dart';
import 'package:osa_pro/src/core/error/exception/exception_handlers.dart';
import 'package:osa_pro/src/features/item_units/data/models/item_units_models.dart';

abstract class ItemUnitsRemoteDataSource {
  // Make API call to fetch data and return object.
  // ...
  Future<List<ItemUnitsModel>> getItemUnits();
}

class ItemUnitsRemoteDataSourceImp implements ItemUnitsRemoteDataSource {
  final HttpMethods _httpMethods = HttpMethods(client: sl());

  @override
  Future<List<ItemUnitsModel>> getItemUnits() async {
    try {
      List response = await _httpMethods.postApi(
          pathUri: EndPoints.itemUnitsUri, body: HelperService.body) as List;

      final List<ItemUnitsModel> itemUnitsList = response
          .map<ItemUnitsModel>(
              (jsonItemUnits) => ItemUnitsModel.fromJson(jsonItemUnits))
          .toList();

      return itemUnitsList;
    } catch (e) {
      throw ExceptionHandlers().getExceptionString(e);
    }
  }
}
