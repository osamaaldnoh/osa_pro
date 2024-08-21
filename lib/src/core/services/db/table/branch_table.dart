import 'package:drift/drift.dart';
import 'package:osa_pro/src/features/branchinfo/data/models/branch_info_model.dart';

@UseRowClass(BranchInfoModel)
class BranchTable extends Table {
  IntColumn get id => integer()();
  IntColumn get companyId => integer()();
  TextColumn get name => text()();
  TextColumn get address => text()();
  TextColumn get phone => text()();
  TextColumn get email => text()();
  TextColumn get arReportHeader => text()();
  TextColumn get enReportHeader => text()();
  TextColumn get logo => text()();
}
