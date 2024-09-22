// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:osa_pro/src/core/config/config.dart';
import 'package:osa_pro/src/core/enums/login_status.dart';
import 'package:osa_pro/src/core/services/shared/app_shared_per_get.dart';

import 'package:osa_pro/src/features/store_inventory_document/domain/entities/doc_entities.dart';
import 'package:osa_pro/src/features/store_inventory_document/domain/entities/entities.dart';
import 'package:osa_pro/src/features/store_inventory_document/domain/usecases/add_doc_usecases.dart';
import 'package:osa_pro/src/features/store_inventory_document/domain/usecases/delete_doc_usecases.dart';
import 'package:osa_pro/src/features/store_inventory_document/domain/usecases/edite_doc_usecases.dart';
import 'package:osa_pro/src/features/store_inventory_document/domain/usecases/get_docs_usecases.dart';

class StoreInventoryDocumentController extends GetxController {
  final AddDocUsecases _addDocUsecases;
  final DeleteDocUsecases _deleteDocUsecases;
  final EditeDocUsecases _editeDocUsecases;
  final GetDocsUsecases _getDocsUsecases;

  StoreInventoryDocumentController(
      {required AddDocUsecases addDocUsecases,
      required EditeDocUsecases editeDocUsecases,
      required DeleteDocUsecases deleteDocUsecases,
      required GetDocsUsecases getDocsUsecases})
      : _addDocUsecases = addDocUsecases,
        _deleteDocUsecases = deleteDocUsecases,
        _editeDocUsecases = editeDocUsecases,
        _getDocsUsecases = getDocsUsecases;

  final RxList<DocEntities> _inventoryDocList = RxList<DocEntities>([]);
  //   [
  // InventoryDocument(
  //   inventoryDocId: 1,
  //   inventoryDocData: "osama",
  //   inventoryDocDateTime: "${DateTime.now()}",
  //   inventoryDocLocation: "Ibb",
  //   inventoryDocName: "Osama",
  //   inventoryDocNameStore: "osamaosama",
  //   categoryInventoryCount: 10101,

  // ),

  //   ].obs
  // ;

  RxList<DocEntities> get inventoryDocList =>
      RxList<DocEntities>([..._inventoryDocList]);
  RxInt numberInventoryCount = 0.obs;
  final AppSharedPerGet _appSharedPerGet = sl();

  final numberInventory = TextEditingController().obs;
  final dateTimeInventory = TextEditingController().obs;
  final dataInventory = TextEditingController().obs;
  final docNoteController = TextEditingController().obs;
  // final nameInventory = TextEditingController().obs;
  // final nameStoreInventory = TextEditingController().obs;
  final locationInventory = TextEditingController().obs;

  final inventoryDocName = SingleValueDropDownController().obs;
  final inventoryDocStoreName = SingleValueDropDownController().obs;

  final GlobalKey<FormState> inventoryStoreKey = GlobalKey();
  var selectDate = DateTime.now().obs;

  // Show Widget Document Setting
  RxBool isExpandedSetting = false.obs;
  RxInt indexExpandedSetting = 0.obs;
  final requestStatus = RequestStatus.NOTHING.obs;

  void setRequestStatus(RequestStatus value) => requestStatus.value = value;

  //
  @override
  void onInit() {
    super.onInit();
    getDocs();
  }

  // Model
  Rx<DocEntities> docEntities = Rx(DocEntities(
    docId: 0,
    docDateTime: '',
    branchId: 0,
    docNote: '',
    docLocation: '',
    docStatus: 0,
    storeId: 0,
    userId: 0,
  ));
  StoreInventoryDocumentEntity inventoryDocument = StoreInventoryDocumentEntity(
    inventoryDocId: 1,
    inventoryDocData: "osama",
    inventoryDocDateTime: "${DateTime.now()}",
    inventoryDocLocation: "Ibb",
    inventoryDocName: "Osama",
    inventoryDocNameStore: "osamaosama",
    categoryInventoryCount: 10101,
  );

