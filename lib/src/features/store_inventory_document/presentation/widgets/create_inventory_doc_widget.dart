import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:osa_pro/src/core/constants/colors.dart';
import 'package:osa_pro/src/core/constants/dimensions.dart';
import 'package:osa_pro/src/core/routes/routes.dart';
import 'package:osa_pro/src/core/utils/custom_date_time_widget.dart';
import 'package:osa_pro/src/core/utils/date_converter.dart';
import 'package:osa_pro/src/core/widgets/custom_button.dart';
import 'package:osa_pro/src/core/widgets/custom_text.dart';
import 'package:osa_pro/src/core/widgets/customer_drop_down_field.dart';
import 'package:osa_pro/src/core/widgets/customer_text_field.dart';
import 'package:osa_pro/src/core/widgets/hieght_spacer.dart';
import 'package:osa_pro/src/core/widgets/width_spacer.dart';
import 'package:osa_pro/src/features/branchinfo/presentation/getX/branchinfo_controller.dart';
import 'package:osa_pro/src/features/store_inventory_document/presentation/getX/store_inventory_document_controller.dart';
import 'package:osa_pro/src/features/user_store/presentation/getX/user_store_controller.dart';
import 'custom_info_widget.dart';

class CreateInventoryDocWidget extends StatelessWidget {
  CreateInventoryDocWidget({
    super.key,
    required this.inventoryDocumentController,
    this.isEditeInventoryDoc,
    this.docId,
  });
  final StoreInventoryDocumentController inventoryDocumentController;
  final BranchinfoController _branchController = Get.find();
  final UserStoreController _userStoreController = Get.find();
  final bool? isEditeInventoryDoc;
  final int? docId;
  // final InventoryDocument inventoryDocumentController.inventoryDocumentModel;

