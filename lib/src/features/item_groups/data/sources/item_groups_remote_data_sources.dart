import 'package:osa_pro/src/core/api/end_points.dart';
import 'package:osa_pro/src/core/api/helper_service.dart';
import 'package:osa_pro/src/core/api/methods/http_methods.dart';
import 'package:osa_pro/src/core/config/config.dart';
import 'package:osa_pro/src/core/error/exception/exception_handlers.dart';
import 'package:osa_pro/src/core/services/shared/shared_per.dart';
import 'package:osa_pro/src/features/item_groups/data/models/item_groups_models.dart';

abstract class ItemGroupsRemoteDataSource {
  // Make API call to fetch data and return object.
  // ...
  Future<List<ItemGroupsModel>> getAllItemGroups();
}

class ItemGroupsRemoteDataSourceImp implements ItemGroupsRemoteDataSource {
  final HttpMethods _httpMethods = HttpMethods(client: sl());
  final SharedPreferencesService _sharedPreferencesService =
      SharedPreferencesService(sl());

  @override
  Future<List<ItemGroupsModel>> getAllItemGroups() async {
    try {
      List response = await _httpMethods.postApi(
          pathUri: EndPoints.itemGroupsUri, body: HelperService.body) as List;

      final List<ItemGroupsModel> itemGroupsList =
          response.map<ItemGroupsModel>((jsonItemGroupsModel) {
        return ItemGroupsModel.fromJson(jsonItemGroupsModel);
      }).toList();

      return itemGroupsList;
    } catch (e) {
      throw ExceptionHandlers().getExceptionString(e);
    }
  }
}
