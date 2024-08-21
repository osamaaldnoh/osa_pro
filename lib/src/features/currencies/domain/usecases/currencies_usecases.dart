import 'package:dartz/dartz.dart';
import 'package:osa_pro/src/core/error/failure.dart';
import 'package:osa_pro/src/features/currencies/domain/entities/currencies_entities.dart';

import '../repositories/currencies_repositories.dart';

class CurrenciesUseCase {
  final CurrenciesRepository repository;

  CurrenciesUseCase({required this.repository});

  // Future<User> execute(String userId) async {
  //   return userRepository.getUser(userId);
  // }

  Future<Either<Failure, List<CurrenciesEntity>>> call() async {
    return await repository.getAllCurrencies();
  }
}
