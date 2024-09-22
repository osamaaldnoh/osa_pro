// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doc_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DocModels _$DocModelsFromJson(Map<String, dynamic> json) => DocModels(
      docId: (json['docId'] as num?)?.toInt(),
      docDateTime: json['docDateTime'] as String?,
      branchId: (json['branchId'] as num?)?.toInt(),
      storeId: (json['storeId'] as num?)?.toInt(),
      docNote: json['docNote'] as String?,
      docLocation: json['docLocation'] as String?,
      userId: (json['userId'] as num?)?.toInt(),
      docStatus: (json['docStatus'] as num?)?.toInt(),
    );

Map<String, dynamic> _$DocModelsToJson(DocModels instance) => <String, dynamic>{
      'docId': instance.docId,
      'docDateTime': instance.docDateTime,
      'branchId': instance.branchId,
      'storeId': instance.storeId,
      'docNote': instance.docNote,
      'docLocation': instance.docLocation,
      'userId': instance.userId,
      'docStatus': instance.docStatus,
    };