  @override
  Widget build(BuildContext context) {
    // isEditeInventoryDoc() {
    if (isEditeInventoryDoc == true && docId != null) {
      inventoryDocumentController.docEntities.value =
          inventoryDocumentController.findById(docId: docId!);
      inventoryDocumentController.inventoryDocName.value.dropDownValue =
          DropDownValueModel(
        name: _branchController
            .findById(
                branchId: inventoryDocumentController.docEntities.value.docId!)
            .name,
        value: _branchController
            .findById(
                branchId: inventoryDocumentController.docEntities.value.docId!)
            .name,
      );

      inventoryDocumentController.inventoryDocStoreName.value.dropDownValue =
          DropDownValueModel(
        name: _userStoreController
            .findById(inventoryDocumentController.docEntities.value.storeId!)
            .value
            .name,
        value: _userStoreController
            .findById(inventoryDocumentController.docEntities.value.storeId!)
            .value
            .name,
      );
      inventoryDocumentController.docNoteController.value.text =
          inventoryDocumentController.docEntities.value.docNote!;
      inventoryDocumentController.locationInventory.value.text =
          inventoryDocumentController.docEntities.value.docLocation!;
      //
      inventoryDocumentController.selectDate.value = DateTime.parse(
          inventoryDocumentController.docEntities.value.docDateTime!);
      inventoryDocumentController.numberInventoryCount.value =
          inventoryDocumentController.docEntities.value.docId!;
    } else {
      inventoryDocumentController.clearController();
    }
    // }

    return Form(
      key: inventoryDocumentController.inventoryStoreKey,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 15,
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: CustomTextWidget(
                        text: "invoice_number".tr,
                        textAlign: TextAlign.start,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontSize: AppFontSize.fontSizeDefault,
                              // fontWeight: FontWeightManager.semiBold,
                              // color: AppColors.blackColor,
                            ),
                      ),
                    ),
                    const WidthSpacer(width: SizeManager.s5),
                    Expanded(
                        flex: 2,
                        child: Obx(
                          () => Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              CustomInfoWidget(
                                width: SizeManager.s65,
                                // height: 30,
                                title:
                                    "${isEditeInventoryDoc == true ? inventoryDocumentController.numberInventoryCount.value : inventoryDocumentController.incrumentNumber().value}",
                                bgColor: AppColors.whiteColor,
                                titleColor: AppColors.primaryColor,
                                widthSpacer: 0,
                              ),
                            ],
                          ),
                        )),
                  ],
                ),
              ),
              const WidthSpacer(width: SizeManager.s8),
              Expanded(
                flex: 16,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      flex: 3,
                      child: CustomTextWidget(
                        text: "invoice_date".tr,
                        textAlign: TextAlign.start,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontSize: AppFontSize.fontSizeDefault,
                              // fontWeight: FontWeightManager.semiBold,
                              // color: AppColors.blackColor,
                            ),
                      ),
                    ),
                    const WidthSpacer(width: SizeManager.s5),
                    Expanded(
                      flex: 3,
                      child: GestureDetector(
                        onTap: () async {
                          inventoryDocumentController.selectDate.value =
                              await customDateTimeWidget(
                            selectDate:
                                inventoryDocumentController.selectDate.value,
                          );
                          // inventoryDocumentController
                          //         .inventoryDocumentModel.inventoryDocDateTime =
                          // inventoryDocumentController.selectDate.value
                          //     .toString();
                          inventoryDocumentController
                                  .docEntities.value.docDateTime =
                              inventoryDocumentController.selectDate.value
                                  .toString();
                        },
                        child: Obx(
                          () => Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              CustomInfoWidget(
                                // width: 90,
                                // height: 36,
                                title:
                                    DateConverter.convertStringToDatetimeSlash(
                                        DateTime.parse(
                                            inventoryDocumentController
                                                .selectDate.value
                                                .toString())),
                                bgColor: AppColors.whiteColor,
                                titleColor: AppColors.primaryColor,
                                widthSpacer: 0,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Obx(
            () => CustomDropDownTextFieldWidget(
              controller: inventoryDocumentController.inventoryDocName.value,
              hintText: "branch_name".tr,
              titleText: "branch_name".tr,
              // prefixIcon: Icons.account_balance_rounded,
              onChanged: (value) {
                DropDownValueModel branchName = value;
                final branchInfo =
                    _branchController.findByName(branchName.name);
                if (branchInfo.name.isNotEmpty) {
                  inventoryDocumentController.docEntities.value.branchId =
                      branchInfo.id;
                } else {}
                // DropDownValueModel branchName = value;
                // print(branchName.name);
                // DropDownValueModel.fromJson(value).name;
                // inventoryDocumentController
                // .inventoryDocumentModel.inventoryDocName = branchName.name;
              },
              dropDownList: List.generate(
                _branchController.branchList.length,
                (index) => DropDownValueModel(
                  name: _branchController.branchList[index].name,
                  value: _branchController.branchList[index].name,
                ),
              ).toList(),
              validator: (value) {
                if (value!.isEmpty) {
                  return "required ";
                } else {
                  return null;
                }
              },
              // const [
              //   DropDownValueModel(
              //     name: "Osama",
              //     value: "Osama",
              //   ),
              //   DropDownValueModel(
              //     name: "Ahmed",
              //     value: "Ahmed",
              //   ),
              //   DropDownValueModel(
              //     name: "Mohmmed",
              //     value: "Mohmmed",
              //   ),
              //   DropDownValueModel(
              //     name: "Ibrhime",
              //     value: "Ibrhime",
              //   ),
              // ],
            ),
          ),
          Obx(
            () => CustomDropDownTextFieldWidget(
              controller:
                  inventoryDocumentController.inventoryDocStoreName.value,
              hintText: "store_name".tr,
              titleText: "store_name".tr,
              // prefixIcon: FontAwesomeIcons.networkWired,
              // prefixIcon: Icons.account_tree_rounded,
              onChanged: (value) {
                DropDownValueModel storeName = value;
                // inventoryDocumentController
                //     .inventoryDocumentModel.inventoryDocNameStore = storeName.name;
                final storeEntity =
                    _userStoreController.findByName(storeName.name);
                if (storeEntity.name.isNotEmpty) {
                  inventoryDocumentController.docEntities.value.storeId =
                      storeEntity.id;
                } else {}
              },

              dropDownList: List.generate(
                _userStoreController.storeList.value.length,
                (index) => DropDownValueModel(
                  name: _userStoreController.storeList.value[index].name,
                  value: _userStoreController.storeList.value[index].name,
                ),
              ).toList(),
              validator: (value) {
                if (value!.isEmpty) {
                  return "required";
                } else {
                  return null;
                }
              },
              //  const [
              //   DropDownValueModel(
              //     name: "Store Ibrhime",
              //     value: "sIbrhime",
              //   ),
              //   DropDownValueModel(
              //     name: "Store Osama",
              //     value: "Osama",
              //   ),
              //   DropDownValueModel(
              //     name: "Store Mohmmed",
              //     value: "Mohmmed",
              //   ),
              //   DropDownValueModel(
              //     name: "Store Ahmed",
              //     value: "Ahmed",
              //   ),
              // ],
            ),
          ),
          Obx(
            () => CustomerTextFieldNew(
              controller: inventoryDocumentController.docNoteController.value,
              hintText: "",
              titleText: "notes".tr,
              // prefixIcon: Icons.note_alt_rounded,
              // prefixIconColor: AppColors.primaryColor,
              maxLines: 2,
              onChanged: (value) {
                // inventoryDocumentController
                //     .inventoryDocumentModel.inventoryDocData = value;
                inventoryDocumentController.docEntities.value.docNote =
                    inventoryDocumentController.docNoteController.value.text;
              },
            ),
          ),
          const HieghtSpacer(height: SizeManager.s10),
          GestureDetector(
            onTap: () {
              final location = Get.toNamed(RoutesName.googleMapPage);
            },
            child: Row(
              children: [
                const FaIcon(
                  FontAwesomeIcons.location,
                  size: SizeManager.s20,
                  color: AppColors.lightBlackColor,
                ),
                const WidthSpacer(width: SizeManager.s10),
                CustomTextWidget(
                  text: "geographical_location".tr,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        // fontWeight: FontWeightManager.semiBold,
                        // fontSize: FontSize.fontSizeDefault,
                        color: AppColors.lightBlackColor,
                      ),
                ),
              ],
            ),
          ),
          const HieghtSpacer(height: SizeManager.s10),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: CustomButton(
                  buttonText:
                      isEditeInventoryDoc == true ? "edite".tr : "save".tr,
                  onTap: () {
                    // inventoryDocumentController
                    //         .inventoryDocumentModel.inventoryDocDateTime =
                    inventoryDocumentController.docEntities.value.docDateTime =
                        inventoryDocumentController.selectDate.value.toString();

                    isEditeInventoryDoc == true
                        ? inventoryDocumentController.editeInventorDocument(
                            inventoryDocumentController.docEntities.value)
                        : inventoryDocumentController.addInventorDocument(
                            // inventoryDoc:
                            //     inventoryDocumentController.inventoryDocumentModel
                            );
                    // inventoryDocumentModel = InventoryDocument();
                  },
                ),
              ),
              const WidthSpacer(width: SizeManager.s8),
              Expanded(
                flex: 1,
                child: CustomButton(
                  buttonText: "save_and_inventory".tr,
                  isBorder: true,
                  borderColor: AppColors.primaryColor,
                  textColor: AppColors.primaryColor,
                  backgroundColor: Colors.transparent,
                  onTap: () {
                    // inventoryDocumentController
                    //         .inventoryDocumentModel.inventoryDocDateTime =
                    //     inventoryDocumentController.selectDate.value.toString();

                    inventoryDocumentController.docEntities.value.docDateTime =
                        inventoryDocumentController.selectDate.value.toString();

                    isEditeInventoryDoc == true
                        ? inventoryDocumentController.editeInventorDocument(
                            inventoryDocumentController.docEntities.value)
                        : inventoryDocumentController.addInventorDocument(
                            // inventoryDoc:
                            //     inventoryDocumentController.inventoryDocumentModel
                            );
                    Get.toNamed(RoutesName.inventoryItemsPage,
                        arguments: {'docId': docId});
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
