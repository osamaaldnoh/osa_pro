// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branch_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BranchInfoModel _$BranchInfoModelFromJson(Map<String, dynamic> json) =>
    BranchInfoModel(
      id: (json['id'] as num?)?.toInt(),
      companyId: (json['company_id'] as num).toInt(),
      name: json['name'] as String,
      address: json['address'] as String,
      phone: json['phone'] as String,
      email: json['email'] as String,
      arReportHeader: json['ar_report_header'] as String,
      enReportHeader: json['en_report_header'] as String,
      logo: json['logo'] as String,
    );

Map<String, dynamic> _$BranchInfoModelToJson(BranchInfoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'company_id': instance.companyId,
      'name': instance.name,
      'address': instance.address,
      'phone': instance.phone,
      'email': instance.email,
      'ar_report_header': instance.arReportHeader,
      'en_report_header': instance.enReportHeader,
      'logo': instance.logo,
    };
