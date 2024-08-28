import 'package:get/get.dart';
import 'package:osa_pro/src/core/enums/login_status.dart';
import 'package:osa_pro/src/core/utils/convert_image.dart';
import 'package:osa_pro/src/features/branchinfo/domain/entities/entities.dart';
import 'package:osa_pro/src/features/branchinfo/domain/usecases/usecases.dart';

class BranchinfoController extends GetxController {
  final GetBranchinfoUseCase _branchinfoUseCase;
  final status = RequestStatus.NOTHING.obs;
  RxBool isLoading = false.obs;
  RxString message = ''.obs;
  RxString image = ''.obs;
  Rx<BranchInfoEntity> branchInfoEntity = Rx(
    BranchInfoEntity(
        id: 0,
        companyId: 0,
        name: '',
        address: '',
        phone: '',
        email: '',
        arReportHeader: '',
        enReportHeader: '',
        logo: ''),
  );

  BranchinfoController({required GetBranchinfoUseCase branchinfoUseCase})
      : _branchinfoUseCase = branchinfoUseCase;

  @override
  void onInit() {
    super.onInit();
    getBranchData();
  }

  Future<void> getBranchData() async {
    status.value = RequestStatus.LOADING;
    final branchData = await _branchinfoUseCase.call();
    branchData.fold((failure) {
      status.value = RequestStatus.ERROR;
      message.value = failure.message;
    }, (branchInfo) async {
      status.value = RequestStatus.COMPLLETED;
      branchInfoEntity.value = branchInfo;
      image.value = await ConvertAndSaveImage.convertAndSaveImage(
          branchInfoEntity.value.logo);
      Get.snackbar("Success", "Branch Added Successfully");

      // LoadedPostsState(posts: posts);
    });
  }
}
