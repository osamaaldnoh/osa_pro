// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:osa_pro/src/core/api/network_info.dart';
import 'package:osa_pro/src/core/error/failure.dart';
import 'package:osa_pro/src/features/system_docs/data/sources/system_docs_local_data_sources.dart';
import 'package:osa_pro/src/features/system_docs/domain/entities/system_docs_entities.dart';

import '../../domain/repositories/system_docs_repositories.dart';
import '../sources/system_docs_remote_data_sources.dart';

class SystemDocsRepositoryImp implements SystemDocsRepository {
  final SystemDocsRemoteDataSource remoteDataSource;
  final SystemDocsLocalDataSources localDataSources;
  final NetWorkInfo netWorkInfo;
  SystemDocsRepositoryImp({
    required this.remoteDataSource,
    required this.localDataSources,
    required this.netWorkInfo,
  });

  @override
  Future<Either<Failure, List<SystemDocsEntity>>> getAllSystemDocs() async {
    try {
      final localSystemDocsList = await localDataSources.getAllSystemDocs();
      if (localSystemDocsList.isNotEmpty) {
        return Right(localSystemDocsList);
      } else {
        if (await netWorkInfo.isConnected) {
          try {
            final remoteSystemDocs = await remoteDataSource.getAllSystemDocs();

            return Right(remoteSystemDocs);
          } catch (e) {
            return Left(ServerFailure(message: e.toString()));
          }
        } else {
          return left(ServerFailure(message: "NetWork error!"));
        }
      }
    } catch (e) {
      if (await netWorkInfo.isConnected) {
        try {
          final remoteSystemDocs = await remoteDataSource.getAllSystemDocs();

          return Right(remoteSystemDocs);
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
