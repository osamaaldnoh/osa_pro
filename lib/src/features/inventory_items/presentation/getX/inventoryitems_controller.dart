import 'dart:convert';

import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:osa_pro/src/core/constants/app_images.dart';
import 'package:osa_pro/src/core/enums/login_status.dart';
import 'package:osa_pro/src/features/inventory_items/domain/entities/Inventory_document_data_entity.dart';
import 'package:osa_pro/src/features/inventory_items/domain/entities/entities.dart';
import 'package:osa_pro/src/features/inventory_items/domain/usecases/add_inventory_documents_usecases.dart';
import 'package:osa_pro/src/features/inventory_items/domain/usecases/delete_documents_usecases.dart';
import 'package:osa_pro/src/features/inventory_items/domain/usecases/delete_inventory_documents_usecases.dart';
import 'package:osa_pro/src/features/inventory_items/domain/usecases/get_inventory_documents_usecases.dart';
import 'package:osa_pro/src/features/inventory_items/domain/usecases/updata_inventory_documents_usecases.dart';

class InventoryItemsController extends GetxController {
  final GetInventoryDocumentsUsecases _getInventoryDocumentsUsecases;
  final AddInventoryDocumentsUsecases _addInventoryDocumentsUsecases;
  final UpdateInventoryDocumentsUsecases _updateInventoryDocumentsUsecases;
  final DeleteInventoryDocumentsUsecases _deleteInventoryDocumentsUsecases;
  final DeleteDocumentsUsecases _deleteDocumentsUsecases;
  final requestStatus = RequestStatus.NOTHING.obs;
  final message = ''.obs;
  void setRequestStatus(RequestStatus value) => requestStatus.value = value;
  InventoryItemsController(
      {required GetInventoryDocumentsUsecases getInventoryDocumentsUsecases,
      required AddInventoryDocumentsUsecases addInventoryDocumentsUsecases,
      required UpdateInventoryDocumentsUsecases
          updateInventoryDocumentsUsecases,
      required DeleteInventoryDocumentsUsecases
          deleteInventoryDocumentsUsecases,
      required DeleteDocumentsUsecases deleteDocumentsUsecases})
      : _getInventoryDocumentsUsecases = getInventoryDocumentsUsecases,
        _addInventoryDocumentsUsecases = addInventoryDocumentsUsecases,
        _updateInventoryDocumentsUsecases = updateInventoryDocumentsUsecases,
        _deleteInventoryDocumentsUsecases = deleteInventoryDocumentsUsecases,
        _deleteDocumentsUsecases = deleteDocumentsUsecases;
  final RxList<InventoryItemsEntity> _itemsList = RxList<InventoryItemsEntity>([
    // InventoryItemsEntity(
    //     id: 1,
    //     productName: "حليب",
    //     group: "5",
    //     unit: "كرتون",
    //     image: 'assets/images/img.png',
    //     quantity: 5,
    //     number: 0,
    //     difference: 0,
    //     itemBarcode: '12345778'),
    // InventoryItemsEntity(
    //     id: 2,
    //     productName: "بسكوت",
    //     group: "10",
    //     unit: "حبة",
    //     image: 'assets/images/img.png',
    //     quantity: 15,
    //     number: 0,
    //     difference: 0,
    //     itemBarcode: '12345778'),
    // InventoryItemsEntity(
    //     id: 3,
    //     productName: "ماء",
    //     group: "5",
    //     unit: "كرتون",
    //     image: 'assets/images/img.png',
    //     quantity: 30,
    //     number: 0,
    //     difference: 0,
    //     itemBarcode: '9675520513630'),
  ]);
  RxList<InventoryItemsEntity> get itemsList =>
      RxList<InventoryItemsEntity>([..._itemsList]);
  final GlobalKey<FormState> inventoryDocDtataKey = GlobalKey();

  final RxList<InventoryDocumentDataEntity> _inventoryDocumentDataEntityList =
      RxList<InventoryDocumentDataEntity>([]);
  RxList<InventoryDocumentDataEntity> get inventoryDocumentDataEntityList =>
      RxList<InventoryDocumentDataEntity>(
          [..._inventoryDocumentDataEntityList]);

  final RxList<InventoryDocumentDataEntity>
      searchInventoryDocumentDataEntityList =
      <InventoryDocumentDataEntity>[].obs;

  final RxList<InventoryItemsEntity> searchInventoryItemsList =
      <InventoryItemsEntity>[].obs;

