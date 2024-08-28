import 'package:get/get.dart';
import 'package:osa_pro/src/core/config/config.dart';
import 'package:osa_pro/src/features/user_store/data/implements/implements.dart';
import 'package:osa_pro/src/features/user_store/data/sources/user_store_local_data_sources.dart';
import 'package:osa_pro/src/features/user_store/data/sources/user_store_remote_data_sources.dart';
import 'package:osa_pro/src/features/user_store/domain/repositories/repositories.dart';
import 'package:osa_pro/src/features/user_store/domain/usecases/usecases.dart';
import 'user_store_controller.dart';

class UserStoreBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserStoreRemoteDataSource>(() => UserStoreRemoteDataSourceImp(),
        fenix: true);

    Get.lazyPut<UserStoreLocalDataSources>(() => UserStoreLocalDataSourcesImp(),
        fenix: true);
    Get.lazyPut<UserStoreRepository>(
        () => UserStoreRepositoryImp(
            remoteDataSource: Get.find(),
            localDataSource: Get.find(),
            netWorkInfo: sl()),
        fenix: true);

    Get.lazyPut(() => UserStoreUseCase(repository: Get.find()), fenix: true);

    Get.lazyPut<UserStoreController>(
        () => UserStoreControllerImp(userStoreUseCase: Get.find()),
        fenix: true);
  }
}
