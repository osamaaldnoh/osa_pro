import 'package:drift/drift.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:osa_pro/src/core/services/db/app_db.dart';
import 'package:osa_pro/src/features/store_inventory_document/domain/entities/doc_entities.dart';
part 'doc_models.g.dart';

@JsonSerializable()
class DocModels extends DocEntities {
  DocModels(
      {required super.docId,
      required super.docDateTime,
      required super.branchId,
      required super.storeId,
      required super.docNote,
      required super.docLocation,
      required super.userId,
      required super.docStatus});

  //  FromJson
  factory DocModels.fromJson(Map<String, dynamic> json) =>
      _$DocModelsFromJson(json);

  // ToJson
  Map<String, dynamic> toJson() => _$DocModelsToJson(this);

  DocTableCompanion toCompanion() {
    return DocTableCompanion(
      // docId: Value(docId ?? -1),
      docDateTime: Value(docDateTime ?? ''),
      branchId: Value(branchId ?? -1),
      storeId: Value(storeId ?? -1),
      docNote: Value(docNote ?? ''),
      docLocation: Value(docLocation ?? ''),
      userId: Value(userId ?? -1),
      docStatus: Value(docStatus ?? -1),
    );
  }

  DocTableCompanion updatetoCompanion() {
    return DocTableCompanion(
      docId: Value(docId ?? -1),
      docDateTime: Value(docDateTime ?? ''),
      branchId: Value(branchId ?? -1),
      storeId: Value(storeId ?? -1),
      docNote: Value(docNote ?? ''),
      docLocation: Value(docLocation ?? ''),
      userId: Value(userId ?? -1),
      docStatus: Value(docStatus ?? -1),
    );
  }
}
