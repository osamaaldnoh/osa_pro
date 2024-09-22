import 'package:drift/drift.dart';
import 'package:osa_pro/src/features/inventory_items/data/models/models.dart';

@UseRowClass(InventoryDocumentDataModel)
class InventoryDocDataTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get docId => integer()();
  IntColumn get itemId => integer()();
  IntColumn get itemGroupeId => integer()();
  IntColumn get unitId => integer()();
  IntColumn get quantity => integer()();
  TextColumn get expirDate => text()();
  TextColumn get note => text()();
  IntColumn get number => integer()();
  IntColumn get difference => integer()();
  IntColumn get itemBarcodeId => integer()();
  // @override
  // Set<Column> get primaryKey => {id};
}
