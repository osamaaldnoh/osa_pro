import 'package:dartz/dartz.dart';
import 'package:osa_pro/src/core/error/failure.dart';
import 'package:osa_pro/src/features/inventory_items/domain/entities/Inventory_document_data_entity.dart';

abstract class InventoryitemsRepository {
  // Future<User> getUser(String userId);
  Future<Either<Failure, List<InventoryDocumentDataEntity>>>
      getInventoryDocuments({required int docId});
  Future<Either<Failure, Unit>> addInventoryDocument(
      InventoryDocumentDataEntity inventoryDocumentDataEntity);

  Future<Either<Failure, Unit>> updateInventoryDocument(
      InventoryDocumentDataEntity inventoryDocumentDataEntity);
  Future<Either<Failure, Unit>> deleteInventoryDocument(int inventoryDocData);

  //
  Future<Either<Failure, Unit>> deleteDocuments(int docId);
}
