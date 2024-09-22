import 'package:drift/drift.dart';
import 'package:osa_pro/src/features/stoperation/data/models/stoperation_models.dart';

@UseRowClass(StoperationModel)
class StoperationTable extends Table {
  IntColumn get id => integer()();
  IntColumn get operationId => integer()();
  IntColumn get operationType => integer()();
  TextColumn get operationDate => text()();
  BoolColumn get operationIn => boolean()();
  IntColumn get storeId => integer()();
  IntColumn get itemId => integer()();
  IntColumn get unitId => integer()();
  IntColumn get quantity => integer()();
  RealColumn get averageCost => real()();
  RealColumn get unitCost => real()();
  RealColumn get totalCost => real()();
  IntColumn get unitFactor => integer()();
  IntColumn get qtyConvert => integer()();
  TextColumn get expirDate => text()();
  IntColumn get addBranch => integer()();
}
