import 'package:drift/drift.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:osa_pro/src/core/services/db/app_db.dart';
import 'package:osa_pro/src/features/item_units/domain/entities/item_units_entities.dart';
part 'item_units_models.g.dart';

@JsonSerializable()
class ItemUnitsModel extends ItemUnitsEntity {
  // ...
  // A model is a more generic term and can represent structured data used within an application.
  ItemUnitsModel(
      {required super.id,
      required super.itemId,
      required super.itemUnitId,
      required super.unitFactor,
      required super.wholeSaleprice,
      required super.retailPrice,
      required super.spacialPrice,
      required super.intialCost,
      required super.itemDiscount,
      required super.unitBarcode,
      required super.newData});

  // ...
  // fromJson
  factory ItemUnitsModel.fromJson(Map<String, dynamic> json) =>
      _$ItemUnitsModelFromJson(json);
  // ...
  // toJson
  Map<String, dynamic> toJson() => _$ItemUnitsModelToJson(this);

  // toCompanion
  ItemUnitsTableCompanion toCompanion() {
    return ItemUnitsTableCompanion(
      id: Value(id),
      itemId: Value(itemId),
      itemUnitId: Value(itemUnitId),
      unitFactor: Value(unitFactor),
      wholeSaleprice: Value(wholeSaleprice),
      retailPrice: Value(retailPrice),
      spacialPrice: Value(spacialPrice),
      intialCost: Value(intialCost),
      itemDiscount: Value(itemDiscount),
      unitBarcode: Value(unitBarcode),
      newData: Value(newData),
    );
  }
}
