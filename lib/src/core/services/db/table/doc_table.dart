import 'package:drift/drift.dart';
import 'package:osa_pro/src/features/store_inventory_document/data/models/doc_models.dart';

@UseRowClass(DocModels)
class DocTable extends Table {
  IntColumn get docId => integer().autoIncrement()();
  TextColumn get docDateTime => text()();
  IntColumn get branchId => integer()();
  IntColumn get storeId => integer()();
  TextColumn get docNote => text()();
  TextColumn get docLocation => text()();
  IntColumn get userId => integer()();
  IntColumn get docStatus => integer()();
  // @override
  // Set<Column> get primaryKey => {docId};
}
