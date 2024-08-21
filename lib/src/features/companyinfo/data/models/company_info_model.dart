import 'package:drift/drift.dart';
import 'package:osa_pro/src/core/services/db/app_db.dart';
import 'package:osa_pro/src/features/companyinfo/domain/entities/company_entities.dart';
import 'package:json_annotation/json_annotation.dart';
part 'company_info_model.g.dart';

@JsonSerializable()
class CompanyModel extends CompanyEntity {
  CompanyModel(
      {required super.id,
      required super.name,
      required super.enName,
      required super.shortName,
      required super.shortEnName,
      required super.webSite,
      required super.address,
      required super.note,
      required super.logo});

  factory CompanyModel.fromJson(Map<String, dynamic> json) =>
      _$CompanyModelFromJson(json);

  Map<String, dynamic> toJson() => _$CompanyModelToJson(this);

  CompanyTableCompanion toCompanion() {
    return CompanyTableCompanion(
      id: Value(id ?? -1),
      name: Value(name),
      enName: Value(enName),
      shortName: Value(shortName),
      shortEnName: Value(shortEnName),
      webSite: Value(webSite),
      address: Value(address),
      note: Value(note),
      logo: Value(logo),
    );
  }
}
