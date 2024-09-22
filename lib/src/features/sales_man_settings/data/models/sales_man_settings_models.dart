import 'package:drift/drift.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:osa_pro/src/core/services/db/app_db.dart';
import 'package:osa_pro/src/features/sales_man_settings/domain/entities/sales_man_settings_entities.dart';
part 'sales_man_settings_models.g.dart';

@JsonSerializable()
class SalesManSettingsModel extends SalesManSettingsEntity {
  // ...
  // A model is a more generic term and can represent structured data used within an application.
  const SalesManSettingsModel(
      {required super.custParent,
      required super.generateCode,
      required super.custGroup});

  // ...
  // fromJson
  factory SalesManSettingsModel.fromJson(Map<String, dynamic> json) =>
      _$SalesManSettingsModelFromJson(json);
  // ...
  // toJson
  Map<String, dynamic> toJson() => _$SalesManSettingsModelToJson(this);

  // toCompanion
  SalesManSettingsTableCompanion toCompanion() {
    return SalesManSettingsTableCompanion(
      custParent: Value(custParent),
      generateCode: Value(generateCode),
      custGroup: Value(custGroup),
    );
  }
}
