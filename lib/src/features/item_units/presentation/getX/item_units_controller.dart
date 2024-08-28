import 'package:get/get.dart';
import 'package:osa_pro/src/core/enums/login_status.dart';
import 'package:osa_pro/src/features/item_units/domain/entities/entities.dart';
import 'package:osa_pro/src/features/item_units/domain/usecases/usecases.dart';

abstract class ItemUnitsController extends GetxController {
  void getItemUnits();
}

class ItemUnitsControllerImp extends ItemUnitsController {
  final ItemUnitsUseCase _itemUnitsUseCase;
  RxList<ItemUnitsEntity> itemUnitsList = RxList([]);
  RxList<ItemUnitsEntity> get _itemUnitsList => RxList([...itemUnitsList]);
  // final AppSharedPerSet _appSharedPerSet = sl();
  final authState = RequestStatus.NOTHING.obs;
  RxString message = ''.obs;
  void setRxRequestStatus(RequestStatus value) => authState.value = value;

  //
  ItemUnitsControllerImp({required ItemUnitsUseCase itemUnitsUseCase})
      : _itemUnitsUseCase = itemUnitsUseCase;

  @override
  void onInit() {
    super.onInit();
    getItemUnits();
  }

  @override
  void getItemUnits() async {
    setRxRequestStatus(RequestStatus.LOADING);
    final itemUnitsResponseList = await _itemUnitsUseCase.call();
    itemUnitsResponseList.fold((failure) {
      message.value = failure.message;
      setRxRequestStatus(RequestStatus.ERROR);
    }, (data) {
      _itemUnitsList.value = data;
      setRxRequestStatus(RequestStatus.COMPLLETED);
    });
  }
}
