import 'package:drift/drift.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:osa_pro/src/core/services/db/app_db.dart';
import 'package:osa_pro/src/features/item_alternative/domain/entities/item_alternative_entities.dart';
part 'item_alternative_models.g.dart';

@JsonSerializable()
class ItemAlternativeModel extends ItemAlternativeEntity {
  // ...
  // A model is a more generic term and can represent structured data used within an application.
  const ItemAlternativeModel(
      {required super.id,
      required super.itemId,
      required super.itemAlternativeId,
      required super.itemOrder});

  // ...
  // fromJson
  factory ItemAlternativeModel.fromJson(Map<String, dynamic> json) =>
      _$ItemAlternativeModelFromJson(json);

  // ...
  // toJson
  Map<String, dynamic> toJson() => _$ItemAlternativeModelToJson(this);

// toCompanion
  // ItemAlternativeTableCompanion toCompanion() {
  //   return ItemAlternativeTableCompanion(
  //     id: Value(id),
  //     itemId: Value(itemId),
  //     itemAlternativeId: Value(itemAlternativeId),
  //     itemOrder: Value(itemOrder),
  //   );
  // }
}
