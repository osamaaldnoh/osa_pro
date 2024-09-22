// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:equatable/equatable.dart';

class DocEntities extends Equatable {
  int? docId;
  String? docDateTime;
  int? branchId;
  int? storeId;
  String? docNote;
  String? docLocation;
  int? userId;
  int? docStatus;

  DocEntities({
    required this.docId,
    required this.docDateTime,
    required this.branchId,
    required this.storeId,
    required this.docNote,
    required this.docLocation,
    required this.userId,
    required this.docStatus,
  });

  @override
  List<Object?> get props => [
        docId,
        docDateTime,
        branchId,
        storeId,
        docNote,
        docLocation,
        userId,
        docStatus
      ];
}