  RxList<InventoryItemsEntity> inventoryItemsList =
      <InventoryItemsEntity>[].obs;
  RxList<String> productsNames = <String>[].obs;
  final inventoryItemProductName = TextEditingController().obs;
  final inventoryItemnumber = TextEditingController().obs;
  final inventoryItemNote = TextEditingController().obs;
  final inventoryItemEndDateTime = TextEditingController().obs;

  final inventoryItemGroup = SingleValueDropDownController().obs;
  final inventoryItemUnit = SingleValueDropDownController().obs;
  RxString selectImage = ''.obs;
  // RxBool selectImageAssets = true.obs;
  var selectDate = DateTime.now().obs;

  final searchTextController = TextEditingController().obs;
  // final  searchFocusNode = FocusNode().obs;

  RxInt numberInventoryCount = 0.obs;
  RxInt filterIndex = 1.obs;
  InventoryItemsEntity inventoryItemsModel = InventoryItemsEntity();
  InventoryDocumentDataEntity inventoryDocumentDataModel =
      InventoryDocumentDataEntity();

  @override
  void onInit() {
    // getInventoryItems();
    searchTextController.value.clear();
    super.onInit();

    // getInventoryDocuments();
  }

  void getInventoryDocuments({required int docId}) async {
    setRequestStatus(RequestStatus.LOADING);
    final responseData =
        await _getInventoryDocumentsUsecases.call(docId: docId);
    responseData.fold((failure) {
      message.value = failure.message;
      setRequestStatus(RequestStatus.ERROR);
    }, (data) {
      _inventoryDocumentDataEntityList.value = data;
    });
    _inventoryDocumentDataEntityList.value
        .sort((a, b) => b.id!.compareTo(a.id!));
    setRequestStatus(RequestStatus.COMPLLETED);
    searchInventoryDocumentDataEntityList.value =
        _inventoryDocumentDataEntityList;
  }

  RxInt showStyleIndex = 0.obs;

  // getInventoryItems()
  // {
  //   _itemsList.value = <InventoryItemsModel>[
  // InventoryItemsModel(
  //   id: 1,
  //   productName: "حليب",
  //   group: "5",
  //   unit: "كرتون",
  //   image: 'assets/images/img.png',
  //   quantity: 5,
  //   number: 50,
  //   difference: 2,
  // ),
  //      InventoryItemsModel(
  //       id: 2,
  //       productName: "بسكوت",
  //       group: "8",
  //       unit: "قطعه",
  //       image: 'assets/images/img.png',
  //       quantity: 10,
  //       number: 20,
  //       difference: 0,
  //     ),
  //      InventoryItemsModel(
  //       id: 3,
  //       productName: "عصير",
  //       group: "3",
  //       unit: "كرتون",
  //       image: 'assets/images/img.png',
  //       quantity: 15,
  //       number: 30,
  //       difference: 8,
  //     ),
  //   ];
  //   filterInventoryItem(filterId: 1);
  //   // searchInventoryItemsList.value = _itemsList;
  // }

  InventoryDocumentDataEntity findById({required int inventoryDataId}) {
    return _inventoryDocumentDataEntityList.firstWhere(
        (value) => value.id == inventoryDataId,
        orElse: () => InventoryDocumentDataEntity());
  }

  deleteInventoryDocumentData(
      {required InventoryItemsEntity inventoryItemsModel}) async {
    setRequestStatus(RequestStatus.LOADING);
    final responseData =
        await _deleteInventoryDocumentsUsecases.call(inventoryItemsModel.id!);
    responseData.fold((failure) {
      message.value = failure.message;
      setRequestStatus(RequestStatus.ERROR);
    }, (data) {
      setRequestStatus(RequestStatus.COMPLLETED);
    });

    getInventoryDocuments(
        docId: findById(inventoryDataId: inventoryItemsModel.id!).docId!);
  }

  deleteDoc({required int docId}) async {
    setRequestStatus(RequestStatus.LOADING);
    final responseData = await _deleteDocumentsUsecases.call(docId);
    responseData.fold((failure) {
      message.value = failure.message;
      setRequestStatus(RequestStatus.ERROR);
    }, (data) {
      setRequestStatus(RequestStatus.COMPLLETED);
    });
  }

