import 'package:osa_pro/src/core/api/end_points.dart';
import 'package:osa_pro/src/core/api/methods/http_methods.dart';
import 'package:osa_pro/src/core/config/config.dart';
import 'package:osa_pro/src/core/error/exception/exception_handlers.dart';
import 'package:osa_pro/src/core/services/shared/shared_per.dart';
import 'package:osa_pro/src/features/item_units/data/models/models.dart';

abstract class ItemUnitsRemoteDataSource {
  // Make API call to fetch data and return object.
  // ...
  Future<List<ItemUnitsModel>> getItemUnits();
}

class ItemUnitsRemoteDataSourceImp implements ItemUnitsRemoteDataSource {
  final HttpMethods _httpMethods = HttpMethods(client: sl());
  final SharedPreferencesService _sharedPreferencesService =
      SharedPreferencesService(sl());
  @override
  Future<List<ItemUnitsModel>> getItemUnits() async {
    final body = {
      'userid': _sharedPreferencesService.getString('userid'),
      'branchid': _sharedPreferencesService.getString('branchid'),
      "dateTime": null
    };

    try {
      List response = await _httpMethods.postApi(
          pathUri: EndPoints.itemUnitsUri, body: body) as List;

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
