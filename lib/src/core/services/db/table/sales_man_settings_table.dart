import 'package:drift/drift.dart';
import 'package:osa_pro/src/features/sales_man_settings/data/models/models.dart';

@UseRowClass(SalesManSettingsModel)
class SalesManSettingsTable extends Table {
  IntColumn get custParent => integer()();
  TextColumn get generateCode => text()();
  IntColumn get custGroup => integer()();
}
