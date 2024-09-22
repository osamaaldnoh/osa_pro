import 'package:drift/drift.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:osa_pro/src/core/services/db/app_db.dart';
import 'package:osa_pro/src/features/stoperation/domain/entities/stoperation_entities.dart';
part 'stoperation_models.g.dart';

@JsonSerializable()
class StoperationModel extends StoperationEntity {
  // ...
  // A model is a more generic term and can represent structured data used within an application.
  StoperationModel(
      {required super.id,
      required super.operationId,
      required super.operationType,
      required super.operationDate,
      required super.operationIn,
      required super.storeId,
      required super.itemId,
      required super.unitId,
      required super.quantity,
      required super.averageCost,
      required super.unitCost,
      required super.totalCost,
      required super.unitFactor,
      required super.qtyConvert,
      required super.expirDate,
      required super.addBranch});

  // ...
  // fromJson
  factory StoperationModel.fromJson(Map<String, dynamic> json) =>
      _$StoperationModelFromJson(json);

  // ...
  // toJson
  Map<String, dynamic> toJson() => _$StoperationModelToJson(this);

  // toCompanion
  StoperationTableCompanion toCompanion() {
    return StoperationTableCompanion(
      id: Value(id),
      operationId: Value(operationId),
      operationType: Value(operationType),
      operationDate: Value(operationDate),
      operationIn: Value(operationIn),
      storeId: Value(storeId),
      itemId: Value(itemId),
      unitId: Value(unitId),
      quantity: Value(quantity),
      averageCost: Value(averageCost),
      unitCost: Value(unitCost),
      totalCost: Value(totalCost),
      unitFactor: Value(unitFactor),
      qtyConvert: Value(qtyConvert),
      expirDate: Value(expirDate),
      addBranch: Value(addBranch),
    );
  }
}
