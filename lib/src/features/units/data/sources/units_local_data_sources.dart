import 'package:osa_pro/src/core/services/db/app_db.dart';
import 'package:osa_pro/src/features/units/data/models/units_models.dart';

abstract class UnitsLocalDataSources {
  Future<List<UnitsModel>> getAllUnits();
  Future<UnitsModel?> getUnit(int unitId);
  Future<int> saveUnit(UnitsModel unitModel);
}

class UnitsLocalDataSourcesImp implements UnitsLocalDataSources {
  @override
  Future<List<UnitsModel>> getAllUnits() async {
    AppDatabase db = AppDatabase.instance();
    List<UnitsModel> localUnitsModelList =
        await (db.select(db.unitsTable).get());

    return localUnitsModelList;
  }

  @override
  Future<UnitsModel?> getUnit(int unitId) async {
    AppDatabase db = AppDatabase.instance();
    UnitsModel? unitsModel = await (db.select(db.unitsTable)
          ..where((tbl) => tbl.id.equals(unitId)))
        .getSingleOrNull();
    return unitsModel;
  }

  @override
  Future<int> saveUnit(UnitsModel unitModel) async {
    AppDatabase db = AppDatabase.instance();
    final result = await db.into(db.unitsTable).insert(unitModel.toCompanion());
    return result;
  }
}
