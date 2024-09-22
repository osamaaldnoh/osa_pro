import 'package:dartz/dartz.dart';
import 'package:osa_pro/src/core/error/failure.dart';
import 'package:osa_pro/src/features/stoperation/domain/entities/stoperation_entities.dart';

import '../repositories/stoperation_repositories.dart';

class StoperationUseCase {
  final StoperationRepository repository;

  StoperationUseCase({required this.repository});

  Future<Either<Failure, List<StoperationEntity>>> call() async {
    return await repository.getStoperations();
  }
}
