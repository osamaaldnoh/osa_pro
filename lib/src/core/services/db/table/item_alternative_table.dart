import 'package:drift/drift.dart';
import 'package:osa_pro/src/features/item_alternative/data/models/item_alternative_models.dart';

@UseRowClass(ItemAlternativeModel)
class ItemAlternativeTable extends Table {
  IntColumn get id => integer()();
  IntColumn get itemId => integer()();
  IntColumn get itemAlternativeId => integer()();
  IntColumn get itemOrder => integer()();
}
