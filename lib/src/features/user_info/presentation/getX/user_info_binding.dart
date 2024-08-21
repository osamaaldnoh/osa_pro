import 'package:get/get.dart';
import 'package:osa_pro/src/core/config/config.dart';
import 'package:osa_pro/src/features/user_info/data/implements/implements.dart';
import 'package:osa_pro/src/features/user_info/data/sources/user_info_local_data_sources.dart';
import 'package:osa_pro/src/features/user_info/data/sources/user_info_remote_data_sources.dart';
import 'package:osa_pro/src/features/user_info/domain/repositories/repositories.dart';
import 'package:osa_pro/src/features/user_info/domain/usecases/usecases.dart';
import 'user_info_controller.dart';

class UserInfoBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserInfoLocalDataSources>(
      () => UserInfoLocalDataSourcesImp(),
    );
    Get.lazyPut<UserInfoRemoteDataSource>(
      () => UserInfoRemoteDataSourceImp(),
    );

    Get.lazyPut<UserInfoRepository>(
        () => UserInfoRepositoryImp(
            remoteDataSource: Get.find(),
            netWorkInfo: sl(),
            userInfoLocalDataSources: Get.find()),
        fenix: true);
    Get.lazyPut(() => UserInfoUseCase(repository: Get.find()));
    Get.lazyPut(() => UserInfoController(userInfoUseCase: Get.find()),
        fenix: true);
  }
}
