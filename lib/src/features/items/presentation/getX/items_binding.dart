import 'package:get/get.dart';
import 'package:osa_pro/src/core/config/config.dart';
import 'package:osa_pro/src/features/items/data/implements/items_implements.dart';
import 'package:osa_pro/src/features/items/data/sources/items_local_data_sources.dart';
import 'package:osa_pro/src/features/items/data/sources/items_remote_data_sources.dart';
import 'package:osa_pro/src/features/items/domain/repositories/items_repositories.dart';
import 'package:osa_pro/src/features/items/domain/usecases/items_usecases.dart';
import 'items_controller.dart';

class ItemsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ItemsRemoteDataSource>(() => ItemsRemoteDataSourceImp(),
        fenix: true);
    Get.lazyPut<ItemsLocalDataSources>(() => ItemsLocalDataSourcesImp(),
        fenix: true);
    Get.lazyPut<ItemsRepository>(
        () => ItemsRepositoryImp(
            remoteDataSource: Get.find(),
            localDataSources: Get.find(),
            netWorkInfo: sl()),
        fenix: true);
    Get.lazyPut(() => ItemsUseCase(repository: Get.find()), fenix: true);
    Get.lazyPut<ItemsController>(
        () => ItemsController(itemsUseCase: Get.find()),
        fenix: true);
  }
}
