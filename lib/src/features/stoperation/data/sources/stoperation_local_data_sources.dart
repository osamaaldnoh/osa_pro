import 'package:dartz/dartz.dart';
import 'package:drift/drift.dart';
import 'package:osa_pro/src/core/services/db/app_db.dart';
import 'package:osa_pro/src/features/stoperation/data/models/stoperation_models.dart';

abstract class StoperationLocalDataSources {
  Future<List<StoperationModel>> getStoperations();
  Future<List<StoperationModel>> getStoperation(
      {required int itemId, required int unitId, int? storeId});
  Future<int> saveStoperation(StoperationModel stoperationModel);
}

class StoperationLocalDataSourcesImp implements StoperationLocalDataSources {
  @override
  Future<List<StoperationModel>> getStoperations() async {
    AppDatabase db = AppDatabase.instance();
    final response = await (db.select(db.stoperationTable).get());
    return response;
  }

  @override
  Future<int> saveStoperation(StoperationModel stoperationModel) async {
    AppDatabase db = AppDatabase.instance();

    final result = await db
        .into(db.stoperationTable)
        .insert(stoperationModel.toCompanion());
    return result;
  }

  @override
  Future<List<StoperationModel>> getStoperation(
      {required int itemId, required int unitId, int? storeId}) async {
    AppDatabase db = AppDatabase.instance();
    final response = await (db.select(db.stoperationTable)
          ..where((tbl) =>
              tbl.itemId.equals(itemId) &
              tbl.unitId.equals(unitId) &
              tbl.storeId.equals(storeId!)))
        .get();

    return response;
  }
}
