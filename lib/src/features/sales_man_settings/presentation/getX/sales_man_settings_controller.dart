import 'package:get/get.dart';
import 'package:osa_pro/src/core/enums/login_status.dart';
import 'package:osa_pro/src/features/sales_man_settings/domain/entities/entities.dart';
import 'package:osa_pro/src/features/sales_man_settings/domain/usecases/usecases.dart';

abstract class SalesManSettingsController extends GetxController {
  getSalesManSettings();
}

class SalesManSettingsControllerImp extends SalesManSettingsController {
  final SalesManSettingsUseCase _salesManSettingsUseCase;
  Rx<SalesManSettingsEntity> salesManSettingsEntity = Rx(
      const SalesManSettingsEntity(
          custParent: 0, generateCode: '', custGroup: 0));

  final requestState = RequestStatus.NOTHING.obs;
  RxString message = ''.obs;

  void setRxRequestStatus(RequestStatus value) => requestState.value = value;
  SalesManSettingsControllerImp(
      {required SalesManSettingsUseCase salesManSettingsUseCase})
      : _salesManSettingsUseCase = salesManSettingsUseCase;
  @override
  void onInit() {
    super.onInit();
    getSalesManSettings();
  }

  @override
  getSalesManSettings() async {
    setRxRequestStatus(RequestStatus.LOADING);
    final salesManSettingsData = await _salesManSettingsUseCase.call();
    salesManSettingsData.fold((failure) {
      setRxRequestStatus(RequestStatus.ERROR);
      message.value = failure.message;
    }, (data) {
      salesManSettingsEntity.value = data;
      setRxRequestStatus(RequestStatus.COMPLLETED);
      print(" salesManSettingsData :::::::$data");
    });
  }
}
