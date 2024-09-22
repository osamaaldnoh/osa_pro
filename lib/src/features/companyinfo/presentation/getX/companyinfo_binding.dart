import 'package:get/get.dart';
import 'package:osa_pro/src/core/config/config.dart';
import 'package:osa_pro/src/features/companyinfo/data/implements/companyinfo_implements.dart';
import 'package:osa_pro/src/features/companyinfo/data/sources/company_local_data_sources.dart';
import 'package:osa_pro/src/features/companyinfo/data/sources/company_remote_data_sources.dart';
import 'package:osa_pro/src/features/companyinfo/domain/repositories/company_repositories.dart';
import 'package:osa_pro/src/features/companyinfo/domain/usecases/company_usecases.dart';
import 'companyinfo_controller.dart';

class CompanyinfoBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CompanyRemoteDataSource>(() => CompanyRemoteDataSourceImp(),
        fenix: true);
    Get.lazyPut<CompanyLocalDataSources>(() => CompanyLocalDataSourcesImp(),
        fenix: true);
    Get.lazyPut<CompanyRepository>(
        () => CompanyinfoRepositoryImp(
            remoteDataSource: Get.find(), netWorkInfo: sl()),
        fenix: true);
    Get.lazyPut(
        () => CompanyUseCase(
              repository: Get.find(),
            ),
        fenix: true);
    Get.lazyPut(() => CompanyController(companyUseCase: Get.find()),
        fenix: true);
  }
}
