import 'package:dartz/dartz.dart';
import 'package:osa_pro/src/core/error/failure.dart';
import 'package:osa_pro/src/features/stoperation/domain/entities/stoperation_entities.dart';

import '../repositories/stoperation_repositories.dart';

class StoperationQuantityUseCase {
  final StoperationRepository repository;

  StoperationQuantityUseCase({required this.repository});

  Future<Either<Failure, List<StoperationEntity>>> call(
      {required int itemId, required int unitId, int? storeId}) async {
    return await repository.getStoperation(
        itemId: itemId, unitId: unitId, storeId: storeId);
  }
}
