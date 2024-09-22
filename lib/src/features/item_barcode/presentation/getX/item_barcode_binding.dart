import 'package:get/get.dart';
import 'package:osa_pro/src/core/config/config.dart';
import 'package:osa_pro/src/features/item_barcode/data/implements/item_barcode_implements.dart';
import 'package:osa_pro/src/features/item_barcode/data/sources/item_barcode_local_data_sources.dart';
import 'package:osa_pro/src/features/item_barcode/data/sources/item_barcode_remote_data_sources.dart';
import 'package:osa_pro/src/features/item_barcode/domain/repositories/item_barcode_repositories.dart';
import 'package:osa_pro/src/features/item_barcode/domain/usecases/item_barcode_usecases.dart';
import 'item_barcode_controller.dart';

class ItemBarcodeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ItemBarcodeRemoteDataSource>(
        () => ItemBarcodeRemoteDataSourceImp(),
        fenix: true);
    Get.lazyPut<ItemBarcodeLocalDataSources>(
        () => ItemBarcodeLocalDataSourcesImp(),
        fenix: true);
    Get.lazyPut<ItemBarcodeRepository>(
        () => ItemBarcodeRepositoryImp(
              remoteDataSource: Get.find(),
              localDataSources: Get.find(),
              netWorkInfo: sl(),
            ),
        fenix: true);
    Get.lazyPut(
        () => ItemBarcodeUseCase(
              repository: Get.find(),
            ),
        fenix: true);
    Get.lazyPut(() => ItemBarcodeController(itemBarcodeUseCase: Get.find()),
        fenix: true);
  }
}
