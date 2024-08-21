import 'package:drift/drift.dart';
import 'package:osa_pro/src/features/companyinfo/data/models/company_info_model.dart';

@UseRowClass(CompanyModel)
class CompanyTable extends Table {
  IntColumn get id => integer()();
  TextColumn get name => text()();
  TextColumn get enName => text()();
  TextColumn get shortName => text()();
  TextColumn get shortEnName => text()();
  TextColumn get webSite => text()();
  TextColumn get address => text()();
  TextColumn get note => text()();
  TextColumn get logo => text()();
}