  addInventoryItem({required InventoryItemsEntity inventoryItem}) {
    inventoryItem.id = incrumentNumber().value;
    inventoryItem.image = inventoryItem.image ?? "assets/images/img.png";
    // inventoryItemsModel.
    inventoryItem.difference = inventoryItem.quantity ?? 10;
    //     (inventoryItem.quantity! - inventoryItem.number!);
    inventoryItemsList.add(inventoryItem);

    // searchInventoryItem
    // searchInventoryItem(productName: searchTextController.value.text);

    searchInventoryDocumentDataEntityList.isNotEmpty
        ? filterInventoryItem(filterId: 1)
        : null;

    // searchInventoryItemsList.value = _itemsList;
    // clearController();
  }

  editInventoryItem(
      {required bool isEdite, required InventoryItemsEntity inventoryItem}) {
    if (isEdite == true) {
      inventoryItemGroup.value.dropDownValue = DropDownValueModel(
          name: inventoryItem.group.toString(),
          value: inventoryItem.group.toString());
      inventoryItemProductName.value.text =
          inventoryItem.productName.toString();
      inventoryItemUnit.value.dropDownValue = DropDownValueModel(
          name: inventoryItem.unit.toString(),
          value: inventoryItem.unit.toString());
      inventoryItemnumber.value.text = inventoryItem.number.toString();

      // nameInventory.value.clear();
    }
    Get.back();
  }

