// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InventoryDocumentDataModel _$InventoryDocumentDataModelFromJson(
        Map<String, dynamic> json) =>
    InventoryDocumentDataModel(
      id: (json['id'] as num?)?.toInt(),
      docId: (json['docId'] as num?)?.toInt(),
      itemId: (json['itemId'] as num?)?.toInt(),
      itemGroupeId: (json['itemGroupeId'] as num?)?.toInt(),
      unitId: (json['unitId'] as num?)?.toInt(),
      quantity: (json['quantity'] as num?)?.toInt(),
      expirDate: json['expirDate'] as String?,
      note: json['note'] as String?,
      difference: (json['difference'] as num?)?.toInt(),
      number: (json['number'] as num?)?.toInt(),
      itemBarcodeId: (json['itemBarcodeId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$InventoryDocumentDataModelToJson(
        InventoryDocumentDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'docId': instance.docId,
      'itemId': instance.itemId,
      'itemGroupeId': instance.itemGroupeId,
      'unitId': instance.unitId,
      'quantity': instance.quantity,
      'expirDate': instance.expirDate,
      'note': instance.note,
      'number': instance.number,
      'difference': instance.difference,
      'itemBarcodeId': instance.itemBarcodeId,
    };
