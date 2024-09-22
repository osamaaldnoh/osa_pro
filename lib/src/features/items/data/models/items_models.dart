import 'package:drift/drift.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:osa_pro/src/core/services/db/app_db.dart';
import 'package:osa_pro/src/features/items/domain/entities/items_entities.dart';
part 'items_models.g.dart';

@JsonSerializable()
class ItemsModel extends ItemsEntity {
  // ...
  // A model is a more generic term and can represent structured data used within an application.
  ItemsModel(
      {super.id,
      super.itemGroupId,
      super.itemCode,
      super.name,
      super.enName,
      super.type,
      super.itemLimit,
      super.itemImage,
      super.isExpire,
      super.notifyBefore,
      super.freeQuantityAllow,
      super.hasTax,
      super.taxRate,
      super.itemCompany,
      super.orignalCountry,
      super.itemDescription,
      super.note,
      super.haseAlternated,
      super.newData});

  // ...
  // fromJson
  factory ItemsModel.fromJson(Map<String, dynamic> json) =>
      _$ItemsModelFromJson(json);
  // ...
  // toJson
  Map<String, dynamic> toJson() => _$ItemsModelToJson(this);

  //toCompanion
  ItemsTableCompanion toCompanion() {
    return ItemsTableCompanion(
      id: Value(id ?? -1),
      itemGroupId: Value(itemGroupId ?? -1),
      itemCode: Value(itemCode ?? -1),
      name: Value(name ?? ""),
      enName: Value(enName ?? ""),
      type: Value(type ?? -1),
      itemLimit: Value(itemLimit ?? -1),
      itemImage: Value(itemImage ?? ""),
      isExpire: Value(isExpire ?? false),
      notifyBefore: Value(notifyBefore ?? -1),
      freeQuantityAllow: Value(freeQuantityAllow ?? false),
      hasTax: Value(hasTax ?? false),
      taxRate: Value(taxRate ?? -1),
      itemCompany: Value(itemCompany ?? ""),
      orignalCountry: Value(orignalCountry ?? ""),
      itemDescription: Value(itemDescription ?? ""),
      note: Value(note ?? ""),
      haseAlternated: Value(haseAlternated ?? false),
      newData: Value(newData ?? false),
    );
  }
}
