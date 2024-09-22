import 'package:dartz/dartz.dart';
import 'package:osa_pro/src/core/services/db/app_db.dart';
import 'package:osa_pro/src/features/inventory_items/data/models/models.dart';

abstract class LocalInventoryDocumentsDataSource {
  Future<List<InventoryDocumentDataModel>> getInventoryDocuments(
      {required int docId});
  Future<int> addInventoryDocument(
      InventoryDocumentDataModel inventoryDocumentDataModel);
  Future<bool> updateInventoryDocument(
      InventoryDocumentDataModel inventoryDocumentDataModel);

  Future<int> deleteInventoryDocument(int inventoryDocDataId);
//
  Future<int> deleteDocuments(int docId);
}

class LocalInventoryDocumentsDataSourceImp
    implements LocalInventoryDocumentsDataSource {
  @override
  Future<int> addInventoryDocument(
      InventoryDocumentDataModel inventoryDocumentDataModel) async {
    AppDatabase db = AppDatabase.instance();
    final response = await db
        .into(db.inventoryDocDataTable)
        .insert(inventoryDocumentDataModel.toCompanion());
    return response;
  }

  @override
  Future<List<InventoryDocumentDataModel>> getInventoryDocuments(
      {required int docId}) async {
    AppDatabase db = AppDatabase.instance();
    List<InventoryDocumentDataModel> response =
        await (db.select(db.inventoryDocDataTable)
              ..where((tbl) => tbl.docId.equals(docId)))
            .get();

    return response;
  }

  @override
  Future<bool> updateInventoryDocument(
      InventoryDocumentDataModel inventoryDocumentDataModel) async {
    AppDatabase db = AppDatabase.instance();
    final response = await db
        .update(db.inventoryDocDataTable)
        .replace(inventoryDocumentDataModel.updatetoCompanion());
    return response;
  }

  @override
  Future<int> deleteInventoryDocument(int inventoryDocDataId) async {
    AppDatabase db = AppDatabase.instance();
    final response = (db.delete(db.inventoryDocDataTable)
          ..where((tbl) => tbl.id.equals(inventoryDocDataId)))
        .go();
    return response;
  }

  @override
  Future<int> deleteDocuments(int docId) async {
    AppDatabase db = AppDatabase.instance();
    final response = (db.delete(db.inventoryDocDataTable)
          ..where((tbl) => tbl.docId.equals(docId)))
        .go();
    return response;
  }
}
