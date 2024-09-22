import 'package:osa_pro/src/core/services/db/app_db.dart';
import 'package:osa_pro/src/features/store_inventory_document/data/models/doc_models.dart';

abstract class DocLocalDataSources {
  Future<List<DocModels>> getDocs();
  Future<DocModels?> getDoc(int docId);
  Future<int> saveDoc(DocModels docModel);
  Future<bool> editeDoc(DocModels docModel);
  Future<int> deleteDoc(DocModels docModel);
}

class DocLocalDataSourcesImp implements DocLocalDataSources {
  @override
  Future<DocModels?> getDoc(int docId) async {
    AppDatabase db = AppDatabase.instance();
    DocModels? docModel = await (db.select(db.docTable)
          ..where((tbl) => tbl.docId.equals(docId)))
        .getSingleOrNull();
    return docModel;
  }

  @override
  Future<List<DocModels>> getDocs() async {
    AppDatabase db = AppDatabase.instance();
    List<DocModels> docs = await (db.select(db.docTable).get());
    return docs;
  }

  @override
  Future<int> saveDoc(DocModels docModel) async {
    AppDatabase db = AppDatabase.instance();

    final response = await db.into(db.docTable).insert(docModel.toCompanion());
    return response;
  }

  @override
  Future<int> deleteDoc(DocModels docModel) async {
    print(docModel);
    AppDatabase db = AppDatabase.instance();

    final response = (await db.delete(db.docTable)
          ..where(
            (tbl) => tbl.docId.equals(docModel.docId!),
          ))
        .go();
    return response;
  }

  @override
  Future<bool> editeDoc(DocModels docModel) async {
    AppDatabase db = AppDatabase.instance();

    final response =
        (await db.update(db.docTable).replace(docModel.updatetoCompanion()));
    return response;
  }
}
