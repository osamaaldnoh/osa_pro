import 'package:drift/drift.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:osa_pro/src/core/services/db/app_db.dart';
import 'package:osa_pro/src/features/system_docs/domain/entities/system_docs_entities.dart';
part 'system_docs_models.g.dart';

@JsonSerializable()
class SystemDocsModel extends SystemDocsEntity {
  // ...
  // A model is a more generic term and can represent structured data used within an application.
  const SystemDocsModel(
      {required super.id, required super.docName, required super.docType});

  // ...
  // fromJson
  factory SystemDocsModel.fromJson(Map<String, dynamic> json) =>
      _$SystemDocsModelFromJson(json);

  // ...
  // toJson
  Map<String, dynamic> toJson() => _$SystemDocsModelToJson(this);

  // toCompanion
  SystemDocsTableCompanion toCompanion() {
    return SystemDocsTableCompanion(
      id: Value(id),
      docName: Value(docName),
      docType: Value(docType),
    );
  }
}
