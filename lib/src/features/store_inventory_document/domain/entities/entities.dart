// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:equatable/equatable.dart';

class StoreInventoryDocumentEntity extends Equatable {
  final int inventoryDocId;
  final String inventoryDocDateTime;
  final String inventoryDocData;
  final String inventoryDocName;
  final String inventoryDocNameStore;
  final String inventoryDocLocation;
  final int categoryInventoryCount;

  StoreInventoryDocumentEntity({
    required this.inventoryDocId,
    required this.inventoryDocDateTime,
    required this.inventoryDocData,
    required this.inventoryDocName,
    required this.inventoryDocNameStore,
    required this.inventoryDocLocation,
    required this.categoryInventoryCount,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        inventoryDocId,
        inventoryDocDateTime,
        inventoryDocData,
        inventoryDocName,
        inventoryDocNameStore,
        inventoryDocLocation,
        categoryInventoryCount,
      ];
}
