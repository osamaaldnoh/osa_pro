import 'package:dartz/dartz.dart';
import 'package:osa_pro/src/core/api/network_info.dart';

import 'package:osa_pro/src/core/error/failure.dart';
import 'package:osa_pro/src/features/item_barcode/data/sources/item_barcode_local_data_sources.dart';

import 'package:osa_pro/src/features/item_barcode/domain/entities/item_barcode_entities.dart';

import '../sources/item_barcode_remote_data_sources.dart';
import '../../domain/repositories/item_barcode_repositories.dart';

class ItemBarcodeRepositoryImp implements ItemBarcodeRepository {
  final ItemBarcodeRemoteDataSource remoteDataSource;
  final ItemBarcodeLocalDataSources localDataSources;
  final NetWorkInfo netWorkInfo;
  ItemBarcodeRepositoryImp(
      {required this.remoteDataSource,
      required this.localDataSources,
      required this.netWorkInfo});

  @override
  Future<Either<Failure, List<ItemBarcodeEntity>>> getItemBarcodes() async {
    try {
      final localItemBarcodes = await localDataSources.getItemBarcodes();
      if (localItemBarcodes.isNotEmpty) {
        return Right(localItemBarcodes);
      } else {
        if (await netWorkInfo.isConnected) {
          final remoteItemBarcodes = await remoteDataSource.getItemBarcodes();
          remoteItemBarcodes.forEach((itemBarcode) {
            localDataSources.saveItemBarcode(itemBarcode);
          });

          return Right(remoteItemBarcodes);
        } else {
          return left(ServerFailure(message: "NetWork error!"));
        }
      }
    } catch (e) {
      if (await netWorkInfo.isConnected) {
        final remoteItemBarcodes = await remoteDataSource.getItemBarcodes();
        remoteItemBarcodes.forEach((itemBarcode) {
          localDataSources.saveItemBarcode(itemBarcode);
        });

        return Right(remoteItemBarcodes);
      } else {
        return left(ServerFailure(message: "NetWork error!"));
      }
    }
  }
}
