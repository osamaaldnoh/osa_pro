import 'package:get/get.dart';
import 'package:osa_pro/src/core/config/config.dart';
import 'package:osa_pro/src/features/currencies/data/implements/currencies_implements.dart';
import 'package:osa_pro/src/features/currencies/data/sources/currencies_local_data_sources.dart';
import 'package:osa_pro/src/features/currencies/data/sources/currencies_remote_data_sources.dart';
import 'package:osa_pro/src/features/currencies/domain/repositories/currencies_repositories.dart';
import 'package:osa_pro/src/features/currencies/domain/usecases/currencies_usecases.dart';
import 'currencies_controller.dart';

class CurrenciesBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CurrenciesRemoteDataSource>(
        () => CurrenciesRemoteDataSourceImp(),
        fenix: true);
    Get.lazyPut<CurrenciesLocalDataSources>(
        () => CurrenciesLocalDataSourcesImp(),
        fenix: true);
    Get.lazyPut<CurrenciesRepository>(
        () => CurrenciesRepositoryImp(
            remoteDataSource: Get.find(),
            localDataSources: Get.find(),
            netWorkInfo: sl()),
        fenix: true);
    Get.lazyPut(
        () => CurrenciesUseCase(
              repository: Get.find(),
            ),
        fenix: true);
    Get.lazyPut<CurrenciesController>(
        () => CurrenciesControllerImp(currenciesUseCase: Get.find()),
        fenix: true);
  }
}
