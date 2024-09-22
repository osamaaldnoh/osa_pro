import 'package:osa_pro/src/core/services/db/app_db.dart';
import 'package:osa_pro/src/features/item_barcode/data/models/item_barcode_models.dart';

abstract class ItemBarcodeLocalDataSources {
  Future<List<ItemBarcodeModel>> getItemBarcodes();
  Future<int> saveItemBarcode(ItemBarcodeModel itemBarcodeModel);
}

class ItemBarcodeLocalDataSourcesImp implements ItemBarcodeLocalDataSources {
  @override
  Future<List<ItemBarcodeModel>> getItemBarcodes() async {
    AppDatabase db = AppDatabase.instance();
    List<ItemBarcodeModel> response =
        await (db.select(db.itemBarcodeTable).get());

    return response;
  }

  @override
  Future<int> saveItemBarcode(ItemBarcodeModel itemBarcodeModel) async {
    AppDatabase db = AppDatabase.instance();
    final result = await db
        .into(db.itemBarcodeTable)
        .insert(itemBarcodeModel.toCompanion());

    return result;
  }
}
