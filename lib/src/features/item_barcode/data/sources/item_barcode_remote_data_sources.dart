import 'package:osa_pro/src/core/api/end_points.dart';
import 'package:osa_pro/src/core/api/helper_service.dart';
import 'package:osa_pro/src/core/api/methods/http_methods.dart';
import 'package:osa_pro/src/core/config/config.dart';
import 'package:osa_pro/src/core/error/exception/exception_handlers.dart';
import 'package:osa_pro/src/core/services/shared/shared_per.dart';
import 'package:osa_pro/src/features/item_barcode/data/models/item_barcode_models.dart';

abstract class ItemBarcodeRemoteDataSource {
  // Make API call to fetch data and return object.
  // ...
  Future<List<ItemBarcodeModel>> getItemBarcodes();
}

class ItemBarcodeRemoteDataSourceImp implements ItemBarcodeRemoteDataSource {
  final HttpMethods _httpMethods = HttpMethods(client: sl());
  final SharedPreferencesService _sharedPreferencesService =
      SharedPreferencesService(sl());
  @override
  Future<List<ItemBarcodeModel>> getItemBarcodes() async {
    try {
      List response = await _httpMethods.postApi(
          pathUri: EndPoints.itemBarcodeUri, body: HelperService.body) as List;

      List<ItemBarcodeModel> itemBarcodeList = response
          .map((jsonItemBarcode) => ItemBarcodeModel.fromJson(jsonItemBarcode))
          .toList();
      return itemBarcodeList;
    } catch (e) {
      throw ExceptionHandlers().getExceptionString(e);
    }
  }
}
