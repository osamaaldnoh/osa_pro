import 'package:drift/drift.dart';
import 'package:osa_pro/src/features/user_store/data/models/models.dart';

@UseRowClass(UserStoreModel)
class UserStoreTable extends Table {
  IntColumn get id => integer()();
  TextColumn get name => text()();
  RealColumn get accountNumber => real()();
  IntColumn get branchId => integer()();
  TextColumn get storeManager => text()();
  TextColumn get managerPhone => text()();
  TextColumn get note => text()();
}
