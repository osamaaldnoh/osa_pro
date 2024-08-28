import 'package:get/get.dart';
import 'package:osa_pro/src/core/enums/login_status.dart';
import 'package:osa_pro/src/features/user_store/domain/entities/entities.dart';
import 'package:osa_pro/src/features/user_store/domain/usecases/usecases.dart';

abstract class UserStoreController extends GetxController {
  void getUserStore();
}

class UserStoreControllerImp extends UserStoreController {
  final UserStoreUseCase _userStoreUseCase;
  Rx<UserStoreEntity> userStoreEntity = Rx(const UserStoreEntity(
    id: 0,
    name: '',
    accountNumber: 0,
    branchId: 0,
    managerPhone: '',
    storeManager: '',
    note: '',
  ));

  final requestState = RequestStatus.NOTHING.obs;
  RxString message = ''.obs;

  void setRxRequestStatus(RequestStatus value) => requestState.value = value;
  UserStoreControllerImp({required UserStoreUseCase userStoreUseCase})
      : _userStoreUseCase = userStoreUseCase;
  @override
  void onInit() {
    super.onInit();
    getUserStore();
  }

  @override
  void getUserStore() async {
    setRxRequestStatus(RequestStatus.LOADING);
    final userStroeResponse = await _userStoreUseCase.call();
    userStroeResponse.fold((failure) {
      message.value = failure.message;
      setRxRequestStatus(RequestStatus.ERROR);
    }, (data) {
      userStoreEntity.value = data;
      setRxRequestStatus(RequestStatus.COMPLLETED);
      print(" userStroeResponse :::::::$data");
    });
  }
}
