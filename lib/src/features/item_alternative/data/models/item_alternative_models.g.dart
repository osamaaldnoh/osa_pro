// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_alternative_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemAlternativeModel _$ItemAlternativeModelFromJson(
        Map<String, dynamic> json) =>
    ItemAlternativeModel(
      id: (json['id'] as num).toInt(),
      itemId: (json['item_id'] as num).toInt(),
      itemAlternativeId: (json['item_alternative_id'] as num).toInt(),
      itemOrder: (json['item_order'] as num).toInt(),
    );

Map<String, dynamic> _$ItemAlternativeModelToJson(
        ItemAlternativeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'item_id': instance.itemId,
      'item_alternative_id': instance.itemAlternativeId,
      'item_order': instance.itemOrder,
    };
