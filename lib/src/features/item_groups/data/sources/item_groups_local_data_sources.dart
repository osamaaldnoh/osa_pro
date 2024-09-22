import 'package:osa_pro/src/core/services/db/app_db.dart';
import 'package:osa_pro/src/features/item_groups/data/models/item_groups_models.dart';

abstract class ItemGroupsLocalDataSources {
  Future<List<ItemGroupsModel>> getAllItemGroups();
  Future<ItemGroupsModel?> getItemGroup(int itemgroupId);
  Future<List<ItemGroupsModel>> getItemGroupsWhereItemId(int itemGroupId);
  Future<int> saveItemGroup(ItemGroupsModel itemGroupsModel);
}

class ItemGroupsLocalDataSourcesImp implements ItemGroupsLocalDataSources {
  @override
  Future<List<ItemGroupsModel>> getAllItemGroups() async {
    AppDatabase db = AppDatabase.instance();
    List<ItemGroupsModel> localItemGroupsModelList =
        await (db.select(db.itemGroupsTable).get());

    return localItemGroupsModelList;
  }

  @override
  Future<ItemGroupsModel?> getItemGroup(int itemgroupId) async {
    AppDatabase db = AppDatabase.instance();
    ItemGroupsModel? itemGroupsModel = await (db.select(db.itemGroupsTable)
          ..where((tbl) => tbl.id.equals(itemgroupId)))
        .getSingleOrNull();
    return itemGroupsModel;
  }

  @override
  Future<int> saveItemGroup(ItemGroupsModel itemGroupsModel) async {
    AppDatabase db = AppDatabase.instance();
    final result =
        await db.into(db.itemGroupsTable).insert(itemGroupsModel.toCompanion());
    return result;
  }

  @override
  Future<List<ItemGroupsModel>> getItemGroupsWhereItemId(
      int itemGroupId) async {
    AppDatabase db = AppDatabase.instance();
    List<ItemGroupsModel> itemUnits = await (db.select(db.itemGroupsTable)
          ..where((tbl) => tbl.code.equals(itemGroupId)))
        .get();

    return itemUnits;
  }
}
