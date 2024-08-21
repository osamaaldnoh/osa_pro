import 'package:osa_pro/src/core/services/db/app_db.dart';
import 'package:osa_pro/src/features/currencies/data/models/currencies_model.dart';

abstract class CurrenciesLocalDataSources {
  Future<List<CurrenciesModel>?> getAllCurrencies();
  Future<CurrenciesModel?> getCurrency(int currencyId);
  Future<int> saveCurrencies(CurrenciesModel currencyModel);
}

class CurrenciesLocalDataSourcesImp implements CurrenciesLocalDataSources {
  final AppDatabase _db = AppDatabase.instance();
  @override
  Future<List<CurrenciesModel>?> getAllCurrencies() async {
    final currenciesList = await _db.select(_db.currenciesTable).get();

    return currenciesList;
  }

  @override
  Future<CurrenciesModel?> getCurrency(int currencyId) async {
    CurrenciesModel? currencyModel = await (_db.select(_db.currenciesTable)
          ..where((tbl) => tbl.id.equals(currencyId)))
        .getSingleOrNull();

    return currencyModel;
  }

  @override
  Future<int> saveCurrencies(CurrenciesModel currencyModel) async {
    await _db.into(_db.currenciesTable).insert(currencyModel.toCompanion());

    return currencyModel.id ?? 0;
  }
}
