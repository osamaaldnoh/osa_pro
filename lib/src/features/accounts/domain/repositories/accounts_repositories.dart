import 'package:dartz/dartz.dart';
import 'package:osa_pro/src/core/error/failure.dart';
import 'package:osa_pro/src/features/accounts/domain/entities/accounts_entities.dart';

abstract class AccountsRepository {
  Future<Either<Failure, List<AccountsEntity>>> getAccounts();
}
