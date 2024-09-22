import 'package:get/get.dart';
import 'package:osa_pro/src/core/config/config.dart';
import 'package:osa_pro/src/features/stoperation/data/implements/stoperation_implements.dart';
import 'package:osa_pro/src/features/stoperation/data/sources/stoperation_local_data_sources.dart';
import 'package:osa_pro/src/features/stoperation/data/sources/stoperation_remote_data_sources.dart';
import 'package:osa_pro/src/features/stoperation/domain/repositories/stoperation_repositories.dart';
import 'package:osa_pro/src/features/stoperation/domain/usecases/stoperation_quantity_usecases.dart';
import 'package:osa_pro/src/features/stoperation/domain/usecases/stoperation_usecases.dart';
import 'stoperation_controller.dart';

class StoperationBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StoperationRemoteDataSource>(
        () => StoperationRemoteDataSourceImp(),
        fenix: true);

    Get.lazyPut<StoperationLocalDataSources>(
        () => StoperationLocalDataSourcesImp(),
        fenix: true);
    Get.lazyPut<StoperationRepository>(
        () => StoperationRepositoryImp(
            remoteDataSource: Get.find(),
            localDataSources: Get.find(),
            netWorkInfo: sl()),
        fenix: true);
    Get.lazyPut(() => StoperationUseCase(repository: Get.find()), fenix: true);
    Get.lazyPut(() => StoperationQuantityUseCase(repository: Get.find()),
        fenix: true);
    Get.lazyPut(
        () => StoperationController(
            stoperationUseCase: Get.find(),
            stoperationQuantityUseCase: Get.find()),
        fenix: true);
  }
}
