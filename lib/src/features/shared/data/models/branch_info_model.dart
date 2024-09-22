import 'package:drift/drift.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:osa_pro/src/core/services/db/app_db.dart';
import 'package:osa_pro/src/features/branchinfo/domain/entities/branchinfo_entities.dart';

part 'branch_info_model.g.dart';

@JsonSerializable()
class BranchInfoModel extends BranchInfoEntity {
  BranchInfoModel(
      {required super.id,
      required super.companyId,
      required super.name,
      required super.address,
      required super.phone,
      required super.email,
      required super.arReportHeader,
      required super.enReportHeader,
      required super.logo});

  factory BranchInfoModel.fromJson(Map<String, dynamic> json) =>
      _$BranchInfoModelFromJson(json);

  Map<String, dynamic> toJson() => _$BranchInfoModelToJson(this);
  BranchTableCompanion toCompanion() {
    return BranchTableCompanion(
      id: Value(id ?? -1),
      companyId: Value(companyId),
      name: Value(name),
      address: Value(address),
      phone: Value(phone),
      email: Value(email),
      arReportHeader: Value(arReportHeader),
      enReportHeader: Value(enReportHeader),
      logo: Value(logo),
    );
  }
}
