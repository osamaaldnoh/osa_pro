import 'package:get/get.dart';
import 'package:osa_pro/src/core/config/config.dart';
import 'package:osa_pro/src/features/branchinfo/data/implements/implements.dart';
import 'package:osa_pro/src/features/branchinfo/data/sources/branch_local_data_sources.dart';
import 'package:osa_pro/src/features/branchinfo/data/sources/branch_remote_data_sources.dart';
import 'package:osa_pro/src/features/branchinfo/domain/repositories/repositories.dart';
import 'package:osa_pro/src/features/branchinfo/domain/usecases/usecases.dart';
import 'branchinfo_controller.dart';

class BranchinfoBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BranchRemoteDataSource>(() => BranchRemoteDataSourceImp(),
        fenix: true);
    Get.lazyPut<BranchLocalDataSources>(() => BranchLocalDataSourcesImp(),
        fenix: true);
    Get.lazyPut<BranchinfoRepository>(
        () => BranchinfoRepositoryImp(
              branchRemoteDataSource: Get.find(),
              netWorkInfo: sl(),
            ),
        fenix: true);
    Get.lazyPut(() => GetBranchinfoUseCase(repository: Get.find()),
        fenix: true);
    Get.lazyPut(() => BranchinfoController(branchinfoUseCase: Get.find()),
        fenix: true);
  }
}
