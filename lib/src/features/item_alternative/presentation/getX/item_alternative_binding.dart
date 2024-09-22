import 'package:get/get.dart';
import 'package:osa_pro/src/core/config/config.dart';
import 'package:osa_pro/src/features/item_alternative/data/implements/item_alternative_implements.dart';
import 'package:osa_pro/src/features/item_alternative/data/sources/item_alternative_local_data_sources.dart';
import 'package:osa_pro/src/features/item_alternative/data/sources/item_alternative_remote_data_sources.dart';
import 'package:osa_pro/src/features/item_alternative/domain/repositories/item_alternative_repositories.dart';
import 'package:osa_pro/src/features/item_alternative/domain/usecases/item_alternative_usecases.dart';
import 'item_alternative_controller.dart';

class ItemAlternativeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ItemAlternativeRemoteDataSource>(
        () => ItemAlternativeRemoteDataSourcesImp(),
        fenix: true);

    Get.lazyPut<ItemAlternativeLocalDataSources>(
        () => ItemAlternativeLocalDataSourcesImp(),
        fenix: true);
    Get.lazyPut<ItemAlternativeRepository>(
        () => ItemAlternativeRepositoryImp(
            remoteDataSource: Get.find(),
            localDataSources: Get.find(),
            netWorkInfo: sl()),
        fenix: true);
    Get.lazyPut(() => ItemAlternativeUseCase(repository: Get.find()),
        fenix: true);
    Get.lazyPut<ItemAlternativeController>(
        () => ItemAlternativeControllerImp(itemAlternativeUseCase: Get.find()),
        fenix: true);
  }
}
