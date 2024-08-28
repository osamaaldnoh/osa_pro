import 'package:dartz/dartz.dart';
import 'package:osa_pro/src/core/error/failure.dart';
import 'package:osa_pro/src/features/sales_man_settings/domain/entities/entities.dart';

abstract class SalesManSettingsRepository {
  // Future<User> getUser(String userId);
  Future<Either<Failure, SalesManSettingsEntity>> getSalesManSettings();
}
