import 'package:dartz/dartz.dart';
import 'package:osa_pro/src/core/error/failure.dart';
import 'package:osa_pro/src/features/stoperation/domain/entities/stoperation_entities.dart';

abstract class StoperationRepository {
  Future<Either<Failure, List<StoperationEntity>>> getStoperations();
  Future<Either<Failure, List<StoperationEntity>>> getStoperation(
      {required int itemId, required int unitId, int? storeId});
}
