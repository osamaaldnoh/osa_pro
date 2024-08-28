import 'package:json_annotation/json_annotation.dart';
import 'package:osa_pro/src/features/items/domain/entities/entities.dart';
part 'models.g.dart';

@JsonSerializable()
class ItemsModel extends ItemsEntity {
  // ...
  // A model is a more generic term and can represent structured data used within an application.
  const ItemsModel(
      {required super.id,
      required super.itemGroupId,
      required super.itemCode,
      required super.name,
      required super.enName,
      required super.type,
      required super.itemLimit,
      required super.itemImage,
      required super.isExpire,
      required super.notifyBefore,
      required super.freeQuantityAllow,
      required super.hasTax,
      required super.taxRate,
      required super.itemCompany,
      required super.orignalCountry,
      required super.itemDescription,
      required super.note,
      required super.haseAlternated,
      required super.newData});

  // ...
  // fromJson
  factory ItemsModel.fromJson(Map<String, dynamic> json) =>
      _$ItemsModelFromJson(json);
  // ...
  // toJson
  Map<String, dynamic> toJson() => _$ItemsModelToJson(this);
}
