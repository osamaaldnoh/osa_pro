import 'package:dartz/dartz.dart';
import 'package:osa_pro/src/core/api/network_info.dart';

import 'package:osa_pro/src/core/error/failure.dart';
import 'package:osa_pro/src/features/accounts/data/sources/accounts_local_data_sources.dart';

import 'package:osa_pro/src/features/accounts/domain/entities/accounts_entities.dart';

import '../sources/accounts_remote_data_sources.dart';
import '../../domain/repositories/accounts_repositories.dart';

class AccountsRepositoryImp implements AccountsRepository {
  final AccountsRemoteDataSource remoteDataSource;
  final AccountsLocalDataSources localDataSources;
  final NetWorkInfo netWorkInfo;
  AccountsRepositoryImp(
      {required this.remoteDataSource,
      required this.localDataSources,
      required this.netWorkInfo});

  @override
  Future<Either<Failure, List<AccountsEntity>>> getAccounts() async {
    try {
      final localAccounts = await localDataSources.getAccounts();
      if (localAccounts.isNotEmpty) {
        return Right(localAccounts);
      } else {
        if (await netWorkInfo.isConnected) {
          try {
            final remoteAccounts = await remoteDataSource.getAccounts();
            remoteAccounts.forEach((account) {
              localDataSources.saveAccount(account);
            });

            return Right(remoteAccounts);
          } catch (e) {
            return Left(ServerFailure(message: e.toString()));
          }
        } else {
          return left(ServerFailure(message: "NetWork error!"));
        }
      }
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  // ... example ...
  //
  // Future<User> getUser(String userId) async {
  //     return remoteDataSource.getUser(userId);
  //   }
  // ...
}
