// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_docs_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SystemDocsModel _$SystemDocsModelFromJson(Map<String, dynamic> json) =>
    SystemDocsModel(
      id: (json['id'] as num).toInt(),
      docName: json['docName'] as String,
      docType: (json['docType'] as num).toInt(),
    );

Map<String, dynamic> _$SystemDocsModelToJson(SystemDocsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'docName': instance.docName,
      'docType': instance.docType,
    };
