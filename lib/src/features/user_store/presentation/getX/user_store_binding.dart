import 'package:get/get.dart';
import 'package:osa_pro/src/core/config/config.dart';
import 'package:osa_pro/src/features/user_store/data/implements/store_implements.dart';
import 'package:osa_pro/src/features/user_store/data/sources/store_local_data_sources.dart';
import 'package:osa_pro/src/features/user_store/data/sources/store_remote_data_sources.dart';
import 'package:osa_pro/src/features/user_store/domain/repositories/store_repositories.dart';
import 'package:osa_pro/src/features/user_store/domain/usecases/store_usecases.dart';
import 'user_store_controller.dart';

class UserStoreBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StoreRemoteDataSource>(() => StoreRemoteDataSourceImp(),
        fenix: true);

    Get.lazyPut<StoreLocalDataSources>(() => UserStoreLocalDataSourcesImp(),
        fenix: true);
    Get.lazyPut<StoreRepository>(
        () => StoreRepositoryImp(
            remoteDataSource: Get.find(),
            localDataSource: Get.find(),
            netWorkInfo: sl()),
        fenix: true);

    Get.lazyPut(() => StoreUseCase(repository: Get.find()), fenix: true);

    Get.lazyPut<UserStoreController>(
        () => UserStoreController(userStoreUseCase: Get.find()),
        fenix: true);
  }
}
