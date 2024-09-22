// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class InventoryDocumentDataEntity extends Equatable {
  int? id;
  int? docId;
  int? itemId;
  int? itemGroupeId;
  int? unitId;
  int? quantity;
  String? expirDate;
  String? note;
  int? number;
  int? difference;
  int? itemBarcodeId;
  InventoryDocumentDataEntity({
    this.id,
    this.docId,
    this.itemId,
    this.itemGroupeId,
    this.unitId,
    this.quantity,
    this.expirDate,
    this.note,
    this.number,
    this.difference,
    this.itemBarcodeId,
  });

  @override
  List<Object?> get props => [
        id,
        docId,
        itemId,
        itemGroupeId,
        unitId,
        quantity,
        expirDate,
        note,
        number,
        difference,
        itemBarcodeId,
      ];
}
