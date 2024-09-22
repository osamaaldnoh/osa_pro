import 'package:dartz/dartz.dart';
import 'package:osa_pro/src/core/error/failure.dart';
import 'package:osa_pro/src/features/store_inventory_document/domain/entities/doc_entities.dart';
import 'package:osa_pro/src/features/store_inventory_document/domain/entities/entities.dart';

import '../repositories/repositories.dart';

class GetDocsUsecases {
  final StoreInventoryDocumentRepository repository;

  GetDocsUsecases({required this.repository});

  // Future<User> execute(String userId) async {
  //   return userRepository.getUser(userId);
  // }

  Future<Either<Failure, List<DocEntities>>> call() async {
    return await repository.getDocuments();
  }
}
