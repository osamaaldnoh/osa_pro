import 'package:get/get.dart';
import 'package:osa_pro/src/core/config/config.dart';
import 'package:osa_pro/src/features/sales_man_settings/data/implements/implements.dart';
import 'package:osa_pro/src/features/sales_man_settings/data/sources/sales_man_settings_local_data_sources.dart';
import 'package:osa_pro/src/features/sales_man_settings/data/sources/sales_man_settings_remote_data_sources.dart';
import 'package:osa_pro/src/features/sales_man_settings/domain/repositories/repositories.dart';
import 'package:osa_pro/src/features/sales_man_settings/domain/usecases/usecases.dart';
import 'sales_man_settings_controller.dart';

class SalesManSettingsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SalesManSettingsRemoteDataSource>(
        () => SalesManSettingsRemoteDataSourceImp(),
        fenix: true);

    Get.lazyPut<SalesManSettingsLocalDataSources>(
        () => SalesManSettingsLocalDataSourcesImp(),
        fenix: true);

    Get.lazyPut<SalesManSettingsRepository>(
        () => SalesManSettingsRepositoryImp(
            remoteDataSource: Get.find(),
            localDataSources: Get.find(),
            netWorkInfo: sl()),
        fenix: true);

    Get.lazyPut(() => SalesManSettingsUseCase(repository: Get.find()),
        fenix: true);

    Get.lazyPut<SalesManSettingsController>(
        () =>
            SalesManSettingsControllerImp(salesManSettingsUseCase: Get.find()),
        fenix: true);
  }
}
