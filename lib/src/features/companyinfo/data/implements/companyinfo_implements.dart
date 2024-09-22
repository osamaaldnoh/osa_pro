// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:osa_pro/src/core/config/config.dart';

import 'package:osa_pro/src/core/error/failure.dart';
import 'package:osa_pro/src/core/api/network_info.dart';
import 'package:osa_pro/src/core/services/shared/shared_per.dart';
import 'package:osa_pro/src/features/companyinfo/data/sources/company_local_data_sources.dart';
import 'package:osa_pro/src/features/companyinfo/domain/entities/company_entities.dart';

import '../../domain/repositories/company_repositories.dart';
import '../sources/company_remote_data_sources.dart';

class CompanyinfoRepositoryImp implements CompanyRepository {
  final CompanyRemoteDataSource remoteDataSource;
  final NetWorkInfo netWorkInfo;
  final SharedPreferencesService _sharedPreferencesService =
      SharedPreferencesService(sl());
  final CompanyLocalDataSources _companyLocalDataSources =
      CompanyLocalDataSourcesImp();
  CompanyinfoRepositoryImp({
    required this.remoteDataSource,
    required this.netWorkInfo,
  });

  @override
  Future<Either<Failure, CompanyEntity>> getCompanyInfo() async {
    try {
      final companyId =
          int.tryParse(_sharedPreferencesService.getString('companyid') ?? '');
      if (companyId != null) {
        final companyModel =
            await _companyLocalDataSources.getCompanyInfo(companyId: companyId);
        return Right(companyModel);
      } else {
        if (await netWorkInfo.isConnected) {
          try {
            final remoteCompany = await remoteDataSource.getCompanyInfo();
            await _companyLocalDataSources.saveCompanyInfo(
                companyModel: remoteCompany);
            return Right(remoteCompany);
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
          final remoteCompany = await remoteDataSource.getCompanyInfo();
          await _companyLocalDataSources.saveCompanyInfo(
              companyModel: remoteCompany);
          return Right(remoteCompany);
        } catch (e) {
          return Left(ServerFailure(message: e.toString()));
        }
      } else {
        return left(ServerFailure(message: "NetWork error!"));
      }
    }
  }

  // ... example ...
  //
  // Future<User> getUser(String userId) async {
  //     return remoteDataSource.getUser(userId);
  //   }
  // ...
}
