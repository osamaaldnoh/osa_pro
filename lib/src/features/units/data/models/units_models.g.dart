// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'units_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UnitsModel _$UnitsModelFromJson(Map<String, dynamic> json) => UnitsModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      note: json['note'] as String,
      newData: json['newData'] as bool,
    );

Map<String, dynamic> _$UnitsModelToJson(UnitsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'note': instance.note,
      'newData': instance.newData,
    };
