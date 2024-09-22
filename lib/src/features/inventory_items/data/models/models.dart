import 'package:drift/drift.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:osa_pro/src/core/services/db/app_db.dart';
import 'package:osa_pro/src/features/inventory_items/domain/entities/Inventory_document_data_entity.dart';
part 'models.g.dart';

@JsonSerializable()
class InventoryDocumentDataModel extends InventoryDocumentDataEntity {
  // ...
  // A model is a more generic term and can represent structured data used within an application.
  InventoryDocumentDataModel(
      {required super.id,
      required super.docId,
      required super.itemId,
      required super.itemGroupeId,
      required super.unitId,
      required super.quantity,
      required super.expirDate,
      required super.note,
      required super.difference,
      required super.number,
      required super.itemBarcodeId});

  // ...
  // fromJson
  factory InventoryDocumentDataModel.fromJson(Map<String, dynamic> json) =>
      _$InventoryDocumentDataModelFromJson(json);
  // ...
  // toJson
  Map<String, dynamic> toJson() => _$InventoryDocumentDataModelToJson(this);

  // toCompanion
  InventoryDocDataTableCompanion toCompanion() {
    return InventoryDocDataTableCompanion(
        // id: Value(id ?? 1),
        docId: Value(docId ?? -1),
        itemId: Value(itemId ?? -1),
        itemGroupeId: Value(itemGroupeId ?? -1),
        unitId: Value(unitId ?? -1),
        quantity: Value(quantity ?? -1),
        expirDate: Value(expirDate ?? ""),
        note: Value(note ?? ""),
        difference: Value(difference ?? -1),
        itemBarcodeId: Value(itemBarcodeId ?? -1),
        number: Value(number ?? -1));
  }

  InventoryDocDataTableCompanion updatetoCompanion() {
    return InventoryDocDataTableCompanion(
        id: Value(id ?? -1),
        docId: Value(docId ?? -1),
        itemId: Value(itemId ?? -1),
        itemGroupeId: Value(itemGroupeId ?? -1),
        unitId: Value(unitId ?? -1),
        quantity: Value(quantity ?? -1),
        expirDate: Value(expirDate ?? ""),
        note: Value(note ?? ""),
        difference: Value(difference ?? -1),
        itemBarcodeId: Value(itemBarcodeId ?? -1),
        number: Value(number ?? -1));
  }
}
