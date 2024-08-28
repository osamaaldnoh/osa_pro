import 'package:get/get.dart';
import 'package:osa_pro/src/core/config/config.dart';
import 'package:osa_pro/src/features/items/data/implements/implements.dart';
import 'package:osa_pro/src/features/items/data/sources/sources.dart';
import 'package:osa_pro/src/features/items/domain/repositories/repositories.dart';
import 'package:osa_pro/src/features/items/domain/usecases/usecases.dart';
import 'items_controller.dart';

class ItemsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ItemsRemoteDataSource>(() => ItemsRemoteDataSourceImp(),
        fenix: true);
    Get.lazyPut<ItemsRepository>(
        () =>
            ItemsRepositoryImp(remoteDataSource: Get.find(), netWorkInfo: sl()),
        fenix: true);
    Get.lazyPut(() => ItemsUseCase(repository: Get.find()), fenix: true);
    Get.lazyPut<ItemsController>(
        () => ItemsControllerImp(itemsUseCase: Get.find()),
        fenix: true);
  }
}
