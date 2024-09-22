import 'package:drift/drift.dart';
import 'package:osa_pro/src/features/item_groups/data/models/item_groups_models.dart';

@UseRowClass(ItemGroupsModel)
class ItemGroupsTable extends Table {
  IntColumn get id => integer()();
  IntColumn get code => integer()();
  TextColumn get name => text()();
  IntColumn get type => integer()();
  IntColumn get parent => integer()();
  TextColumn get note => text()();
  BoolColumn get newData => boolean()();
}
