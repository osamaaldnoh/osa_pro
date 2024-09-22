import 'package:osa_pro/src/core/services/db/app_db.dart';
import 'package:osa_pro/src/features/items/data/models/items_models.dart';

abstract class ItemsLocalDataSources {
  Future<List<ItemsModel>> getItems();
  Future<ItemsModel?> getItem(int itemId);
  Future<int> saveItem(ItemsModel itemModel);
}

class ItemsLocalDataSourcesImp implements ItemsLocalDataSources {
  @override
  Future<ItemsModel?> getItem(int itemId) async {
    AppDatabase db = AppDatabase.instance();
    ItemsModel? itemModel = await (db.select(db.itemsTable)
          ..where((tbl) => tbl.id.equals(itemId)))
        .getSingleOrNull();
    return itemModel;
  }

  @override
  Future<List<ItemsModel>> getItems() async {
    AppDatabase db = AppDatabase.instance();
    List<ItemsModel> itemsList = await db.select(db.itemsTable).get();

    return itemsList;
  }

  @override
  Future<int> saveItem(ItemsModel itemModel) async {
    AppDatabase db = AppDatabase.instance();
    final result = await db.into(db.itemsTable).insert(itemModel.toCompanion());

    return result;
  }
}
