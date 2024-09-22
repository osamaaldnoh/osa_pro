import 'package:get/get.dart';
import 'package:osa_pro/src/core/enums/login_status.dart';
import 'package:osa_pro/src/features/companyinfo/domain/entities/company_entities.dart';
import 'package:osa_pro/src/features/companyinfo/domain/usecases/company_usecases.dart';

class CompanyController extends GetxController {
  final CompanyUseCase _companyUseCase;
  final status = RequestStatus.NOTHING.obs;
  RxBool isLoading = false.obs;
  RxString message = ''.obs;
  Rx<CompanyEntity> companyEntity = Rx(CompanyEntity(
      id: 0,
      name: '',
      enName: '',
      shortName: '',
      shortEnName: '',
      webSite: '',
      address: '',
      note: '',
      logo: ''));
  CompanyController({required CompanyUseCase companyUseCase})
      : _companyUseCase = companyUseCase;

  @override
  void onInit() {
    super.onInit();
    getCompanyInfo();
  }

  Future<void> getCompanyInfo() async {
    status.value = RequestStatus.LOADING;
    final companyData = await _companyUseCase.call();
    companyData.fold((failure) {
      status.value = RequestStatus.ERROR;
      message.value = failure.message;
    }, (companyInfo) {
      status.value = RequestStatus.COMPLLETED;
      companyEntity.value = companyInfo;
      // Get.snackbar("Success", "Branch Added Successfully");
    });
  }
}
