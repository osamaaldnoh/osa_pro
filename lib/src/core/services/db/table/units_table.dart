import 'package:drift/drift.dart';
import 'package:osa_pro/src/features/units/data/models/models.dart';

@UseRowClass(UnitsModel)
class UnitsTable extends Table {
  IntColumn get id => integer()();
  TextColumn get name => text()();
  TextColumn get note => text()();
  BoolColumn get newData => boolean()();
}
