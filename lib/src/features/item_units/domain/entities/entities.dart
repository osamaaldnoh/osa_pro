import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

class ItemUnitsEntity extends Equatable {
  // ...
  // An entity represents a real-world object with a distinct identity.
  final int id;
  @JsonKey(name: 'item_id')
  final int itemId;
  @JsonKey(name: 'item_unit_id')
  final int itemUnitId;
  @JsonKey(name: 'unit_factor')
  final int unitFactor;
  @JsonKey(name: 'whole_saleprice')
  final int wholeSaleprice;
  @JsonKey(name: 'retail_price')
  final int retailPrice;
  @JsonKey(name: 'spacial_price')
  final int spacialPrice;
  @JsonKey(name: 'intial_cost')
  final int intialCost;
  @JsonKey(name: 'item_discount')
  final int itemDiscount;
  @JsonKey(name: 'unit_barcode')
  final String unitBarcode;
  final bool newData;

  const ItemUnitsEntity(
      {required this.id,
      required this.itemId,
      required this.itemUnitId,
      required this.unitFactor,
      required this.wholeSaleprice,
      required this.retailPrice,
      required this.spacialPrice,
      required this.intialCost,
      required this.itemDiscount,
      required this.unitBarcode,
      required this.newData});

  @override
  List<Object?> get props => [
        id,
        itemId,
        itemUnitId,
        unitFactor,
        wholeSaleprice,
        retailPrice,
        spacialPrice,
        intialCost,
        itemDiscount,
        unitBarcode,
        newData
      ];
}

// "id": 3,
//         "item_id": 1,
//         "item_unit_id": 4,
//         "unit_factor": 1,
//         "whole_saleprice": 0,
//         "retail_price": 0,
//         "spacial_price": 0,
//         "intial_cost": 0,
//         "item_discount": 0,
//         "unit_barcode": "22",
//         "newData": true