import 'package:dartz/dartz.dart';
import 'package:osa_pro/src/core/api/network_info.dart';

import 'package:osa_pro/src/core/error/failure.dart';

import 'package:osa_pro/src/features/items/domain/entities/entities.dart';

import '../sources/sources.dart';
import '../../domain/repositories/repositories.dart';

class ItemsRepositoryImp implements ItemsRepository {
  final ItemsRemoteDataSource remoteDataSource;
  final NetWorkInfo netWorkInfo;
  ItemsRepositoryImp(
      {required this.remoteDataSource, required this.netWorkInfo});

  @override
  Future<Either<Failure, List<ItemsEntity>>> getItems() async {
    if (await netWorkInfo.isConnected) {
      try {
        final remoteItems = await remoteDataSource.getItems();

        return Right(remoteItems);
      } catch (e) {
        return Left(ServerFailure(message: e.toString()));
      }
    } else {
      return Left(ServerFailure(message: "NetWork error!"));
    }
  }
}
