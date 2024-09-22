import 'package:equatable/equatable.dart';

class StoperationEntity extends Equatable {
  // ...
  // An entity represents a real-world object with a distinct identity.
  final int id;
  final int operationId;
  final int operationType;
  final String operationDate;
  final bool operationIn;
  final int storeId;
  final int itemId;
  final int unitId;
  final int quantity;
  final double averageCost;
  final double unitCost;
  final double totalCost;
  final int unitFactor;
  final int qtyConvert;
  final String expirDate;
  final int addBranch;

  StoperationEntity(
      {required this.id,
      required this.operationId,
      required this.operationType,
      required this.operationDate,
      required this.operationIn,
      required this.storeId,
      required this.itemId,
      required this.unitId,
      required this.quantity,
      required this.averageCost,
      required this.unitCost,
      required this.totalCost,
      required this.unitFactor,
      required this.qtyConvert,
      required this.expirDate,
      required this.addBranch});
  @override
  List<Object?> get props => [
        id,
        operationId,
        operationType,
        operationDate,
        operationIn,
        storeId,
        itemId,
        unitId,
        quantity,
        averageCost,
        unitCost,
        totalCost,
        unitFactor,
        qtyConvert,
        expirDate,
        addBranch
      ];
}
