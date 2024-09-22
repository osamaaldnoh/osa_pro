import 'package:osa_pro/src/core/services/db/app_db.dart';
import 'package:osa_pro/src/features/item_alternative/data/models/item_alternative_models.dart';

abstract class ItemAlternativeLocalDataSources {
  Future<List<ItemAlternativeModel>> getItemAlternatives();
  Future<int> saveItemAlternativeModel(
      ItemAlternativeModel itemAlternativeModel);
}

class ItemAlternativeLocalDataSourcesImp
    implements ItemAlternativeLocalDataSources {
  @override
  Future<List<ItemAlternativeModel>> getItemAlternatives() async {
    // AppDatabase db = AppDatabase.instance();
    // final response = await (db.select(db.itemAlternativeTable).get());

    // return response;
    throw Exception();
  }

  @override
  Future<int> saveItemAlternativeModel(
      ItemAlternativeModel itemAlternativeModel) async {
    // AppDatabase db = AppDatabase.instance();
    // final result = await db
    //     .into(db.itemAlternativeTable)
    //     .insert(itemAlternativeModel.toCompanion());
    // return result;
    throw Exception();
  }
}
