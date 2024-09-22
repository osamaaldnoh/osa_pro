import 'package:drift/drift.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:osa_pro/src/core/services/db/app_db.dart';
import 'package:osa_pro/src/features/item_groups/domain/entities/item_groups_entities.dart';
part 'item_groups_models.g.dart';

@JsonSerializable()
class ItemGroupsModel extends ItemGroupsEntity {
  // ...
  // A model is a more generic term and can represent structured data used within an application.

  ItemGroupsModel(
      {required super.id,
      required super.code,
      required super.name,
      required super.type,
      required super.parent,
      required super.note,
      required super.newData});
  // ...
  // fromJson
  factory ItemGroupsModel.fromJson(Map<String, dynamic> json) =>
      _$ItemGroupsModelFromJson(json);
  // ...
  // toJson
  Map<String, dynamic> toJson() => _$ItemGroupsModelToJson(this);

  // toCompanion
  ItemGroupsTableCompanion toCompanion() {
    return ItemGroupsTableCompanion(
      id: Value(id),
      code: Value(code),
      name: Value(name),
      type: Value(type),
      parent: Value(parent),
      note: Value(note),
      newData: Value(newData),
    );
  }
}
