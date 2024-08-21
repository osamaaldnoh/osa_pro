import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

class UserEntity extends Equatable {
  final int? id;
  @JsonKey(name: 'user_name')
  final String userName;
  final String password;
  @JsonKey(name: 'user_acc_type')
  final int userAccType;
  @JsonKey(name: 'branch_id')
  final int branchId;
  @JsonKey(name: 'group_id')
  final int groupId;
  final String image;
  final String note;

  const UserEntity({
    required this.id,
    required this.userName,
    required this.password,
    required this.userAccType,
    required this.branchId,
    required this.groupId,
    required this.image,
    required this.note,
  });

  @override
  List<Object?> get props =>
      [id, userName, password, userAccType, branchId, groupId, image, note];
}
