import 'package:get/get.dart';
import 'package:osa_pro/src/core/enums/login_status.dart';
import 'package:osa_pro/src/features/items/domain/entities/entities.dart';
import 'package:osa_pro/src/features/items/domain/usecases/usecases.dart';

abstract class ItemsController extends GetxController {
  void getItems();
}

class ItemsControllerImp extends ItemsController {
  final ItemsUseCase _itemsUseCase;
  RxList<ItemsEntity> itemsList = RxList([]);
  RxList<ItemsEntity> get _itemsList => RxList([...itemsList]);
  final requestStatus = RequestStatus.NOTHING.obs;
  RxString message = ''.obs;
  void setRxRequestStatus(RequestStatus value) => requestStatus.value = value;

  ItemsControllerImp({required ItemsUseCase itemsUseCase})
      : _itemsUseCase = itemsUseCase;

  @override
  void onInit() {
    super.onInit();
    getItems();
  }

  @override
  void getItems() async {
    setRxRequestStatus(RequestStatus.LOADING);
    final itemsResponseList = await _itemsUseCase.call();
    itemsResponseList.fold((failure) {
      message.value = failure.message;
      setRxRequestStatus(RequestStatus.ERROR);
    }, (data) {
      _itemsList.value = data;
      setRxRequestStatus(RequestStatus.COMPLLETED);
    });
  }
}
