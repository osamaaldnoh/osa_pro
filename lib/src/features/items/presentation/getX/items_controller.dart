import 'package:get/get.dart';
import 'package:osa_pro/src/core/enums/login_status.dart';
import 'package:osa_pro/src/features/items/domain/entities/items_entities.dart';
import 'package:osa_pro/src/features/items/domain/usecases/items_usecases.dart';

// abstract class ItemsController extends GetxController {
//   void getItems();
// }

class ItemsController extends GetxController {
  final ItemsUseCase _itemsUseCase;
  RxList<ItemsEntity> _itemsList = RxList([]);
  RxList<ItemsEntity> get itemsList => RxList([..._itemsList]);
  RxList<String> itemsName = <String>[].obs;
  final requestStatus = RequestStatus.NOTHING.obs;
  RxString message = ''.obs;
  // late Rx<ItemsEntity> itemsEntity;
  RxString itemId = ''.obs;
  void setRxRequestStatus(RequestStatus value) => requestStatus.value = value;

  ItemsController({required ItemsUseCase itemsUseCase})
      : _itemsUseCase = itemsUseCase;

  @override
  void onInit() {
    super.onInit();
    getItems();
    itemsName.clear();
    // itemsEntity = Rx(ItemsEntity(
    //   id: 0,
    //   enName: '',
    //   name: '',
    //   freeQuantityAllow: false,
    //   hasTax: false,
    //   haseAlternated: false,
    //   isExpire: false,
    //   itemCode: 0,
    //   itemCompany: '',
    //   itemDescription: '',
    //   itemGroupId: 0,
    //   itemImage: '',
    //   itemLimit: 0,
    //   newData: false,
    //   note: '',
    //   notifyBefore: 0,
    //   orignalCountry: '',
    //   taxRate: 0,
    //   type: 0,
    // ));
  }

  void getItems() async {
    setRxRequestStatus(RequestStatus.LOADING);
    final itemsResponseList = await _itemsUseCase.call();
    itemsResponseList.fold((failure) {
      message.value = failure.message;
      setRxRequestStatus(RequestStatus.ERROR);
      print(failure.message);
    }, (data) {
      _itemsList.value = data;
      setRxRequestStatus(RequestStatus.COMPLLETED);
      print("Items :::::::::::::::::$data");
    });
  }

  RxList<String> inventoryItemsSuggestionsCallback(String productName) {
    itemsName.value = _itemsList.map((element) => element.name!).toList();

    return itemsName
        .where((item) => item
            .trim()
            .toLowerCase()
            .contains(productName.trim().toLowerCase()))
        .toList()
        .obs;
    // return inventoryItemsList.value
    //     .where((element) => element.productName!
    //         .trim()
    //         .toLowerCase()
    //         .contains(productName.trim().toLowerCase()))
    //     .toList();
  }

  ItemsEntity findByName(String name) {
    return _itemsList.firstWhere((value) => value.name == name,
        orElse: () => ItemsEntity());
  }

  ItemsEntity findByID(int itemId) {
    return _itemsList.firstWhere((value) => value.id == itemId,
        orElse: () => ItemsEntity());
  }

  getItemNames(RxList<int> listItemsId) {
    print(listItemsId);
    itemsName.clear();
    listItemsId.forEach((vale) {
      print(vale);
      itemsName.addIf(itemsName.contains(findByID(vale).name) == false,
          findByID(vale).name.toString());
    });
  }

  RxList<String> inventoryDocDataSuggestionsCallback(String productName) {
    // itemsName.value = _itemsList.map((element) => element.name!).toList();

    return itemsName
        .where((item) => item
            .trim()
            .toLowerCase()
            .contains(productName.trim().toLowerCase()))
        .toList()
        .obs;
    // return inventoryItemsList.value
    //     .where((element) => element.productName!
    //         .trim()
    //         .toLowerCase()
    //         .contains(productName.trim().toLowerCase()))
    //     .toList();
  }

  RxList<ItemsEntity> searchByNamesList(String name) {
    // itemsName.value = _itemsList.map((element) => element.name!).toList();
    List<ItemsEntity> list = [];
    itemsName.forEach((value) {
      list.add(findByName(value));
    });
    return list
        .where((item) =>
            item.name!.trim().toLowerCase().contains(name.trim().toLowerCase()))
        .toList()
        .obs;
    // return inventoryItemsList.value
    //     .where((element) => element.productName!
    //         .trim()
    //         .toLowerCase()
    //         .contains(productName.trim().toLowerCase()))
    //     .toList();
  }
}
