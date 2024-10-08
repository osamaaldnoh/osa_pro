import 'package:dartz/dartz.dart';
import 'package:osa_pro/src/core/error/failure.dart';
import 'package:osa_pro/src/features/branchinfo/domain/entities/entities.dart';

import '../repositories/repositories.dart';

class GetBranchinfoUseCase {
  final BranchinfoRepository repository;

  GetBranchinfoUseCase({required this.repository});

  // Future<User> execute(String userId) async {
  //   return userRepository.getUser(userId);
  // }

  Future<Either<Failure, BranchInfoEntity>> call() async {
    return repository.getBranchInfo();
  }
}
