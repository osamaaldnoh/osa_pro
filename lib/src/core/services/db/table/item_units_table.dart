import 'package:drift/drift.dart';
import 'package:osa_pro/src/features/item_units/data/models/item_units_models.dart';

@UseRowClass(ItemUnitsModel)
class ItemUnitsTable extends Table {
  IntColumn get id => integer()();
  IntColumn get itemId => integer()();
  IntColumn get itemUnitId => integer()();
  IntColumn get unitFactor => integer()();
  IntColumn get wholeSaleprice => integer()();
  IntColumn get retailPrice => integer()();
  IntColumn get spacialPrice => integer()();
  IntColumn get intialCost => integer()();
  IntColumn get itemDiscount => integer()();
  TextColumn get unitBarcode => text()();
  BoolColumn get newData => boolean()();
}
