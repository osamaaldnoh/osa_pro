// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompanyModel _$CompanyModelFromJson(Map<String, dynamic> json) => CompanyModel(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String,
      enName: json['en_name'] as String,
      shortName: json['short_name'] as String,
      shortEnName: json['short_en_name'] as String,
      webSite: json['website'] as String,
      address: json['address'] as String,
      note: json['note'] as String,
      logo: json['logo'] as String,
    );

Map<String, dynamic> _$CompanyModelToJson(CompanyModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'en_name': instance.enName,
      'short_name': instance.shortName,
      'short_en_name': instance.shortEnName,
      'website': instance.webSite,
      'address': instance.address,
      'note': instance.note,
      'logo': instance.logo,
    };
