import 'package:osa_pro/src/core/services/db/app_db.dart';
import 'package:osa_pro/src/features/sales_man_settings/data/models/sales_man_settings_models.dart';

abstract class SalesManSettingsLocalDataSources {
  Future<SalesManSettingsModel?> getSalesManSettings();
  Future<int> saveSalesManSettings(SalesManSettingsModel salesManSettingsModel);
}

class SalesManSettingsLocalDataSourcesImp
    implements SalesManSettingsLocalDataSources {
  @override
  Future<SalesManSettingsModel?> getSalesManSettings() async {
    AppDatabase appDb = AppDatabase.instance();

    SalesManSettingsModel? salesManSettingsModel =
        await (appDb.select(appDb.salesManSettingsTable).getSingleOrNull());
    return salesManSettingsModel;
  }

  @override
  Future<int> saveSalesManSettings(
      SalesManSettingsModel salesManSettingsModel) async {
    AppDatabase appDb = AppDatabase.instance();

    final result = await appDb
        .into(appDb.salesManSettingsTable)
        .insert(salesManSettingsModel.toCompanion());

    return result;
  }
}
