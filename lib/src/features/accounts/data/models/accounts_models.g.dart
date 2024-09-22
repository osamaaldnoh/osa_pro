// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accounts_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccountsModel _$AccountsModelFromJson(Map<String, dynamic> json) =>
    AccountsModel(
      id: (json['id'] as num).toInt(),
      accNumber: (json['accNumber'] as num).toDouble(),
      accName: json['accName'] as String,
      accParent: (json['accParent'] as num).toDouble(),
      accType: (json['accType'] as num).toInt(),
      accLevel: (json['accLevel'] as num).toInt(),
      note: json['note'] as String,
      accCatagory: (json['accCatagory'] as num).toInt(),
      accCatId: (json['accCatId'] as num).toInt(),
      accPhone: json['accPhone'] as String,
      address: json['address'] as String,
      email: json['email'] as String,
      accLimit: (json['accLimit'] as num).toInt(),
      paymentType: (json['paymentType'] as num).toInt(),
      branchId: (json['branchId'] as num).toInt(),
      accStoped: json['accStoped'] as bool,
      newData: json['newData'] as bool,
    );

Map<String, dynamic> _$AccountsModelToJson(AccountsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'accNumber': instance.accNumber,
      'accName': instance.accName,
      'accParent': instance.accParent,
      'accType': instance.accType,
      'accLevel': instance.accLevel,
      'note': instance.note,
      'accCatagory': instance.accCatagory,
      'accCatId': instance.accCatId,
      'accPhone': instance.accPhone,
      'address': instance.address,
      'email': instance.email,
      'accLimit': instance.accLimit,
      'paymentType': instance.paymentType,
      'branchId': instance.branchId,
      'accStoped': instance.accStoped,
      'newData': instance.newData,
    };
