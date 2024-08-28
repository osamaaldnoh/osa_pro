import 'package:drift/drift.dart';
import 'package:osa_pro/src/features/items/data/models/models.dart';

@UseRowClass(ItemsModel)
class ItemsTable extends Table {
  IntColumn get id => integer()();
  IntColumn get itemGroupId => integer()();
  IntColumn get itemCode => integer()();
  TextColumn get name => text()();
  TextColumn get enName => text()();
  IntColumn get type => integer()();
  IntColumn get itemLimit => integer()();
  TextColumn get itemImage => text()();
  BoolColumn get isExpire => boolean()();
  IntColumn get notifyBefore => integer()();
  BoolColumn get freeQuantityAllow => boolean()();
  BoolColumn get hasTax => boolean()();
  IntColumn get taxRate => integer()();
  TextColumn get itemCompany => text()();
  TextColumn get orignalCountry => text()();
  TextColumn get itemDescription => text()();
  TextColumn get note => text()();
  IntColumn get haseAlternated => integer()();
  BoolColumn get newData => boolean()();
}
