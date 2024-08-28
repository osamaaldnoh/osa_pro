import 'package:equatable/equatable.dart';

class SystemDocsEntity extends Equatable {
  final int id;
  final String docName;
  final int docType;

  const SystemDocsEntity(
      {required this.id, required this.docName, required this.docType});

  @override
  List<Object?> get props => [
        id,
        docName,
        docType,
      ];

  // ...
  // An entity represents a real-world object with a distinct identity.
}
