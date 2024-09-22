import 'package:drift/drift.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:osa_pro/src/core/services/db/app_db.dart';
import 'package:osa_pro/src/features/item_barcode/domain/entities/item_barcode_entities.dart';
part 'item_barcode_models.g.dart';

@JsonSerializable()
class ItemBarcodeModel extends ItemBarcodeEntity {
  // ...
  // A model is a more generic term and can represent structured data used within an application.
  ItemBarcodeModel(
      {required super.id, required super.itemId, required super.itemBarcode});

  // ...
  // fromJson
  factory ItemBarcodeModel.fromJson(Map<String, dynamic> json) =>
      _$ItemBarcodeModelFromJson(json);
  // ...
  // toJson
  Map<String, dynamic> toJson() => _$ItemBarcodeModelToJson(this);

  // toCompanion
  ItemBarcodeTableCompanion toCompanion() {
    return ItemBarcodeTableCompanion(
      id: Value(id),
      itemId: Value(itemId),
      itemBarcode: Value(itemBarcode),
    );
  }
}
