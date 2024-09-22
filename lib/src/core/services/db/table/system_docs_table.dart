import 'package:drift/drift.dart';
import 'package:osa_pro/src/features/system_docs/data/models/system_docs_models.dart';

@UseRowClass(SystemDocsModel)
class SystemDocsTable extends Table {
  IntColumn get id => integer()();
  TextColumn get docName => text()();
  IntColumn get docType => integer()();
}
