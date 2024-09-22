import 'package:get/get.dart';
import 'package:osa_pro/src/core/enums/login_status.dart';
import 'package:osa_pro/src/features/units/domain/entities/units_entities.dart';
import 'package:osa_pro/src/features/units/domain/usecases/units_usecases.dart';

// abstract class UnitsController extends GetxController {
//   void getAllUnits();
// }

class UnitsController extends GetxController {
  final UnitsUseCase _unitsUseCase;
  final RxList<UnitsEntity> _unitsList = RxList([]);
  RxList<UnitsEntity> get unitsList => RxList([..._unitsList]);
  final authState = RequestStatus.NOTHING.obs;
  RxString message = ''.obs;
  void setRxRequestStatus(RequestStatus value) => authState.value = value;
  UnitsEntity unitsEntity =
      UnitsEntity(id: 0, name: '', note: '', newData: false);
  //
  UnitsController({required UnitsUseCase unitsUseCase})
      : _unitsUseCase = unitsUseCase;

  @override
  void onInit() {
    super.onInit();
    getAllUnits();
  }

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

  UnitsEntity findByName(String name) {
    return _unitsList.firstWhere((value) => value.name == name,
        orElse: () => unitsEntity);
  }

  UnitsEntity findByID(int unitId) {
    return _unitsList.firstWhere((value) => value.id == unitId,
        orElse: () => unitsEntity);
  }
}
