import 'package:osa_pro/src/core/api/end_points.dart';
import 'package:osa_pro/src/core/api/helper_service.dart';
import 'package:osa_pro/src/core/api/methods/http_methods.dart';
import 'package:osa_pro/src/core/config/config.dart';
import 'package:osa_pro/src/core/error/exception/exception_handlers.dart';
import 'package:osa_pro/src/features/item_alternative/data/models/item_alternative_models.dart';

abstract class ItemAlternativeRemoteDataSource {
  // Make API call to fetch data and return object.
  // ...
  Future<List<ItemAlternativeModel>> getItemAlternatives();
}

class ItemAlternativeRemoteDataSourcesImp
    implements ItemAlternativeRemoteDataSource {
  final HttpMethods _httpMethods = HttpMethods(client: sl());

  @override
  Future<List<ItemAlternativeModel>> getItemAlternatives() async {
    try {
      List response = await _httpMethods.postApi(
          pathUri: EndPoints.itemAlternativeUri,
          body: HelperService.body) as List;

      List<ItemAlternativeModel> itemAlternativeList = response
          .map<ItemAlternativeModel>((jsonItemAlternative) =>
              ItemAlternativeModel.fromJson(jsonItemAlternative))
          .toList();

      return itemAlternativeList;
    } catch (e) {
      throw ExceptionHandlers().getExceptionString(e);
    }
  }
}
