import 'package:get/get.dart';
import 'package:osa_pro/src/core/enums/login_status.dart';
import 'package:osa_pro/src/core/utils/convert_image.dart';
import 'package:osa_pro/src/features/branchinfo/domain/entities/branchinfo_entities.dart';
import 'package:osa_pro/src/features/branchinfo/domain/usecases/branchinfo_usecases.dart';

class BranchinfoController extends GetxController {
  final GetBranchinfoUseCase _branchinfoUseCase;
  RxList<BranchInfoEntity> _branchList = RxList([]);
  RxList<BranchInfoEntity> get branchList => RxList([..._branchList]);
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

  BranchInfoEntity findByName(String name) {
    return _branchList.firstWhere((value) => value.name == name,
        orElse: branchInfoEntity);
  }

  BranchInfoEntity findById({required int branchId}) {
    return _branchList.firstWhere((value) => value.id == branchId,
        orElse: () => branchInfoEntity.value);
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
      // image.value = await ConvertAndSaveImage.convertAndSaveImage(
      //     branchInfoEntity.value.logo);
      print(branchInfo);
      _branchList.add(branchInfo);
      // Get.snackbar("Success", "Branch Added Successfully");

      // LoadedPostsState(posts: posts);
    });
  }
}
