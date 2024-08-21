import 'package:dartz/dartz.dart';
import 'package:osa_pro/src/core/error/failure.dart';
import 'package:osa_pro/src/features/currencies/domain/entities/currencies_entities.dart';

abstract class CurrenciesRepository {
  // Future<User> getUser(String userId);
  Future<Either<Failure, List<CurrenciesEntity>>> getAllCurrencies();
}
