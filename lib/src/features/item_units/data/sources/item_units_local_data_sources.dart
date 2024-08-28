import 'package:osa_pro/src/core/services/db/app_db.dart';
import 'package:osa_pro/src/features/item_units/data/models/models.dart';

abstract class ItemUnitsLocalDataSources {
  Future<List<ItemUnitsModel>> getItemUnits();
  Future<ItemUnitsModel?> getItemUnit(int itemUnitId);
  Future<int> saveItemUnit(ItemUnitsModel itemUnitModel);
}

class ItemUnitsLocalDataSourcesImp implements ItemUnitsLocalDataSources {
  @override
  Future<ItemUnitsModel?> getItemUnit(int itemUnitId) async {
    AppDatabase db = AppDatabase.instance();
    ItemUnitsModel? itemUnitsModel = await (db.select(db.itemUnitsTable)
          ..where((tbl) => tbl.id.equals(itemUnitId)))
        .getSingleOrNull();
    return itemUnitsModel;
  }

  @override
  Future<List<ItemUnitsModel>> getItemUnits() async {
    AppDatabase db = AppDatabase.instance();
    List<ItemUnitsModel> itemUnits = await db.select(db.itemUnitsTable).get();

    return itemUnits;
  }

  @override
  Future<int> saveItemUnit(ItemUnitsModel itemUnitModel) async {
    AppDatabase db = AppDatabase.instance();
    final result =
        await db.into(db.itemUnitsTable).insert(itemUnitModel.toCompanion());

    return result;
  }
}
