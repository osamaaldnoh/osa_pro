import 'package:dartz/dartz.dart';
import 'package:osa_pro/src/core/error/failure.dart';
import 'package:osa_pro/src/features/accounts/domain/entities/accounts_entities.dart';

import '../repositories/accounts_repositories.dart';

class AccountsUseCase {
  final AccountsRepository repository;

  AccountsUseCase({required this.repository});

  Future<Either<Failure, List<AccountsEntity>>> call() async {
    return await repository.getAccounts();
  }
}
