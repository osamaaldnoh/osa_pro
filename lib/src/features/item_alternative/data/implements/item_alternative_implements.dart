import 'package:dartz/dartz.dart';
import 'package:osa_pro/src/core/api/network_info.dart';
import 'package:osa_pro/src/core/error/failure.dart';
import 'package:osa_pro/src/features/item_alternative/data/models/item_alternative_models.dart';
import 'package:osa_pro/src/features/item_alternative/data/sources/item_alternative_local_data_sources.dart';
import 'package:osa_pro/src/features/item_alternative/domain/entities/item_alternative_entities.dart';
import '../sources/item_alternative_remote_data_sources.dart';
import '../../domain/repositories/item_alternative_repositories.dart';

class ItemAlternativeRepositoryImp implements ItemAlternativeRepository {
  final ItemAlternativeRemoteDataSource remoteDataSource;
  final ItemAlternativeLocalDataSources localDataSources;
  final NetWorkInfo netWorkInfo;
  ItemAlternativeRepositoryImp({
    required this.remoteDataSource,
    required this.localDataSources,
    required this.netWorkInfo,
  });

  @override
  Future<Either<Failure, List<ItemAlternativeEntity>>>
      getItemAlternatives() async {
    try {
      final localItemAlternatives =
          await localDataSources.getItemAlternatives();
      if (localItemAlternatives.isNotEmpty) {
        return Right(localItemAlternatives);
      } else {
        if (await netWorkInfo.isConnected) {
          List<ItemAlternativeModel> remoteItemAlternatives =
              await remoteDataSource.getItemAlternatives();

          for (var itemAlternative in remoteItemAlternatives) {
            localDataSources.saveItemAlternativeModel(itemAlternative);
          }
          return Right(remoteItemAlternatives);
        } else {
          return left(ServerFailure(message: "NetWork error!"));
        }
      }
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
