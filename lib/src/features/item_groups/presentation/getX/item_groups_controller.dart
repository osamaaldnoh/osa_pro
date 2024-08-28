import 'package:get/get.dart';
import 'package:osa_pro/src/core/enums/login_status.dart';
import 'package:osa_pro/src/features/item_groups/domain/entities/entities.dart';
import 'package:osa_pro/src/features/item_groups/domain/usecases/usecases.dart';

abstract class ItemGroupsController extends GetxController {
  void getAllItemGroups();
}

class ItemGroupsControllerImp extends ItemGroupsController {
  final ItemGroupsUseCase _itemGroupsUseCase;
  RxList<ItemGroupsEntity> itemGroupsList = RxList([]);
  RxList<ItemGroupsEntity> get _itemGroupsList => RxList([...itemGroupsList]);
  // final AppSharedPerSet _appSharedPerSet = sl();
  final authState = RequestStatus.NOTHING.obs;
  RxString message = ''.obs;
  void setRxRequestStatus(RequestStatus value) => authState.value = value;

  //
  ItemGroupsControllerImp({required ItemGroupsUseCase itemGroupsUseCase})
      : _itemGroupsUseCase = itemGroupsUseCase;

  @override
  void onInit() {
    super.onInit();
    getAllItemGroups();
  }

  @override
  void getAllItemGroups() async {
    setRxRequestStatus(RequestStatus.LOADING);
    final itemGroupsResponseList = await _itemGroupsUseCase.call();
    itemGroupsResponseList.fold((failure) {
      message.value = failure.message;
      setRxRequestStatus(RequestStatus.ERROR);
    }, (data) {
      _itemGroupsList.value = data;
      setRxRequestStatus(RequestStatus.COMPLLETED);
      print(" itemGroupsResponseList :::::::$data");
    });
  }
}