  addInventorDocument() async {
    // StoreInventoryDocumentEntity inventoryDocument =
    // StoreInventoryDocumentEntity(
    // inventoryDocId: incrumentNumber().value,
    // categoryInventoryCount: incrumentNumber().value,
    // inventoryDocData: inventoryDocumentModel.inventoryDocData,
    // inventoryDocLocation: "${incrumentNumber().value} location",
    // inventoryDocNameStore:
    //     inventoryDocStoreName.value.dropDownValue!.value.toString(),
    // inventoryDocName: inventoryDocName.value.dropDownValue!.value.toString(),
    // inventoryDocDateTime: selectDate.value.toString(),
    // );
    // inventoryDoc.inventoryDocId = incrumentNumber().value;
    // inventoryDoc.categoryInventoryCount = incrumentNumber().value;
    // inventoryDoc.inventoryDocData = "${inventoryDoc.inventoryDocData} New";
    // inventoryDoc.inventoryDocLocation = "${incrumentNumber().value} location";
    docEntities.value.userId = int.tryParse(_appSharedPerGet.getUserId!);
    docEntities.value.docId = incrumentNumber().value;
    docEntities.value.docLocation = "osama";

    // final branchName = inventoryDocName.value.dropDownValue!.name.toString();
    // docEntities.value.docDateTime = "${DateTime.now()}";

    if (!inventoryStoreKey.currentState!.validate()) {
      print("object");
    } else {
      final response = await _addDocUsecases.call(docEntities.value);
      response.fold((failure) {
        print("Error::::::::::");
      }, (data) {
        print("Succsess::::::::::");
      });
      // _inventoryDocList.add(docEntities.value);
      getDocs();
      Get.back();
      clearController();
    }
  }

  editeInventorDocument(DocEntities docEntities) async {
    print("docEntities:::::::::: $docEntities");
    final response = await _editeDocUsecases.call(docEntities);
    response.fold((failure) {
      print("Error::::::::::");
    }, (data) {
      print("Succsess::::::::::");
    });
    // _inventoryDocList.add(docEntities.value);
    getDocs();
    Get.back();
    clearController();
  }

  getDocs() async {
    setRequestStatus(RequestStatus.LOADING);
    final response = await _getDocsUsecases.call();
    response.fold((failure) {
      print("Error::::::::::${failure.message}");
      setRequestStatus(RequestStatus.ERROR);
    }, (data) {
      _inventoryDocList.value = data;
      setRequestStatus(RequestStatus.COMPLLETED);
      _inventoryDocList.value.forEach((value) {
        print(value.docId);
      });
      print("Succsess::::::::::");
    });
  }

  RxInt incrumentNumber() {
    if (_inventoryDocList.value.isEmpty) {
      numberInventoryCount.value = 1;
    } else {
      numberInventoryCount.value = _inventoryDocList.last.docId! + 1;
    }

    return numberInventoryCount;
  }

  DocEntities findById({required int docId}) {
    return _inventoryDocList.firstWhere((value) => value.docId == docId);
  }

  @override
  void dispose() {
    numberInventory.value.dispose();
    // nameInventory.value.dispose();
    dateTimeInventory.value.dispose();
    dataInventory.value.dispose();
    inventoryDocName.value.dispose();
    inventoryDocStoreName.value.dispose();
    super.dispose();
  }

  clearController() {
    numberInventory.value.clear();
    inventoryDocName.value = SingleValueDropDownController();
    dateTimeInventory.value.clear();
    dataInventory.value.clear();
    // nameInventory.value.clear();
    inventoryDocStoreName.value = SingleValueDropDownController();
    docNoteController.value.clear();
    selectDate.value = DateTime.now();
    // inventoryDocumentModel = StoreInventoryDocumentEntity();
    // Get.back();
  }

  deleteInventorDocument(int docId) async {
    final response = await _deleteDocUsecases.call(findById(docId: docId));
    response.fold((failure) {
      print("Error::::::::::");
    }, (data) {
      print("Succsess::::::::::");
    });
    // _inventoryDocList.add(docEntities.value);
    getDocs();
    // Get.back();
    // clearController();

    // return _inventoryDocList.removeWhere((value) => value.docId == docId);
  }
}
