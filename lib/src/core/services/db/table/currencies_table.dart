import 'package:drift/drift.dart';
import 'package:osa_pro/src/features/currencies/data/models/currencies_model.dart';

@UseRowClass(CurrenciesModel)
class CurrenciesTable extends Table {
  IntColumn get id => integer()();
  TextColumn get name => text()();
  TextColumn get symbol => text()();
  TextColumn get subName => text()();
  IntColumn get value => integer()();
  IntColumn get equivelant => integer()();
  BoolColumn get localCurrency => boolean()();
  BoolColumn get storeCurrency => boolean()();
  IntColumn get maxValue => integer()();
  IntColumn get minValue => integer()();
  TextColumn get note => text()();
  BoolColumn get newData => boolean()();
}
