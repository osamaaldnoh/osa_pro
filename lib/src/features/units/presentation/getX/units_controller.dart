import 'package:get/get.dart';
import 'package:osa_pro/src/core/enums/login_status.dart';
import 'package:osa_pro/src/features/units/domain/entities/entities.dart';
import 'package:osa_pro/src/features/units/domain/usecases/usecases.dart';

abstract class UnitsController extends GetxController {
  void getAllUnits();
}

class UnitsControllerImp extends UnitsController {
  final UnitsUseCase _unitsUseCase;
  RxList<UnitsEntity> unitsList = RxList([]);
  RxList<UnitsEntity> get _unitsList => RxList([...unitsList]);
  final authState = RequestStatus.NOTHING.obs;
  RxString message = ''.obs;
  void setRxRequestStatus(RequestStatus value) => authState.value = value;

  //
  UnitsControllerImp({required UnitsUseCase unitsUseCase})
      : _unitsUseCase = unitsUseCase;

  @override
  void onInit() {
    super.onInit();
    getAllUnits();
  }

  @override
  void getAllUnits() async {
    setRxRequestStatus(RequestStatus.LOADING);
    final unitsResponseList = await _unitsUseCase.call();
    unitsResponseList.fold((failure) {
      message.value = failure.message;
      setRxRequestStatus(RequestStatus.ERROR);
    }, (data) {
      _unitsList.value = data;
      setRxRequestStatus(RequestStatus.COMPLLETED);
      print(" unitsResponseList :::::::$data");
    });
  }
}
