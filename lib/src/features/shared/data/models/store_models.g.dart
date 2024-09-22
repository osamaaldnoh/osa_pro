// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreModel _$StoreModelFromJson(Map<String, dynamic> json) => StoreModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      accountNumber: (json['accountNumber'] as num).toDouble(),
      branchId: (json['branchId'] as num).toInt(),
      storeManager: json['storeManager'] as String,
      managerPhone: json['managerPhone'] as String,
      note: json['note'] as String,
    );

Map<String, dynamic> _$StoreModelToJson(StoreModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'accountNumber': instance.accountNumber,
      'branchId': instance.branchId,
      'storeManager': instance.storeManager,
      'managerPhone': instance.managerPhone,
      'note': instance.note,
    };
