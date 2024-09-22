import 'package:osa_pro/src/core/services/db/app_db.dart';
import 'package:osa_pro/src/features/system_docs/data/models/system_docs_models.dart';

abstract class SystemDocsLocalDataSources {
  Future<List<SystemDocsModel>> getAllSystemDocs();
  Future<SystemDocsModel?> getSystemDocs(int systemDocsId);
  Future<int> saveSystemDocs(SystemDocsModel systemDocsModel);
}

class SystemDocsLocalDataSourcesImp implements SystemDocsLocalDataSources {
  @override
  Future<List<SystemDocsModel>> getAllSystemDocs() async {
    AppDatabase appDb = AppDatabase.instance();

    List<SystemDocsModel> systemDocsList =
        await (appDb.select(appDb.systemDocsTable).get());

    return systemDocsList;
  }

  @override
  Future<int> saveSystemDocs(SystemDocsModel systemDocsModel) async {
    AppDatabase appDb = AppDatabase.instance();

    final result = await appDb
        .into(appDb.systemDocsTable)
        .insert(systemDocsModel.toCompanion());

    return result;
  }

  @override
  Future<SystemDocsModel?> getSystemDocs(int systemDocsId) async {
    AppDatabase appDb = AppDatabase.instance();

    SystemDocsModel? systemDocsModel =
        await (appDb.select(appDb.systemDocsTable)
              ..where((tbl) => tbl.id.equals(systemDocsId)))
            .getSingleOrNull();
    return systemDocsModel;
  }
}
