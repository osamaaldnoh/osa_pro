import 'package:get/get.dart';
import 'package:osa_pro/src/core/enums/login_status.dart';
import 'package:osa_pro/src/features/user_store/domain/entities/store_entities.dart';
import 'package:osa_pro/src/features/user_store/domain/usecases/store_usecases.dart';

// abstract class UserStoreController extends GetxController {
//   void getUserStore();
// }

class UserStoreController extends GetxController {
  final StoreUseCase _userStoreUseCase;
  RxList<StoreEntity> _storeList = RxList([]);
  RxList<StoreEntity> get storeList => RxList([..._storeList]);
  Rx<StoreEntity> userStoreEntity = Rx(const StoreEntity(
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
  UserStoreController({required StoreUseCase userStoreUseCase})
      : _userStoreUseCase = userStoreUseCase;

  @override
  void onInit() {
    super.onInit();

    getUserStore();
  }

  StoreEntity findByName(String name) {
    return _storeList.firstWhere((value) => value.name == name,
        orElse: userStoreEntity);
  }

  Rx<StoreEntity> findById(int storeId) {
    return _storeList
        .firstWhere((value) => value.id == storeId, orElse: userStoreEntity)
        .obs;
  }

  void getUserStore() async {
    setRxRequestStatus(RequestStatus.LOADING);
    print("Osama");
    final userStroeResponse = await _userStoreUseCase.call();
    print("Osama");
    userStroeResponse.fold((failure) {
      message.value = failure.message;
      setRxRequestStatus(RequestStatus.ERROR);
      print(" userStroeResponse :::::::${failure.message}");
    }, (data) {
      // userStoreEntity.value = data;
      _storeList.value = data;
      setRxRequestStatus(RequestStatus.COMPLLETED);
      print(" userStroeResponse :::::::$data");
    });
  }
}
