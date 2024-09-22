import 'package:drift/drift.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:osa_pro/src/core/services/db/app_db.dart';
import 'package:osa_pro/src/features/accounts/domain/entities/accounts_entities.dart';
part 'accounts_models.g.dart';

@JsonSerializable()
class AccountsModel extends AccountsEntity {
  // ...
  // A model is a more generic term and can represent structured data used within an application.
  const AccountsModel(
      {required super.id,
      required super.accNumber,
      required super.accName,
      required super.accParent,
      required super.accType,
      required super.accLevel,
      required super.note,
      required super.accCatagory,
      required super.accCatId,
      required super.accPhone,
      required super.address,
      required super.email,
      required super.accLimit,
      required super.paymentType,
      required super.branchId,
      required super.accStoped,
      required super.newData});

  // ...
  // fromJson
  factory AccountsModel.fromJson(Map<String, dynamic> json) =>
      _$AccountsModelFromJson(json);

  // ...
  // toJson
  Map<String, dynamic> toJson() => _$AccountsModelToJson(this);

  // toCompanion
  // AccountsTableCompanion toCompanion() {
  //   return AccountsTableCompanion(
  //     id: Value(id),
  //     accNumber: Value(accNumber),
  //     accName: Value(accName),
  //     accParent: Value(accParent),
  //     accType: Value(accType),
  //     accLevel: Value(accLevel),
  //     note: Value(note),
  //     accCatagory: Value(accCatagory),
  //     accCatId: Value(accCatId),
  //     accPhone: Value(accPhone),
  //     address: Value(address),
  //     email: Value(email),
  //     accLimit: Value(accLimit),
  //     paymentType: Value(paymentType),
  //     branchId: Value(branchId),
  //     accStoped: Value(accStoped),
  //     newData: Value(newData),
  //   );
  // }
}
