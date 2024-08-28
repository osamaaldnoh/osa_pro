import 'package:get/get.dart';
import 'package:osa_pro/src/core/config/config.dart';
import 'package:osa_pro/src/features/item_groups/data/implements/implements.dart';
import 'package:osa_pro/src/features/item_groups/data/sources/item_groups_local_data_sources.dart';
import 'package:osa_pro/src/features/item_groups/data/sources/item_groups_remote_data_sources.dart';
import 'package:osa_pro/src/features/item_groups/domain/repositories/repositories.dart';
import 'package:osa_pro/src/features/item_groups/domain/usecases/usecases.dart';
import 'item_groups_controller.dart';

class ItemGroupsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ItemGroupsRemoteDataSource>(
        () => ItemGroupsRemoteDataSourceImp(),
        fenix: true);
    Get.lazyPut<ItemGroupsLocalDataSources>(
        () => ItemGroupsLocalDataSourcesImp(),
        fenix: true);
    Get.lazyPut<ItemGroupsRepository>(
        () => ItemGroupsRepositoryImp(
            remoteDataSource: Get.find(),
            localDataSources: Get.find(),
            netWorkInfo: sl()),
        fenix: true);
    Get.lazyPut(() => ItemGroupsUseCase(repository: Get.find()), fenix: true);
    Get.lazyPut<ItemGroupsController>(
        () => ItemGroupsControllerImp(itemGroupsUseCase: Get.find()),
        fenix: true);
  }
}
