import 'package:dartz/dartz.dart';

import 'package:osa_pro/src/core/error/failure.dart';
import 'package:osa_pro/src/features/inventory_items/data/models/models.dart';
import 'package:osa_pro/src/features/inventory_items/data/sources/local_inventory_documents_data_source.dart';

import 'package:osa_pro/src/features/inventory_items/domain/entities/Inventory_document_data_entity.dart';

import '../sources/sources.dart';
import '../../domain/repositories/repositories.dart';

class InventoryitemsRepositoryImp implements InventoryitemsRepository {
  final InventoryitemsRemoteDataSource remoteDataSource;
  final LocalInventoryDocumentsDataSource localDataSource;
  InventoryitemsRepositoryImp(
      {required this.remoteDataSource, required this.localDataSource});

  @override
  Future<Either<Failure, Unit>> addInventoryDocument(
      InventoryDocumentDataEntity inventoryDocumentDataEntity) async {
    try {
      final inventoryDocumentDataModel = InventoryDocumentDataModel(
          id: inventoryDocumentDataEntity.id,
          docId: inventoryDocumentDataEntity.docId,
          itemId: inventoryDocumentDataEntity.itemId,
          itemGroupeId: inventoryDocumentDataEntity.itemGroupeId,
          unitId: inventoryDocumentDataEntity.unitId,
          quantity: inventoryDocumentDataEntity.quantity,
          expirDate: inventoryDocumentDataEntity.expirDate,
          note: inventoryDocumentDataEntity.note,
          difference: inventoryDocumentDataEntity.difference,
          number: inventoryDocumentDataEntity.number,
          itemBarcodeId: inventoryDocumentDataEntity.itemBarcodeId);

      await localDataSource.addInventoryDocument(inventoryDocumentDataModel);

      return const Right(unit);
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<InventoryDocumentDataEntity>>>
      getInventoryDocuments({required int docId}) async {
    try {
      final response =
          await localDataSource.getInventoryDocuments(docId: docId);

      return Right(response);
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> updateInventoryDocument(
      InventoryDocumentDataEntity inventoryDocumentDataEntity) async {
    try {
      final inventoryDocumentDataModel = InventoryDocumentDataModel(
          id: inventoryDocumentDataEntity.id,
          docId: inventoryDocumentDataEntity.docId,
          itemId: inventoryDocumentDataEntity.itemId,
          itemGroupeId: inventoryDocumentDataEntity.itemGroupeId,
          unitId: inventoryDocumentDataEntity.unitId,
          quantity: inventoryDocumentDataEntity.quantity,
          expirDate: inventoryDocumentDataEntity.expirDate,
          note: inventoryDocumentDataEntity.note,
          difference: inventoryDocumentDataEntity.difference,
          number: inventoryDocumentDataEntity.number,
          itemBarcodeId: inventoryDocumentDataEntity.itemBarcodeId);

      await localDataSource.updateInventoryDocument(inventoryDocumentDataModel);

      return const Right(unit);
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteInventoryDocument(
      int inventoryDocDataId) async {
    try {
      await localDataSource.deleteInventoryDocument(inventoryDocDataId);
      return Right(unit);
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteDocuments(int docId) async {
    try {
      await localDataSource.deleteDocuments(docId);
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
