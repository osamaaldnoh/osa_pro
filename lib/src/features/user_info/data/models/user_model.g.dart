// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      id: (json['id'] as num?)?.toInt(),
      userName: json['user_name'] as String,
      password: json['password'] as String,
      userAccType: (json['user_acc_type'] as num).toInt(),
      branchId: (json['branch_id'] as num).toInt(),
      groupId: (json['group_id'] as num).toInt(),
      image: json['image'] as String,
      note: json['note'] as String,
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'id': instance.id,
      'user_name': instance.userName,
      'password': instance.password,
      'user_acc_type': instance.userAccType,
      'branch_id': instance.branchId,
      'group_id': instance.groupId,
      'image': instance.image,
      'note': instance.note,
    };
