import 'package:drift/drift.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:osa_pro/src/core/services/db/app_db.dart';
import 'package:osa_pro/src/features/user_store/domain/entities/entities.dart';
part 'models.g.dart';

@JsonSerializable()
class UserStoreModel extends UserStoreEntity {
  // ...
  // A model is a more generic term and can represent structured data used within an application.
  UserStoreModel(
      {required super.id,
      required super.name,
      required super.accountNumber,
      required super.branchId,
      required super.storeManager,
      required super.managerPhone,
      required super.note});

  // ...
  // fromJson
  factory UserStoreModel.fromJson(Map<String, dynamic> json) =>
      _$UserStoreModelFromJson(json);

  // ...
  // toJson
  Map<String, dynamic> toJson() => _$UserStoreModelToJson(this);

  // toCompanion
  UserStoreTableCompanion toCompanion() {
    return UserStoreTableCompanion(
        id: Value(id),
        name: Value(name),
        accountNumber: Value(accountNumber),
        branchId: Value(branchId),
        storeManager: Value(storeManager),
        managerPhone: Value(managerPhone),
        note: Value(note));
  }
}
