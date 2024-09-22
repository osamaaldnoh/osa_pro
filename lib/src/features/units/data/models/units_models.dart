import 'package:drift/drift.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:osa_pro/src/core/services/db/app_db.dart';
import 'package:osa_pro/src/features/units/domain/entities/units_entities.dart';
part 'units_models.g.dart';

@JsonSerializable()
class UnitsModel extends UnitsEntity {
  // ...
  // A model is a more generic term and can represent structured data used within an application.
  UnitsModel(
      {required super.id,
      required super.name,
      required super.note,
      required super.newData});

  // ...
  // fromJson
  factory UnitsModel.fromJson(Map<String, dynamic> json) =>
      _$UnitsModelFromJson(json);
  // ...
  // toJson
  Map<String, dynamic> toJson() => _$UnitsModelToJson(this);

  // toCompanion
  UnitsTableCompanion toCompanion() {
    return UnitsTableCompanion(
      id: Value(id),
      name: Value(name),
      note: Value(note),
      newData: Value(newData),
    );
  }
}
