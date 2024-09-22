import 'package:dartz/dartz.dart';
import 'package:osa_pro/src/core/error/failure.dart';
import 'package:osa_pro/src/features/store_inventory_document/domain/entities/entities.dart';

import '../repositories/repositories.dart';

class StoreInventoryDocumentUseCase {
  final StoreInventoryDocumentRepository repository;

  StoreInventoryDocumentUseCase({required this.repository});

  // Future<User> execute(String userId) async {
  //   return userRepository.getUser(userId);
  // }

  Future<Either<Failure, List<StoreInventoryDocumentEntity>>> call() async {
    return await repository.getInventoryDocument();
  }
}
