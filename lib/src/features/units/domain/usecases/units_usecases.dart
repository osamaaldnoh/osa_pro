import 'package:dartz/dartz.dart';
import 'package:osa_pro/src/core/error/failure.dart';
import 'package:osa_pro/src/features/units/domain/entities/units_entities.dart';

import '../repositories/units_repositories.dart';

class UnitsUseCase {
  final UnitsRepository repository;

  UnitsUseCase({required this.repository});

  Future<Either<Failure, List<UnitsEntity>>> call() async {
    return await repository.getAllUnits();
  }

  // Future<User> execute(String userId) async {
  //   return userRepository.getUser(userId);
  // }
}
