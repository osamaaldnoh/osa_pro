// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_barcode_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemBarcodeModel _$ItemBarcodeModelFromJson(Map<String, dynamic> json) =>
    ItemBarcodeModel(
      id: (json['id'] as num).toInt(),
      itemId: (json['item_id'] as num).toInt(),
      itemBarcode: json['item_barcode'] as String,
    );

Map<String, dynamic> _$ItemBarcodeModelToJson(ItemBarcodeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'item_id': instance.itemId,
      'item_barcode': instance.itemBarcode,
    };
