import 'package:drift/drift.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:osa_pro/src/core/services/db/app_db.dart';
import 'package:osa_pro/src/features/user_store/domain/entities/store_entities.dart';
part 'store_models.g.dart';

@JsonSerializable()
class StoreModel extends StoreEntity {
  // ...
  // A model is a more generic term and can represent structured data used within an application.
  StoreModel(
      {required super.id,
      required super.name,
      required super.accountNumber,
      required super.branchId,
      required super.storeManager,
      required super.managerPhone,
      required super.note});

  // ...
  // fromJson
  factory StoreModel.fromJson(Map<String, dynamic> json) =>
      _$StoreModelFromJson(json);

  // ...
  // toJson
  Map<String, dynamic> toJson() => _$StoreModelToJson(this);

  //
  static List<StoreModel> fromJsonList(List<dynamic> jsonList) {
    return jsonList.map((json) => StoreModel.fromJson(json)).toList();
  }

  // toCompanion
  UserStoreTableCompanion toCompanion() {
    return UserStoreTableCompanion(
        id: Value(id),
        name: Value(name),
        accountNumber: Value(accountNumber),
        branchId: Value(branchId),
        storeManager: Value(storeManager),
        managerPhone: Value(managerPhone),
        note: Value(note ?? ""));
  }
}
