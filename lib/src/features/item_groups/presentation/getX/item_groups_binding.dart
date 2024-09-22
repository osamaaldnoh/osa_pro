import 'package:get/get.dart';
import 'package:osa_pro/src/core/config/config.dart';
import 'package:osa_pro/src/features/item_groups/data/implements/item_groups_implements.dart';
import 'package:osa_pro/src/features/item_groups/data/sources/item_groups_local_data_sources.dart';
import 'package:osa_pro/src/features/item_groups/data/sources/item_groups_remote_data_sources.dart';
import 'package:osa_pro/src/features/item_groups/domain/repositories/item_groups_repositories.dart';
import 'package:osa_pro/src/features/item_groups/domain/usecases/item_groups_get_items_group_where_item_usecases.dart';
import 'package:osa_pro/src/features/item_groups/domain/usecases/item_groups_usecases.dart';
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
    Get.lazyPut(() => GetItemsGroupWhereItemUsecases(repository: Get.find()),
        fenix: true);

    Get.lazyPut<ItemGroupsController>(
        () => ItemGroupsController(
            itemGroupsUseCase: Get.find(),
            getItemsGroupWhereItemUsecases: Get.find()),
        fenix: true);
  }
}
