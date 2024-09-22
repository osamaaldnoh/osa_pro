import 'package:dartz/dartz.dart';
import 'package:osa_pro/src/core/error/failure.dart';
import 'package:osa_pro/src/features/inventory_items/domain/entities/Inventory_document_data_entity.dart';
import 'package:osa_pro/src/features/inventory_items/domain/repositories/repositories.dart';

class UpdateInventoryDocumentsUsecases {
  final InventoryitemsRepository repository;

  UpdateInventoryDocumentsUsecases({required this.repository});

  Future<Either<Failure, Unit>> call(
      InventoryDocumentDataEntity inventoryDocumentDataEntity) async {
    return await repository
        .updateInventoryDocument(inventoryDocumentDataEntity);
  }
}
