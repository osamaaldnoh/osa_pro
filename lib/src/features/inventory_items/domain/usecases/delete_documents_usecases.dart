import 'package:dartz/dartz.dart';
import 'package:osa_pro/src/core/error/failure.dart';
import 'package:osa_pro/src/features/inventory_items/domain/entities/Inventory_document_data_entity.dart';

import '../repositories/repositories.dart';

class DeleteDocumentsUsecases {
  final InventoryitemsRepository repository;

  DeleteDocumentsUsecases({required this.repository});

  Future<Either<Failure, Unit>> call(int docId) async {
    return await repository.deleteDocuments(docId);
  }
}
