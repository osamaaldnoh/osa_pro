import 'package:drift/drift.dart';
import 'package:osa_pro/src/core/services/db/app_db.dart';
import 'package:osa_pro/src/features/user_store/data/models/store_models.dart';

abstract class StoreLocalDataSources {
  Future<StoreModel?> getUserStoreModel();
  Future<List<StoreModel>> getStores();
  Future<void> saveStores(List<StoreModel> stores);
  Future<int> saveUserStoreModel(StoreModel userStoreModel);
}

class UserStoreLocalDataSourcesImp implements StoreLocalDataSources {
  @override
  Future<StoreModel?> getUserStoreModel() async {
    AppDatabase appDb = AppDatabase.instance();

    StoreModel? userStoreModel =
        await (appDb.select(appDb.userStoreTable).getSingleOrNull());
    return userStoreModel;
  }

  @override
  Future<int> saveUserStoreModel(StoreModel userStoreModel) async {
    AppDatabase appDb = AppDatabase.instance();

    final result = await appDb
        .into(appDb.userStoreTable)
        .insert(userStoreModel.toCompanion());

    return result;
  }

  @override
  Future<List<StoreModel>> getStores() async {
    AppDatabase db = AppDatabase.instance();
    final stores = await (db.select(db.userStoreTable).get());

    return stores;
  }

  @override
  Future<void> saveStores(List<StoreModel> stores) async {
    AppDatabase db = AppDatabase.instance();

    await db.batch((batch) {
      batch.insertAllOnConflictUpdate(db.userStoreTable,
          stores.map((store) => store.toCompanion()).toList());
    });
  }
}
