// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SalesManSettingsModel _$SalesManSettingsModelFromJson(
        Map<String, dynamic> json) =>
    SalesManSettingsModel(
      custParent: (json['cust_parent'] as num).toInt(),
      generateCode: json['generate_code'] as String,
      custGroup: (json['cust_group'] as num).toInt(),
    );

Map<String, dynamic> _$SalesManSettingsModelToJson(
        SalesManSettingsModel instance) =>
    <String, dynamic>{
      'cust_parent': instance.custParent,
      'generate_code': instance.generateCode,
      'cust_group': instance.custGroup,
    };
