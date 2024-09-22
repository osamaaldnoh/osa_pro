import 'package:get/get.dart';
import 'package:osa_pro/src/core/enums/login_status.dart';
import 'package:osa_pro/src/features/item_groups/domain/entities/item_groups_entities.dart';
import 'package:osa_pro/src/features/item_groups/domain/usecases/item_groups_get_items_group_where_item_usecases.dart';
import 'package:osa_pro/src/features/item_groups/domain/usecases/item_groups_usecases.dart';

// abstract class ItemGroupsController extends GetxController {
//   void getAllItemGroups();
// }

class ItemGroupsController extends GetxController {
  final ItemGroupsUseCase _itemGroupsUseCase;
  final GetItemsGroupWhereItemUsecases _getItemsGroupWhereItemUsecases;
  RxList<ItemGroupsEntity> _itemGroupsList = RxList([]);

  RxList<ItemGroupsEntity> get itemGroupsList => RxList([..._itemGroupsList]);
  final RxList<ItemGroupsEntity> _itemGroupsWhereItemList = RxList([]);
  RxList<ItemGroupsEntity> get itemGroupsWhereItemList =>
      RxList([..._itemGroupsWhereItemList]);
  // final AppSharedPerSet _appSharedPerSet = sl();
  final authState = RequestStatus.NOTHING.obs;
  RxString message = ''.obs;
  void setRxRequestStatus(RequestStatus value) => authState.value = value;
  ItemGroupsEntity itemGroupsEntity = ItemGroupsEntity(
    id: 0,
    name: '',
    code: 0,
    note: '',
    newData: false,
    parent: 0,
    type: 0,
  );

  //
  ItemGroupsController({
    required ItemGroupsUseCase itemGroupsUseCase,
    required GetItemsGroupWhereItemUsecases getItemsGroupWhereItemUsecases,
  })  : _itemGroupsUseCase = itemGroupsUseCase,
        _getItemsGroupWhereItemUsecases = getItemsGroupWhereItemUsecases;

  @override
  void onInit() {
    super.onInit();
    getAllItemGroups();
  }

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

  ItemGroupsEntity findByName(String name) {
    return _itemGroupsList.firstWhere((value) => value.name == name,
        orElse: () => itemGroupsEntity);
  }

  ItemGroupsEntity findByID(int itemGroupId) {
    return _itemGroupsList.firstWhere((value) => value.id == itemGroupId,
        orElse: () => itemGroupsEntity);
  }

  ItemGroupsEntity findByItemGroupID(int itemGroupId) {
    return _itemGroupsList.firstWhere((value) => value.code == itemGroupId,
        orElse: () => itemGroupsEntity);
  }

  void getItemGroupWhereItemId(int itemId) async {
    setRxRequestStatus(RequestStatus.LOADING);
    final response = await _getItemsGroupWhereItemUsecases.call(itemId);
    response.fold((failure) {
      message.value = failure.message;
      setRxRequestStatus(RequestStatus.ERROR);
    }, (data) {
      _itemGroupsWhereItemList.value = data;
      setRxRequestStatus(RequestStatus.COMPLLETED);
      print(_itemGroupsWhereItemList);
      // Get.snackbar("Success", "Item Units Added Successfully");
    });
  }
}
