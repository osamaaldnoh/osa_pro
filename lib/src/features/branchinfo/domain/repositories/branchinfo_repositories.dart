import 'package:dartz/dartz.dart';
import 'package:osa_pro/src/core/error/failure.dart';
import 'package:osa_pro/src/features/branchinfo/domain/entities/branchinfo_entities.dart';

abstract class BranchinfoRepository {
  // Future<User> getUser(String userId);
  Future<Either<Failure, BranchInfoEntity>> getBranchInfo();
}
