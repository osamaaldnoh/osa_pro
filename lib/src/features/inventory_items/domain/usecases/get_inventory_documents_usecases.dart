import 'package:dartz/dartz.dart';
import 'package:osa_pro/src/core/error/failure.dart';
import 'package:osa_pro/src/features/inventory_items/domain/entities/Inventory_document_data_entity.dart';

import '../repositories/repositories.dart';

class GetInventoryDocumentsUsecases {
  final InventoryitemsRepository repository;

  GetInventoryDocumentsUsecases({required this.repository});

  Future<Either<Failure, List<InventoryDocumentDataEntity>>> call(
      {required int docId}) async {
    return await repository.getInventoryDocuments(docId: docId);
  }
}
