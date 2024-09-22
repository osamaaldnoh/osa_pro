import 'package:dartz/dartz.dart';
import 'package:osa_pro/src/core/error/failure.dart';
import 'package:osa_pro/src/features/store_inventory_document/domain/entities/doc_entities.dart';
import 'package:osa_pro/src/features/store_inventory_document/domain/entities/entities.dart';

abstract class StoreInventoryDocumentRepository {
  Future<Either<Failure, List<StoreInventoryDocumentEntity>>>
      getInventoryDocument();

  Future<Either<Failure, List<DocEntities>>> getDocuments();
  Future<Either<Failure, Unit>> addDocument(DocEntities docEntities);
  Future<Either<Failure, Unit>> editeDocument(DocEntities docEntities);
  Future<Either<Failure, Unit>> deleteDocument(DocEntities docEntities);
}
