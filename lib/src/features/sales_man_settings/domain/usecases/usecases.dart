import 'package:dartz/dartz.dart';
import 'package:osa_pro/src/core/error/failure.dart';
import 'package:osa_pro/src/features/sales_man_settings/domain/entities/entities.dart';

import '../repositories/repositories.dart';

class SalesManSettingsUseCase {
  final SalesManSettingsRepository repository;

  SalesManSettingsUseCase({required this.repository});

  Future<Either<Failure, SalesManSettingsEntity>> call() async {
    return await repository.getSalesManSettings();
  }
}
