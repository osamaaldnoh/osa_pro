import 'package:dartz/dartz.dart';
import 'package:osa_pro/src/core/error/failure.dart';
import 'package:osa_pro/src/features/system_docs/domain/entities/entities.dart';

abstract class SystemDocsRepository {
  // Future<User> getUser(String userId);
  Future<Either<Failure, List<SystemDocsEntity>>> getAllSystemDocs();
}
