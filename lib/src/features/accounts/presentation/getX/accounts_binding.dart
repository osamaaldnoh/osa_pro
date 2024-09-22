import 'package:get/get.dart';
import 'package:osa_pro/src/core/config/config.dart';
import 'package:osa_pro/src/features/accounts/data/implements/accounts_implements.dart';
import 'package:osa_pro/src/features/accounts/data/sources/accounts_local_data_sources.dart';
import 'package:osa_pro/src/features/accounts/data/sources/accounts_remote_data_sources.dart';
import 'package:osa_pro/src/features/accounts/domain/repositories/accounts_repositories.dart';
import 'package:osa_pro/src/features/accounts/domain/usecases/accounts_usecases.dart';
import 'accounts_controller.dart';

class AccountsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AccountsRemoteDataSource>(() => AccountsRemoteDataSourceImp(),
        fenix: true);
    Get.lazyPut<AccountsLocalDataSources>(() => AccountsLocalDataSourcesImp(),
        fenix: true);
    Get.lazyPut<AccountsRepository>(
        () => AccountsRepositoryImp(
              remoteDataSource: Get.find(),
              localDataSources: Get.find(),
              netWorkInfo: sl(),
            ),
        fenix: true);
    Get.lazyPut(
        () => AccountsUseCase(
              repository: Get.find(),
            ),
        fenix: true);
    Get.lazyPut(
        () => AccountsController(
              accountsUseCase: Get.find(),
            ),
        fenix: true);
  }
}
