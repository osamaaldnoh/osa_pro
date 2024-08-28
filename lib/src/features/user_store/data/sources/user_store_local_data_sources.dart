import 'package:osa_pro/src/core/services/db/app_db.dart';
import 'package:osa_pro/src/features/user_store/data/models/models.dart';

abstract class UserStoreLocalDataSources {
  Future<UserStoreModel?> getUserStoreModel();
  Future<int> saveUserStoreModel(UserStoreModel userStoreModel);
}

class UserStoreLocalDataSourcesImp implements UserStoreLocalDataSources {
  @override
  Future<UserStoreModel?> getUserStoreModel() async {
    AppDatabase appDb = AppDatabase.instance();

    UserStoreModel? userStoreModel =
        await (appDb.select(appDb.userStoreTable).getSingleOrNull());
    return userStoreModel;
  }

  @override
  Future<int> saveUserStoreModel(UserStoreModel userStoreModel) async {
    AppDatabase appDb = AppDatabase.instance();

    final result = await appDb
        .into(appDb.userStoreTable)
        .insert(userStoreModel.toCompanion());

    return result;
  }
}
