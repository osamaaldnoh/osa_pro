import 'package:get/get.dart';
import 'package:osa_pro/src/core/config/config.dart';
import 'package:osa_pro/src/features/system_docs/data/implements/system_docs_implements.dart';
import 'package:osa_pro/src/features/system_docs/data/sources/system_docs_local_data_sources.dart';
import 'package:osa_pro/src/features/system_docs/data/sources/system_docs_remote_data_sources.dart';
import 'package:osa_pro/src/features/system_docs/domain/repositories/system_docs_repositories.dart';
import 'package:osa_pro/src/features/system_docs/domain/usecases/system_docs_usecases.dart';
import 'system_docs_controller.dart';

class SystemDocsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SystemDocsRemoteDataSource>(
        () => SystemDocsRemoteDataSourceImp(),
        fenix: true);
    Get.lazyPut<SystemDocsLocalDataSources>(
        () => SystemDocsLocalDataSourcesImp(),
        fenix: true);
    Get.lazyPut<SystemDocsRepository>(
        () => SystemDocsRepositoryImp(
            remoteDataSource: Get.find(),
            localDataSources: Get.find(),
            netWorkInfo: sl()),
        fenix: true);
    Get.lazyPut(
        () => SystemDocsUseCase(
              repository: Get.find(),
            ),
        fenix: true);

    Get.lazyPut<SystemDocsController>(
        () => SystemDocsControllerImp(systemDocsUseCase: Get.find()),
        fenix: true);
  }
}
