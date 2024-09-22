import 'package:dartz/dartz.dart';

import 'package:osa_pro/src/core/error/failure.dart';
import 'package:osa_pro/src/features/store_inventory_document/data/models/doc_models.dart';
import 'package:osa_pro/src/features/store_inventory_document/data/sources/doc_local_data_sources.dart';
import 'package:osa_pro/src/features/store_inventory_document/domain/entities/doc_entities.dart';

import 'package:osa_pro/src/features/store_inventory_document/domain/entities/entities.dart';

import '../sources/sources.dart';
import '../../domain/repositories/repositories.dart';

class StoreInventoryDocumentRepositoryImp
    implements StoreInventoryDocumentRepository {
  final StoreInventoryDocumentRemoteDataSource remoteDataSource;
  final DocLocalDataSources docLocalDataSources;

  StoreInventoryDocumentRepositoryImp(
      {required this.remoteDataSource, required this.docLocalDataSources});

  @override
  Future<Either<Failure, List<StoreInventoryDocumentEntity>>>
      getInventoryDocument() {
    // TODO: implement getInventoryDocument
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> addDocument(DocEntities docEntities) async {
    try {
      final DocModels docModels = DocModels(
          docId: docEntities.docId,
          docDateTime: docEntities.docDateTime,
          branchId: docEntities.branchId,
          storeId: docEntities.storeId,
          docNote: docEntities.docNote,
          docLocation: docEntities.docLocation,
          userId: docEntities.userId,
          docStatus: docEntities.docStatus);
      await docLocalDataSources.saveDoc(docModels);
      return Right(unit);
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<DocEntities>>> getDocuments() async {
    try {
      final response = await docLocalDataSources.getDocs();
      return Right(response);
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteDocument(DocEntities docEntities) async {
    try {
      final DocModels docModels = DocModels(
          docId: docEntities.docId,
          docDateTime: docEntities.docDateTime,
          branchId: docEntities.branchId,
          storeId: docEntities.storeId,
          docNote: docEntities.docNote,
          docLocation: docEntities.docLocation,
          userId: docEntities.userId,
          docStatus: docEntities.docStatus);
      await docLocalDataSources.deleteDoc(docModels);
      return Right(unit);
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> editeDocument(DocEntities docEntities) async {
    try {
      final DocModels docModels = DocModels(
          docId: docEntities.docId,
          docDateTime: docEntities.docDateTime,
          branchId: docEntities.branchId,
          storeId: docEntities.storeId,
          docNote: docEntities.docNote,
          docLocation: docEntities.docLocation,
          userId: docEntities.userId,
          docStatus: docEntities.docStatus);
      await docLocalDataSources.editeDoc(docModels);
      return Right(unit);
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  // ... example ...
  //
  // Future<User> getUser(String userId) async {
  //     return remoteDataSource.getUser(userId);
  //   }
  // ...
}
