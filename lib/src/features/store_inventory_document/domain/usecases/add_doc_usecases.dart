import 'package:dartz/dartz.dart';
import 'package:osa_pro/src/core/error/failure.dart';
import 'package:osa_pro/src/features/store_inventory_document/domain/entities/doc_entities.dart';
import 'package:osa_pro/src/features/store_inventory_document/domain/entities/entities.dart';

import '../repositories/repositories.dart';

class AddDocUsecases {
  final StoreInventoryDocumentRepository repository;

  AddDocUsecases({required this.repository});

  // Future<User> execute(String userId) async {
  //   return userRepository.getUser(userId);
  // }

  Future<Either<Failure, Unit>> call(DocEntities docEntities) async {
    return await repository.addDocument(docEntities);
  }
}
