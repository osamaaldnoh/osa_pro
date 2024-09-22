import 'package:osa_pro/src/features/store_inventory_document/domain/entities/entities.dart';

class StoreInventoryDocumentModel extends StoreInventoryDocumentEntity {
  StoreInventoryDocumentModel(
      {required super.inventoryDocId,
      required super.inventoryDocDateTime,
      required super.inventoryDocData,
      required super.inventoryDocName,
      required super.inventoryDocNameStore,
      required super.inventoryDocLocation,
      required super.categoryInventoryCount});

  factory StoreInventoryDocumentModel.fromJson(Map<String, dynamic> fromJson) {
    return StoreInventoryDocumentModel(
      inventoryDocId: fromJson['inventoryDocId'],
      inventoryDocDateTime: fromJson['inventoryDocDateTime'],
      inventoryDocData: fromJson['inventoryDocData'],
      inventoryDocName: fromJson['inventoryDocName'],
      inventoryDocNameStore: fromJson['inventoryDocNameStore'],
      inventoryDocLocation: fromJson['inventoryDocLocation'],
      categoryInventoryCount: fromJson['categoryInventoryCount'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'inventoryDocId': inventoryDocId,
      'inventoryDocDateTime': inventoryDocDateTime,
      'inventoryDocData': inventoryDocData,
      'inventoryDocName': inventoryDocName,
      'inventoryDocNameStore': inventoryDocNameStore,
      'inventoryDocLocation': inventoryDocLocation,
      'categoryInventoryCount': categoryInventoryCount,
    };
  }
}
