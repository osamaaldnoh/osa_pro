import 'package:dartz/dartz.dart';
import 'package:osa_pro/src/core/error/failure.dart';
import 'package:osa_pro/src/features/units/domain/entities/units_entities.dart';

abstract class UnitsRepository {
  // Future<User> getUser(String userId);
  Future<Either<Failure, List<UnitsEntity>>> getAllUnits();
}
