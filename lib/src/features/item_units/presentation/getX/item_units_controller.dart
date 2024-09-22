import 'package:get/get.dart';
import 'package:osa_pro/src/core/enums/login_status.dart';
import 'package:osa_pro/src/features/item_units/domain/entities/item_units_entities.dart';
import 'package:osa_pro/src/features/item_units/domain/usecases/item_units_get_units_where_item_usecases.dart';
import 'package:osa_pro/src/features/item_units/domain/usecases/item_units_usecases.dart';

// abstract class ItemUnitsController extends GetxController {
//   void getItemUnits();
// }

class ItemUnitsController extends GetxController {
  final ItemUnitsUseCase _itemUnitsUseCase;
  final GetUnitsWhereItemUsecases _getUnitsWhereItemUsecases;
  RxList<ItemUnitsEntity> itemUnitsList = RxList([]);
  RxList<ItemUnitsEntity> get _itemUnitsList => RxList([...itemUnitsList]);

  final RxList<ItemUnitsEntity> _unitsWhereItemList = RxList([]);
  RxList<ItemUnitsEntity> get unitsWhereItemList =>
      RxList([..._unitsWhereItemList]);
  // final AppSharedPerSet _appSharedPerSet = sl();
  final authState = RequestStatus.NOTHING.obs;
  RxString message = ''.obs;
  void setRxRequestStatus(RequestStatus value) => authState.value = value;

  //
  ItemUnitsController(
      {required ItemUnitsUseCase itemUnitsUseCase,
      required GetUnitsWhereItemUsecases getUnitsWhereItemUsecases})
      : _itemUnitsUseCase = itemUnitsUseCase,
        _getUnitsWhereItemUsecases = getUnitsWhereItemUsecases;

  @override
  void onInit() {
    super.onInit();
    getItemUnits();
  }

  void getItemUnits() async {
    setRxRequestStatus(RequestStatus.LOADING);
    final itemUnitsResponseList = await _itemUnitsUseCase.call();
    itemUnitsResponseList.fold((failure) {
      message.value = failure.message;
      setRxRequestStatus(RequestStatus.ERROR);
    }, (data) {
      _itemUnitsList.value = data;
      setRxRequestStatus(RequestStatus.COMPLLETED);
      // Get.snackbar("Success", "Item Units Added Successfully");
    });
  }

  void getUnitsWhereItemId(int itemId) async {
    setRxRequestStatus(RequestStatus.LOADING);
    final response = await _getUnitsWhereItemUsecases.call(itemId);
    response.fold((failure) {
      message.value = failure.message;
      setRxRequestStatus(RequestStatus.ERROR);
    }, (data) {
      _unitsWhereItemList.value = data;
      setRxRequestStatus(RequestStatus.COMPLLETED);
      // Get.snackbar("Success", "Item Units Added Successfully");
    });
  }
}
