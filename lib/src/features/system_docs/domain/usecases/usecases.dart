import 'package:dartz/dartz.dart';
import 'package:osa_pro/src/core/error/failure.dart';
import 'package:osa_pro/src/features/system_docs/domain/entities/entities.dart';

import '../repositories/repositories.dart';

class SystemDocsUseCase {
  final SystemDocsRepository repository;

  SystemDocsUseCase({required this.repository});

  // Future<User> execute(String userId) async {
  //   return userRepository.getUser(userId);
  // }
  Future<Either<Failure, List<SystemDocsEntity>>> call() async {
    return await repository.getAllSystemDocs();
  }
}
