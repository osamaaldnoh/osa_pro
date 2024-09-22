import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

class ItemBarcodeEntity extends Equatable {
  // ...
  // An entity represents a real-world object with a distinct identity.
  final int id;
  @JsonKey(name: 'item_id')
  final int itemId;
  @JsonKey(name: 'item_barcode')
  final String itemBarcode;

  ItemBarcodeEntity(
      {required this.id, required this.itemId, required this.itemBarcode});

  @override
  List<Object?> get props => [
        id,
        itemId,
        itemBarcode,
      ];
}
