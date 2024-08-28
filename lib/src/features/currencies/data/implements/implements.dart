import 'package:dartz/dartz.dart';
import 'package:osa_pro/src/core/api/network_info.dart';

import 'package:osa_pro/src/core/error/failure.dart';
import 'package:osa_pro/src/features/currencies/data/sources/currencies_local_data_sources.dart';

import 'package:osa_pro/src/features/currencies/domain/entities/currencies_entities.dart';

import '../sources/currencies_remote_data_sources.dart';
import '../../domain/repositories/currencies_repositories.dart';

class CurrenciesRepositoryImp implements CurrenciesRepository {
  final CurrenciesRemoteDataSource remoteDataSource;
  final CurrenciesLocalDataSources localDataSources;
  final NetWorkInfo netWorkInfo;
  // final AppSharedPerGet _appSharedPerGet = sl();
  CurrenciesRepositoryImp({
    required this.remoteDataSource,
    required this.localDataSources,
    required this.netWorkInfo,
  });

  @override
  Future<Either<Failure, List<CurrenciesEntity>>> getAllCurrencies() async {
    try {
      //   final userId = _appSharedPerGet.getUserId;
      // final branchId = _appSharedPerGet.getbranchId;
      final currenciesList = await localDataSources.getAllCurrencies();
      if (currenciesList!.isNotEmpty) {
        //  final companyModel =
        //     await _companyLocalDataSources.getCompanyInfo(companyId: companyId);
        return Right(currenciesList);
      } else {
        // print('Currencies######### : ');
        if (await netWorkInfo.isConnected) {
          try {
            final remoteCurrencies = await remoteDataSource.getAllCurrencies();
            remoteCurrencies.forEach((currency) async {
              // print('Currencies######### : $currency');
              await localDataSources.saveCurrencies(currency);
            });
            // await _companyLocalDataSources.saveCompanyInfo(
            //     companyModel: remoteCompany);
            return Right(remoteCurrencies);
          } catch (e) {
            return Left(ServerFailure(message: e.toString()));
          }
        } else {
          return left(ServerFailure(message: "NetWork error!"));
        }
      }
    } catch (errorCache) {
      if (await netWorkInfo.isConnected) {
        try {
          final remoteCurrencies = await remoteDataSource.getAllCurrencies();
          remoteCurrencies.forEach((currency) async {
            print('Currencies : $currency');
            await localDataSources.saveCurrencies(currency);
          });
          // await _companyLocalDataSources.saveCompanyInfo(
          //     companyModel: remoteCompany);
          return Right(remoteCurrencies);
        } catch (e) {
          return Left(ServerFailure(message: e.toString()));
        }
      } else {
        return left(ServerFailure(message: "NetWork error!"));
      }
    }

    // throw UnimplementedError();
  }

  // ... example ...
  //
  // Future<User> getUser(String userId) async {
  //     return remoteDataSource.getUser(userId);
  //   }
  // ...
}
