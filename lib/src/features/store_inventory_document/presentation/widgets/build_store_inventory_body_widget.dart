import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:osa_pro/src/core/constants/dimensions.dart';
import 'package:osa_pro/src/core/enums/login_status.dart';
import 'package:osa_pro/src/core/widgets/custom_loader.dart';
import 'package:osa_pro/src/core/widgets/no_data_screen.dart';
// import 'package:osa_pro/src/features/branchinfo/presentation/getX/branchinfo_controller.dart';
import 'package:osa_pro/src/features/store_inventory_document/presentation/getX/store_inventory_document_controller.dart';
import 'package:osa_pro/src/features/store_inventory_document/presentation/widgets/store_inventory_doc_widget.dart';

class BuildStoreInventoryBodyWidget extends StatelessWidget {
  BuildStoreInventoryBodyWidget({
    super.key,
    required this.inventoryDocumentController,
    required this.docSettingList,
    required this.titleNoData,
  });

  final StoreInventoryDocumentController inventoryDocumentController;
  final List<Map<String, dynamic>> docSettingList;
  final String titleNoData;
  // final BranchinfoController _branchController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => inventoryDocumentController.requestStatus.value ==
              RequestStatus.LOADING
          ? CustomLoader(
              isLoading: inventoryDocumentController.requestStatus.value ==
                  RequestStatus.LOADING,
            )
          : SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(PaddingManager.p5),
                child: Column(
                  children: [
                    inventoryDocumentController.inventoryDocList.isNotEmpty
                        ? ListView.builder(
                            itemCount: inventoryDocumentController
                                .inventoryDocList.length,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return Obx(() => StoreInventoryDocumentWidget(
                                  onTapExpanded: () {
                                    // print(inventoryDocumentController.isExpandedSetting.value
                                    // &&inventoryDocumentController.indexExpandedSetting.value ==
                                    // inventoryDocumentController.inventoryDocList[index].inventoryDocId!);

                                    switch (inventoryDocumentController
                                            .isExpandedSetting.value &&
                                        inventoryDocumentController
                                                .indexExpandedSetting.value ==
                                            inventoryDocumentController
                                                .inventoryDocList[index]
                                                .docId!) {
                                      case false:
                                        inventoryDocumentController
                                            .isExpandedSetting.value = true;
                                        break;
                                      case true:
                                        inventoryDocumentController
                                            .isExpandedSetting.value = false;
                                        break;
                                    }
                                    // inventoryDocumentController.isExpandedSetting.value =
                                    // inventoryDocumentController.isExpandedSetting.value &&
                                    // inventoryDocumentController.inventoryDocList[index].inventoryDocId!
                                    // ==
                                    // inventoryDocumentController.inventoryDocList[index].inventoryDocId!?
                                    //  false:
                                    //  inventoryDocumentController.inventoryDocList[index].inventoryDocId!
                                    // ==
                                    // inventoryDocumentController.inventoryDocList[index].inventoryDocId!?
                                    // inventoryDocumentController.isExpandedSetting.value= false?
                                    // inventoryDocumentController.isExpandedSetting.value= true

                                    //  ;
                                    inventoryDocumentController
                                            .indexExpandedSetting.value =
                                        inventoryDocumentController
                                            .inventoryDocList[index].docId!;
                                    // = inventoryDocumentController.inventoryDocList[index].inventoryDocId!;
                                  },
                                  isExpanded: inventoryDocumentController
                                      .isExpandedSetting.value,
                                  indexId: inventoryDocumentController
                                      .indexExpandedSetting.value,
                                  inventoryDocument: inventoryDocumentController
                                      .inventoryDocList.value[index],
                                  docSettingList: docSettingList,
                                  inventoryDocumentController:
                                      inventoryDocumentController));
                            },
                          )
                        : Center(child: NoDataScreen(title: titleNoData)),
                  ],
                ),
              ),
            ),
    );
  }
}
