import 'package:drift/drift.dart';
import 'package:osa_pro/src/features/user_info/data/models/user_model.dart';

@UseRowClass(UserModel)
class UserTable extends Table {
  IntColumn get id => integer()();
  TextColumn get userName => text()();
  TextColumn get password => text()();
  IntColumn get userAccType => integer()();
  IntColumn get branchId => integer()();
  IntColumn get groupId => integer()();
  TextColumn get image => text()();
  TextColumn get note => text()();

  ///Specifying which from the field above is the primary key
  @override
  Set<Column> get primaryKey => {id};
}
