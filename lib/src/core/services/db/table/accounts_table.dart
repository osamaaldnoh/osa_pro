import 'package:drift/drift.dart';
import 'package:osa_pro/src/features/accounts/data/models/accounts_models.dart';

@UseRowClass(AccountsModel)
class AccountsTable extends Table {
  IntColumn get id => integer()();
  RealColumn get accNumber => real()();
  TextColumn get accName => text()();
  RealColumn get accParent => real()();
  IntColumn get accType => integer()();
  IntColumn get accLevel => integer()();
  TextColumn get note => text()();
  IntColumn get accCatagory => integer()();
  IntColumn get accCatId => integer()();
  TextColumn get accPhone => text()();
  TextColumn get address => text()();
  TextColumn get email => text()();
  IntColumn get accLimit => integer()();
  IntColumn get paymentType => integer()();
  IntColumn get branchId => integer()();
  BoolColumn get accStoped => boolean()();
  BoolColumn get newData => boolean()();
}
