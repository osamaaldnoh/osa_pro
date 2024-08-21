import 'package:drift/drift.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:osa_pro/src/core/services/db/app_db.dart';
import 'package:osa_pro/src/features/user_info/domain/entities/user_entity.dart';
part 'user_model.g.dart';

@JsonSerializable()
class UserModel extends UserEntity {
  UserModel(
      {required super.id,
      required super.userName,
      required super.password,
      required super.userAccType,
      required super.branchId,
      required super.groupId,
      required super.image,
      required super.note});

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  UserTableCompanion toCompanion() {
    return UserTableCompanion(
      id: Value(id ?? -1),
      userName: Value(userName),
      password: Value(password),
      userAccType: Value(userAccType),
      branchId: Value(branchId),
      groupId: Value(groupId),
      image: Value(image),
      note: Value(note),
    );
  }
  // factory UserModel.fromJson(Map<String, dynamic> json) {
  //   return UserModel(
  //       id: json['id'],
  //       userName: json['user_name'],
  //       passWord: json['password'],
  //       userAccType: json['user_acc_type'],
  //       branchId: json['branch_id'],
  //       groupId: json['group_id'],
  //       image: json['image'],
  //       note: json['note']);
  // }

  // Map<String, dynamic> toJson() {
  //   return {
  //     'id': id,
  //     'username': userName,
  //     'password': passWord,
  //     'user_acc_type': userAccType,
  //     'branch_id': branchId,
  //     'group_id': groupId,
  //     'image': image,
  //     'note': note
  //   };
  // }
}
