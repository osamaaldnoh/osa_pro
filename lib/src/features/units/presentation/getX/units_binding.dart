import 'package:get/get.dart';
import 'package:osa_pro/src/core/config/config.dart';
import 'package:osa_pro/src/features/units/data/implements/units_implements.dart';
import 'package:osa_pro/src/features/units/data/sources/units_local_data_sources.dart';
import 'package:osa_pro/src/features/units/data/sources/units_remote_data_sources.dart';
import 'package:osa_pro/src/features/units/domain/repositories/units_repositories.dart';
import 'package:osa_pro/src/features/units/domain/usecases/units_usecases.dart';
import 'units_controller.dart';

class UnitsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UnitsRemoteDataSource>(() => UnitsRemoteDataSourceImp(),
        fenix: true);
    Get.lazyPut<UnitsLocalDataSources>(() => UnitsLocalDataSourcesImp(),
        fenix: true);
    Get.lazyPut<UnitsRepository>(
        () => UnitsRepositoryImp(
            remoteDataSource: Get.find(),
            localDataSources: Get.find(),
            netWorkInfo: sl()),
        fenix: true);
    Get.lazyPut(() => UnitsUseCase(repository: Get.find()), fenix: true);

    Get.lazyPut<UnitsController>(
        () => UnitsController(unitsUseCase: Get.find()),
        fenix: true);
  }
}