  addInventoryDocumentDataEntity(
      {required InventoryDocumentDataEntity
          inventoryDocumentDataEntity}) async {
    // inventoryDocumentDataEntity.id = incrumentNumber().value;

    // inventoryDocumentDataEntity.docId = 1;
    // inventoryItemsModel.

    //
    print(
        "::::::::::::::::::::::::::::::::#######################${inventoryDocumentDataEntity.id}");
    print(
        "::::::::::::::::::::::::::::::::#######################${inventoryDocumentDataEntity.docId}");
    print(
        "::::::::::::::::::::::::::::::::#######################${inventoryDocumentDataEntity.itemId}");
    print(
        "::::::::::::::::::::::::::::::::#######################${inventoryDocumentDataEntity.itemGroupeId}");
    print(
        "::::::::::::::::::::::::::::::::#######################${inventoryDocumentDataEntity.unitId}");
    print(
        "::::::::::::::::::::::::::::::::#######################${inventoryDocumentDataEntity.quantity}");
    print(
        "::::::::::::::::::::::::::::::::#######################${inventoryDocumentDataEntity.expirDate}");
    print(
        "::::::::::::::::::::::::::::::::#######################${inventoryDocumentDataEntity.note}");
    print(
        "::::::::::::::::::::::::::::::::#######################${inventoryDocumentDataEntity.difference}");
    print(
        "::::::::::::::::::::::::::::::::#######################${inventoryDocumentDataEntity.number}");
    print(
        "::::::::::::::::::::::::::::::::#######################${inventoryDocumentDataEntity.itemBarcodeId}");
    // _inventoryDocumentDataEntityList.forEach((value) {
    //   print("inventoryDocumentDataEntity::::::::${value}");
    //   print(":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::");
    // });
    if (!inventoryDocDtataKey.currentState!.validate()) {
      print("object");
    } else {
      inventoryDocumentDataEntity.difference =
          (inventoryDocumentDataEntity.number! -
              inventoryDocumentDataEntity.quantity!);

      bool isExisit = false;
      _inventoryDocumentDataEntityList.forEach((element) {
        if (element.itemId == inventoryDocumentDataEntity.itemId &&
            element.itemGroupeId == inventoryDocumentDataEntity.itemGroupeId &&
            element.unitId == inventoryDocumentDataEntity.unitId) {
          isExisit = true;
        } else {
          isExisit = false;
        }
      });
      if (isExisit == false) {
        setRequestStatus(RequestStatus.LOADING);
        final responseData = await _addInventoryDocumentsUsecases
            .call(inventoryDocumentDataEntity);
        responseData.fold((failure) {
          message.value = failure.message;
          print("inventoryDocumentDataEntity::::::::${failure.message}");
          setRequestStatus(RequestStatus.ERROR);
        }, (data) {
          message.value = data.toString();
          print("inventoryDocumentDataEntity::::::::${message.value}");
          print(
              ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::");
          setRequestStatus(RequestStatus.COMPLLETED);
        });

        getInventoryDocuments(docId: inventoryDocumentDataEntity.docId!);

        // _inventoryDocumentDataEntityList.add(inventoryDocumentDataEntity);
        // _inventoryDocumentDataEntityList.forEach((value) {
        //   print("inventoryDocumentDataEntity::::::::${value}");
        //   print(":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::");
        // });

        // searchInventoryItem(productName: searchTextController.value.text);

        // searchInventoryItemsList.isNotEmpty
        //     ? filterInventoryItem(filterId: 1)
        //     : null;

        // searchInventoryItemsList.value = _itemsList;
        Get.back();
        clearController();
      } else {
        // Get.snackbar("ُError", "This is existing");
      }
    }
  }

  editeInventoryDocumentDataEntity(
      {required InventoryDocumentDataEntity
          inventoryDocumentDataEntity}) async {
    inventoryDocumentDataEntity.difference =
        (inventoryDocumentDataEntity.number! -
            inventoryDocumentDataEntity.quantity!);
    setRequestStatus(RequestStatus.LOADING);
    final responseData = await _updateInventoryDocumentsUsecases
        .call(inventoryDocumentDataEntity);
    responseData.fold((failure) {
      message.value = failure.message;
      setRequestStatus(RequestStatus.ERROR);
    }, (data) {
      message.value = data.toString();
      print("inventoryDocumentDataEntity::::::::${message.value}");
      print(":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::");
      setRequestStatus(RequestStatus.COMPLLETED);
    });
    Get.back();

    getInventoryDocuments(docId: inventoryDocumentDataEntity.docId!);
    clearController();
  }

  RxInt incrumentNumber() {
    if (_inventoryDocumentDataEntityList.isEmpty) {
      numberInventoryCount.value = 1;
    } else {
      numberInventoryCount.value = _inventoryDocumentDataEntityList.length + 1;
    }

    return numberInventoryCount;
  }

  searchInventoryItem({required String itemId, required int docId}) {
    // return _itemsList.firstWhereOrNull(
    //   (item) =>
    //       item.itemBarcode! == itemBarcode || item.productName! == itemBarcode,
    //   // orElse: () => InventoryItemsEntity()
    // )!;

    if (itemId == 'null' ||
        itemId == '' && searchTextController.value.text == '' ||
        searchTextController.value.text == 'null') {
      searchInventoryDocumentDataEntityList.value = [];
    } else {
      final inventoryDocumentDataEntitySearch =
          _inventoryDocumentDataEntityList.firstWhere(
        (value) =>
            value.itemId.toString().trim() == itemId.toString().trim() &&
            value.docId == docId,
        orElse: () => InventoryDocumentDataEntity(),
      );
      print("itemId***************LLLL::::::::::::::$itemId");
      if (inventoryDocumentDataEntitySearch.itemId == int.tryParse(itemId)) {
        searchInventoryDocumentDataEntityList.addIf(
            searchInventoryDocumentDataEntityList.contains(findById(
                    inventoryDataId: inventoryDocumentDataEntitySearch.id!)) ==
                false,
            inventoryDocumentDataEntitySearch);
      } else {
        searchInventoryDocumentDataEntityList.value = [];
      }
    }
  }

  InventoryItemsEntity findByNameOrBarcode(String name) {
    return inventoryItemsList.firstWhere(
      (value) =>
          value.productName!
              .trim()
              .toLowerCase()
              .contains(name.trim().toLowerCase()) ||
          value.itemBarcode!.trim().toLowerCase() == name.trim().toLowerCase(),
      orElse: () => InventoryItemsEntity(),
    );
    // return result.isNotEmpty ? result.first : InventoryItemsEntity();
  }

  List<String> abstractItemsSuggestionsCallback(String productName) {
    productsNames.value =
        inventoryItemsList.map((element) => element.productName!).toList();

    return productsNames
        .where((item) => item
            .trim()
            .toLowerCase()
            .contains(productName.trim().toLowerCase()))
        .toList();
    // return inventoryItemsList.value
    //     .where((element) => element.productName!
    //         .trim()
    //         .toLowerCase()
    //         .contains(productName.trim().toLowerCase()))
    //     .toList();
  }

  List<String> inventoryItemsSuggestionsCallback(String productName) {
    productsNames.value =
        _itemsList.map((element) => element.productName!).toList();

    return productsNames
        .where((item) => item
            .trim()
            .toLowerCase()
            .contains(productName.trim().toLowerCase()))
        .toList();
    // return inventoryItemsList.value
    //     .where((element) => element.productName!
    //         .trim()
    //         .toLowerCase()
    //         .contains(productName.trim().toLowerCase()))
    //     .toList();
  }

  filterInventoryItem({required int filterId}) {
    switch (filterId) {
      case 1:
        return searchInventoryItemsList.sort(
          (a, b) => a.productName!.compareTo(b.productName!),
        );
      case 2:
        return searchInventoryItemsList.sort(
          (a, b) => b.productName!.compareTo(a.productName!),
        );

      case 3:
        return searchInventoryItemsList.sort(
          (a, b) => a.group!.compareTo(b.group!),
        );
      case 4:
        return searchInventoryItemsList.sort(
          (a, b) => b.group!.compareTo(a.group!),
        );
      case 5:
        return searchInventoryItemsList.sort(
          (a, b) => a.unit!.compareTo(b.unit!),
        );
      case 6:
        return searchInventoryItemsList.sort(
          (a, b) => b.unit!.compareTo(a.unit!),
        );

      case 7:
        return searchInventoryDocumentDataEntityList.sort(
          (a, b) => a.quantity!.compareTo(b.quantity!),
        );
      case 8:
        return searchInventoryDocumentDataEntityList.sort(
          (a, b) => b.quantity!.compareTo(a.quantity!),
        );

      case 9:
        return searchInventoryDocumentDataEntityList.sort(
          (a, b) => a.number!.compareTo(b.number!),
        );
      case 10:
        return searchInventoryDocumentDataEntityList.sort(
          (a, b) => b.number!.compareTo(a.number!),
        );

      case 11:
        return searchInventoryDocumentDataEntityList.sort(
          (a, b) => a.difference!.compareTo(b.difference!),
        );
      case 12:
        return searchInventoryDocumentDataEntityList.sort(
          (a, b) => b.difference!.compareTo(a.difference!),
        );

      default:
        null;
    }
  }

  clearController() {
    inventoryItemProductName.value = TextEditingController();
    inventoryItemGroup.value = SingleValueDropDownController();
    inventoryItemUnit.value = SingleValueDropDownController();
    inventoryItemNote.value = TextEditingController();
    searchTextController.value = TextEditingController();
    inventoryItemnumber.value = TextEditingController();
    inventoryItemEndDateTime.value = TextEditingController();
    // nameInventory.value.clear();
    selectDate.value = DateTime.now();
    inventoryItemsModel = InventoryItemsEntity();
    inventoryDocumentDataModel = InventoryDocumentDataEntity();
    // searchInventoryDocumentDataEntityList.value = [];
    // Get.back();
  }

  InventoryItemsEntity inventoryExample = InventoryItemsEntity(
      id: 1,
      productName: "حليب",
      group: "5",
      unit: "كرتون",
      image: 'assets/images/img.png',
      quantity: 5,
      number: 0,
      difference: 0,
      itemBarcode: '12345778');
}




































// import 'dart:convert';

// import 'package:dropdown_textfield/dropdown_textfield.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:osa_pro/src/core/constants/app_images.dart';
// import 'package:osa_pro/src/core/enums/login_status.dart';
// import 'package:osa_pro/src/core/utils/convert_image.dart';
// import 'package:osa_pro/src/features/inventory_items/domain/entities/Inventory_document_data_entity.dart';
// import 'package:osa_pro/src/features/inventory_items/domain/entities/entities.dart';
// import 'package:osa_pro/src/features/inventory_items/domain/usecases/add_inventory_documents_usecases.dart';
// import 'package:osa_pro/src/features/inventory_items/domain/usecases/get_inventory_documents_usecases.dart';

// class InventoryItemsController extends GetxController {
//   final GetInventoryDocumentsUsecases _getInventoryDocumentsUsecases;
//   final AddInventoryDocumentsUsecases _addInventoryDocumentsUsecases;
//   final requestStatus = RequestStatus.NOTHING.obs;
//   RxString? imageConvertInventoryDocument = ''.obs;
//   final message = ''.obs;
//   void setRequestStatus(RequestStatus value) => requestStatus.value = value;
//   InventoryItemsController({
//     required GetInventoryDocumentsUsecases getInventoryDocumentsUsecases,
//     required AddInventoryDocumentsUsecases addInventoryDocumentsUsecases,
//   })  : _getInventoryDocumentsUsecases = getInventoryDocumentsUsecases,
//         _addInventoryDocumentsUsecases = addInventoryDocumentsUsecases;
//   final RxList<InventoryItemsEntity> _itemsList = RxList<InventoryItemsEntity>([
//     // InventoryItemsEntity(
//     //     id: 1,
//     //     productName: "حليب",
//     //     group: "5",
//     //     unit: "كرتون",
//     //     image: 'assets/images/img.png',
//     //     quantity: 5,
//     //     number: 0,
//     //     difference: 0,
//     //     itemBarcode: '12345778'),
//     // InventoryItemsEntity(
//     //     id: 2,
//     //     productName: "بسكوت",
//     //     group: "10",
//     //     unit: "حبة",
//     //     image: 'assets/images/img.png',
//     //     quantity: 15,
//     //     number: 0,
//     //     difference: 0,
//     //     itemBarcode: '12345778'),
//     // InventoryItemsEntity(
//     //     id: 3,
//     //     productName: "ماء",
//     //     group: "5",
//     //     unit: "كرتون",
//     //     image: 'assets/images/img.png',
//     //     quantity: 30,
//     //     number: 0,
//     //     difference: 0,
//     //     itemBarcode: '9675520513630'),
//   ]);
//   RxList<InventoryItemsEntity> get itemsList =>
//       RxList<InventoryItemsEntity>([..._itemsList]);

//   final RxList<InventoryDocumentDataEntity> _inventoryDocumentDataEntityList =
//       RxList<InventoryDocumentDataEntity>([]);
//   RxList<InventoryDocumentDataEntity> get inventoryDocumentDataEntityList =>
//       RxList<InventoryDocumentDataEntity>(
//           [..._inventoryDocumentDataEntityList]);

//   final RxList<InventoryItemsEntity> searchInventoryItemsList =
//       <InventoryItemsEntity>[].obs;
//   RxList<InventoryItemsEntity> inventoryItemsList =
//       <InventoryItemsEntity>[].obs;
//   RxList<String> productsNames = <String>[].obs;
//   final inventoryItemProductName = TextEditingController().obs;
//   final inventoryItemnumber = TextEditingController().obs;
//   final inventoryItemEndDateTime = TextEditingController().obs;

//   final inventoryItemGroup = SingleValueDropDownController().obs;
//   final inventoryItemUnit = SingleValueDropDownController().obs;
//   RxString selectImage = AppImages.placeholderImg.obs;
//   // RxBool selectImageAssets = true.obs;
//   var selectDate = DateTime.now().obs;

//   final searchTextController = TextEditingController().obs;
//   // final  searchFocusNode = FocusNode().obs;

//   RxInt numberInventoryCount = 0.obs;
//   RxInt filterIndex = 1.obs;
//   InventoryItemsEntity inventoryItemsModel = InventoryItemsEntity();
//   InventoryDocumentDataEntity inventoryDocumentDataModel =
//       InventoryDocumentDataEntity();

//   @override
//   void onInit() {
//     // getInventoryItems();
//     super.onInit();
//     getInventoryDocuments();
//   }

//   void getInventoryDocuments() async {
//     setRequestStatus(RequestStatus.LOADING);
//     final responseData = await _getInventoryDocumentsUsecases.call();
//     responseData.fold((failure) {
//       message.value = failure.message;
//       setRequestStatus(RequestStatus.ERROR);
//     }, (data) {
//       _inventoryDocumentDataEntityList.value = data;
//       _inventoryDocumentDataEntityList.forEach((value) {
//         print("_inventoryDocumentDataEntityList::::::::::::::::$value");
//       });

//       setRequestStatus(RequestStatus.COMPLLETED);
//     });
//   }

//   RxInt showStyleIndex = 0.obs;

//   // getInventoryItems()
//   // {
//   //   _itemsList.value = <InventoryItemsModel>[
//   // InventoryItemsModel(
//   //   id: 1,
//   //   productName: "حليب",
//   //   group: "5",
//   //   unit: "كرتون",
//   //   image: 'assets/images/img.png',
//   //   quantity: 5,
//   //   number: 50,
//   //   difference: 2,
//   // ),
//   //      InventoryItemsModel(
//   //       id: 2,
//   //       productName: "بسكوت",
//   //       group: "8",
//   //       unit: "قطعه",
//   //       image: 'assets/images/img.png',
//   //       quantity: 10,
//   //       number: 20,
//   //       difference: 0,
//   //     ),
//   //      InventoryItemsModel(
//   //       id: 3,
//   //       productName: "عصير",
//   //       group: "3",
//   //       unit: "كرتون",
//   //       image: 'assets/images/img.png',
//   //       quantity: 15,
//   //       number: 30,
//   //       difference: 8,
//   //     ),
//   //   ];
//   //   filterInventoryItem(filterId: 1);
//   //   // searchInventoryItemsList.value = _itemsList;
//   // }

//   addInventoryItem({required InventoryItemsEntity inventoryItem}) {
//     inventoryItem.id = incrumentNumber().value;
//     inventoryItem.image = inventoryItem.image ?? "assets/images/img.png";
//     // inventoryItemsModel.
//     inventoryItem.difference = inventoryItem.quantity ?? 10;
//     //     (inventoryItem.quantity! - inventoryItem.number!);
//     inventoryItemsList.add(inventoryItem);
//     searchInventoryItem(productName: searchTextController.value.text);

//     searchInventoryItemsList.isNotEmpty
//         ? filterInventoryItem(filterId: 1)
//         : null;

//     // searchInventoryItemsList.value = _itemsList;
//     // clearController();
//   }

//   editInventoryItem(
//       {required bool isEdite, required InventoryItemsEntity inventoryItem}) {
//     if (isEdite == true) {
//       inventoryItemGroup.value.dropDownValue = DropDownValueModel(
//           name: inventoryItem.group.toString(),
//           value: inventoryItem.group.toString());
//       inventoryItemProductName.value.text =
//           inventoryItem.productName.toString();
//       inventoryItemUnit.value.dropDownValue = DropDownValueModel(
//           name: inventoryItem.unit.toString(),
//           value: inventoryItem.unit.toString());
//       inventoryItemnumber.value.text = inventoryItem.number.toString();

//       // nameInventory.value.clear();
//     }
//   }

//   addInventoryDocumentDataEntity(
//       {required InventoryDocumentDataEntity
//           inventoryDocumentDataEntity}) async {
//     inventoryDocumentDataEntity.id = incrumentNumber().value;

//     // inventoryDocumentDataEntity.docId = 1;
//     // inventoryItemsModel.
//     inventoryDocumentDataEntity.difference =
//         (inventoryDocumentDataEntity.quantity! -
//             inventoryDocumentDataEntity.number!);
//     print(
//         "inventoryDocumentDataEntity.number!${inventoryDocumentDataEntity.number!}");

//     inventoryDocumentDataEntity.expirDate = "osama";
//     //

//     print(inventoryDocumentDataEntity);
//     _inventoryDocumentDataEntityList.value.forEach((value) {
//       print("inventoryDocumentDataEntity::::::::${value}");
//       print(":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::");
//     });

//     setRequestStatus(RequestStatus.LOADING);
//     final responseData =
//         await _addInventoryDocumentsUsecases.call(inventoryDocumentDataEntity);
//     responseData.fold((failure) {
//       message.value = failure.message;
//       setRequestStatus(RequestStatus.ERROR);
//     }, (data) {
//       message.value = data.toString();
//       print("inventoryDocumentDataEntity::::::::${message.value}");
//       print(":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::");
//       setRequestStatus(RequestStatus.COMPLLETED);
//     });

//     getInventoryDocuments();

//     // _inventoryDocumentDataEntityList.add(inventoryDocumentDataEntity);
//     // _inventoryDocumentDataEntityList.forEach((value) {
//     //   print("inventoryDocumentDataEntity::::::::${value}");
//     //   print(":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::");
//     // });

//     // searchInventoryItem(productName: searchTextController.value.text);

//     // searchInventoryItemsList.isNotEmpty
//     //     ? filterInventoryItem(filterId: 1)
//     //     : null;

//     // searchInventoryItemsList.value = _itemsList;
//     clearController();
//   }

//   RxInt incrumentNumber() {
//     if (_inventoryDocumentDataEntityList.isEmpty) {
//       numberInventoryCount.value = 1;
//     } else {
//       numberInventoryCount.value = _inventoryDocumentDataEntityList.length + 1;
//     }

//     return numberInventoryCount;
//   }


//   searchInventoryItem({required String productName}) {
//     // return _itemsList.firstWhereOrNull(
//     //   (item) =>
//     //       item.itemBarcode! == itemBarcode || item.productName! == itemBarcode,
//     //   // orElse: () => InventoryItemsEntity()
//     // )!;

//     if (productName.isEmpty) {
//       searchInventoryItemsList.value = [];
//     } else {
//       searchInventoryItemsList.value = inventoryItemsList.where((value) {
//         return value.productName!
//             .toString()
//             .contains(productName.trim().toString());
//       }).toList();
//     }
//   }

//   InventoryItemsEntity findByNameOrBarcode(String name) {
//     return inventoryItemsList.firstWhere(
//       (value) =>
//           value.productName!
//               .trim()
//               .toLowerCase()
//               .contains(name.trim().toLowerCase()) ||
//           value.itemBarcode!.trim().toLowerCase() == name.trim().toLowerCase(),
//       orElse: () => InventoryItemsEntity(),
//     );
//     // return result.isNotEmpty ? result.first : InventoryItemsEntity();
//   }

//   List<String> abstractItemsSuggestionsCallback(String productName) {
//     productsNames.value =
//         inventoryItemsList.map((element) => element.productName!).toList();

//     return productsNames
//         .where((item) => item
//             .trim()
//             .toLowerCase()
//             .contains(productName.trim().toLowerCase()))
//         .toList();
//     // return inventoryItemsList.value
//     //     .where((element) => element.productName!
//     //         .trim()
//     //         .toLowerCase()
//     //         .contains(productName.trim().toLowerCase()))
//     //     .toList();
//   }

//   List<String> inventoryItemsSuggestionsCallback(String productName) {
//     productsNames.value =
//         _itemsList.map((element) => element.productName!).toList();

//     return productsNames
//         .where((item) => item
//             .trim()
//             .toLowerCase()
//             .contains(productName.trim().toLowerCase()))
//         .toList();
//     // return inventoryItemsList.value
//     //     .where((element) => element.productName!
//     //         .trim()
//     //         .toLowerCase()
//     //         .contains(productName.trim().toLowerCase()))
//     //     .toList();
//   }

//   filterInventoryItem({required int filterId}) {
//     switch (filterId) {
//       case 1:
//         return searchInventoryItemsList.sort(
//           (a, b) => a.productName!.compareTo(b.productName!),
//         );
//       case 2:
//         return searchInventoryItemsList.sort(
//           (a, b) => b.productName!.compareTo(a.productName!),
//         );

//       case 3:
//         return searchInventoryItemsList.sort(
//           (a, b) => a.group!.compareTo(b.group!),
//         );
//       case 4:
//         return searchInventoryItemsList.sort(
//           (a, b) => b.group!.compareTo(a.group!),
//         );
//       case 5:
//         return searchInventoryItemsList.sort(
//           (a, b) => a.unit!.compareTo(b.unit!),
//         );
//       case 6:
//         return searchInventoryItemsList.sort(
//           (a, b) => b.unit!.compareTo(a.unit!),
//         );

//       case 7:
//         return searchInventoryItemsList.sort(
//           (a, b) => a.quantity!.compareTo(b.quantity!),
//         );
//       case 8:
//         return searchInventoryItemsList.sort(
//           (a, b) => b.quantity!.compareTo(a.quantity!),
//         );

//       case 9:
//         return searchInventoryItemsList.sort(
//           (a, b) => a.number!.compareTo(b.number!),
//         );
//       case 10:
//         return searchInventoryItemsList.sort(
//           (a, b) => b.number!.compareTo(a.number!),
//         );

//       case 11:
//         return searchInventoryItemsList.sort(
//           (a, b) => a.difference!.compareTo(b.difference!),
//         );
//       case 12:
//         return searchInventoryItemsList.sort(
//           (a, b) => b.difference!.compareTo(a.difference!),
//         );

//       default:
//         null;
//     }
//   }

//   clearController() {
//     inventoryItemProductName.value.clear();
//     inventoryItemGroup.value = SingleValueDropDownController();
//     inventoryItemUnit.value = SingleValueDropDownController();
//     inventoryItemnumber.value.clear();
//     inventoryItemEndDateTime.value.clear();
//     // nameInventory.value.clear();
//     selectDate.value = DateTime.now();
//     inventoryItemsModel = InventoryItemsEntity();
//     inventoryDocumentDataModel = InventoryDocumentDataEntity();
//     Get.back();
//   }

//   InventoryItemsEntity inventoryExample = InventoryItemsEntity(
//       id: 1,
//       productName: "حليب",
//       group: "5",
//       unit: "كرتون",
//       image: 'assets/images/img.png',
//       quantity: 5,
//       number: 0,
//       difference: 0,
//       itemBarcode: '12345778');
// }
