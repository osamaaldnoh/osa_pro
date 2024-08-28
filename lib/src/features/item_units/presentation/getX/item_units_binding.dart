import 'package:get/get.dart';
import 'package:osa_pro/src/core/config/config.dart';
import 'package:osa_pro/src/features/item_units/data/implements/implements.dart';
import 'package:osa_pro/src/features/item_units/data/sources/item_units_local_data_sources.dart';
import 'package:osa_pro/src/features/item_units/data/sources/item_units_remote_data_sources.dart';
import 'package:osa_pro/src/features/item_units/domain/repositories/repositories.dart';
import 'package:osa_pro/src/features/item_units/domain/usecases/usecases.dart';
import 'item_units_controller.dart';

class ItemUnitsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ItemUnitsRemoteDataSource>(() => ItemUnitsRemoteDataSourceImp(),
        fenix: true);
    Get.lazyPut<ItemUnitsLocalDataSources>(() => ItemUnitsLocalDataSourcesImp(),
        fenix: true);
    Get.lazyPut<ItemUnitsRepository>(
        () => ItemUnitsRepositoryImp(
            remoteDataSource: Get.find(),
            localDataSources: Get.find(),
            netWorkInfo: sl()),
        fenix: true);
    Get.lazyPut(() => ItemUnitsUseCase(repository: Get.find()), fenix: true);

    Get.lazyPut<ItemUnitsController>(
        () => ItemUnitsControllerImp(itemUnitsUseCase: Get.find()),
        fenix: true);
  }
}
