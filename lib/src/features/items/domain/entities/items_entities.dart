import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

class ItemsEntity extends Equatable {
  // ...
  // An entity represents a real-world object with a distinct identity.
  int? id;
  @JsonKey(name: 'item_group_id')
  int? itemGroupId;
  @JsonKey(name: 'item_code')
  int? itemCode;
  String? name;
  @JsonKey(name: 'en_name')
  String? enName;
  int? type;
  @JsonKey(name: 'item_limit')
  int? itemLimit;
  @JsonKey(name: 'item_image')
  String? itemImage;
  @JsonKey(name: 'is_expire')
  bool? isExpire;
  @JsonKey(name: 'notify_before')
  int? notifyBefore;
  @JsonKey(name: 'free_quantity_allow')
  bool? freeQuantityAllow;
  @JsonKey(name: 'has_tax')
  bool? hasTax;
  @JsonKey(name: 'tax_rate')
  int? taxRate;
  @JsonKey(name: 'item_company')
  String? itemCompany;
  @JsonKey(name: 'orignal_country')
  String? orignalCountry;
  @JsonKey(name: 'item_description')
  String? itemDescription;
  String? note;
  @JsonKey(name: 'hase_alternated')
  bool? haseAlternated;
  bool? newData;

  ItemsEntity(
      {this.id,
      this.itemGroupId,
      this.itemCode,
      this.name,
      this.enName,
      this.type,
      this.itemLimit,
      this.itemImage,
      this.isExpire,
      this.notifyBefore,
      this.freeQuantityAllow,
      this.hasTax,
      this.taxRate,
      this.itemCompany,
      this.orignalCountry,
      this.itemDescription,
      this.note,
      this.haseAlternated,
      this.newData});

  @override
  List<Object?> get props => [
        id,
        itemGroupId,
        itemCode,
        name,
        enName,
        type,
        itemLimit,
        itemImage,
        isExpire,
        notifyBefore,
        freeQuantityAllow,
        hasTax,
        taxRate,
        itemCompany,
        orignalCountry,
        itemDescription,
        note,
        haseAlternated,
        newData
      ];
}
