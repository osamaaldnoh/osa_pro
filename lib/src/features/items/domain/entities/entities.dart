import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

class ItemsEntity extends Equatable {
  // ...
  // An entity represents a real-world object with a distinct identity.
  final int id;
  @JsonKey(name: 'item_group_id')
  final int itemGroupId;
  @JsonKey(name: 'item_code')
  final int itemCode;
  final String name;
  @JsonKey(name: 'en_name')
  final String enName;
  final int type;
  @JsonKey(name: 'item_limit')
  final int itemLimit;
  @JsonKey(name: 'item_image')
  final String itemImage;
  @JsonKey(name: 'is_expire')
  final bool isExpire;
  @JsonKey(name: 'notify_before')
  final int notifyBefore;
  @JsonKey(name: 'free_quantity_allow')
  final bool freeQuantityAllow;
  @JsonKey(name: 'has_tax')
  final bool hasTax;
  @JsonKey(name: 'tax_rate')
  final int taxRate;
  @JsonKey(name: 'item_company')
  final String itemCompany;
  @JsonKey(name: 'orignal_country')
  final String orignalCountry;
  @JsonKey(name: 'item_description')
  final String itemDescription;
  final String note;
  @JsonKey(name: 'hase_alternated')
  final bool haseAlternated;
  final bool newData;

  const ItemsEntity(
      {required this.id,
      required this.itemGroupId,
      required this.itemCode,
      required this.name,
      required this.enName,
      required this.type,
      required this.itemLimit,
      required this.itemImage,
      required this.isExpire,
      required this.notifyBefore,
      required this.freeQuantityAllow,
      required this.hasTax,
      required this.taxRate,
      required this.itemCompany,
      required this.orignalCountry,
      required this.itemDescription,
      required this.note,
      required this.haseAlternated,
      required this.newData});

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
