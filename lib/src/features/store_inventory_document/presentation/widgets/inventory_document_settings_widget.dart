import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:osa_pro/src/core/constants/colors.dart';
import 'package:osa_pro/src/core/constants/dimensions.dart';
import 'package:osa_pro/src/core/utils/app_messages.dart';
import 'package:osa_pro/src/core/widgets/custom_bottom_sheet.dart';
import 'package:osa_pro/src/core/widgets/custom_text.dart';
import 'package:osa_pro/src/core/widgets/hieght_spacer.dart';
import 'package:osa_pro/src/features/inventory_items/presentation/getX/inventoryitems_controller.dart';
import 'package:osa_pro/src/features/store_inventory_document/domain/entities/doc_entities.dart';
import 'package:osa_pro/src/features/store_inventory_document/presentation/getX/store_inventory_document_controller.dart';
import 'package:osa_pro/src/features/store_inventory_document/presentation/widgets/create_inventory_doc_widget.dart';

class InventoryDocumentSettingsWidget extends StatelessWidget {
  final StoreInventoryDocumentController inventoryDocumentController;
  final InventoryItemsController _inventoryItemsController = Get.find();

  InventoryDocumentSettingsWidget({
    super.key,
    required this.settingDataList,
    required this.docId,
    required this.inventoryDocumentController,
    this.inventoryDocument,
  });
  final List<Map<String, dynamic>> settingDataList;
  final int docId;
  final DocEntities? inventoryDocument;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // height: 75,
      margin: const EdgeInsets.only(bottom: MarginManager.m10),
      // margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      padding: const EdgeInsets.all(PaddingManager.p10),
      decoration: BoxDecoration(
        color: AppColors.grayColor,
        // color: AppColors.lightGrayColor,
        // border: Border.all(
        //   color: AppColors.borderColor,
        //   width: 1,
        // ),
        borderRadius: BorderRadius.circular(RadiusManager.r15),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              settingDataList.length,
              (index) => CustomColumnIconAndText(
                onTap: () => onTapSetting(
                    inventoryDocumentController: inventoryDocumentController,
                    settingId: settingDataList[index]['id'],
                    docId: docId,
                    page: settingDataList[index]['page'],
                    inventoryItemsController: _inventoryItemsController),
                //  Get.toNamed(settingDataList[index]['page'],
                //     arguments: {'docId': docId}),
                title: settingDataList[index]['title'],
                icon: settingDataList[index]['icon'],
                textStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontSize: AppFontSize.fontSizeExtraSmall,
                      color: AppColors.lightBlackColor,
                      // fontWeight:
                      //     FontWeightManager
                      //         .semiBold,
                    ),
              ),
            ),
          ),
          // HieghtSpacer(height: 10),
        ],
      ),
    );
  }
}

onTapSetting(
    {required StoreInventoryDocumentController inventoryDocumentController,
    required InventoryItemsController inventoryItemsController,
    required int settingId,
    required int docId,
    String? page}) {
  final inventory = inventoryDocumentController.findById(docId: docId);
  switch (settingId) {
    case 1:
      if (inventory.docStatus == 0) {
        return customBottomSheetWidget(
            childWidget: CreateInventoryDocWidget(
          inventoryDocumentController: inventoryDocumentController,
          isEditeInventoryDoc: true,
          docId: docId,
        ));
      } else {
        Get.snackbar("معتمد", "هذه الوثيقة تم اعتمادها");
      }

    case 2:
      if (inventory.docStatus == 0) {
        inventory.docStatus = 1;
        inventoryDocumentController.editeInventorDocument(inventory);
      }
    // return;
    case 3:
      return Get.toNamed(page!, arguments: {'docId': docId});
    case 4:
      return;

    case 5:
      if (inventory.docStatus == 0) {
        AppMessages.showDialog(
          title: "حذف",
          description: 'هل تريد حذف هذا المخزن',
          icon: FontAwesomeIcons.trash,
          iconColor: AppColors.redColor,
          textBtnColor: AppColors.redColor,
          titleColor: AppColors.redColor.withOpacity(0.1),
          action: () async {
            inventoryItemsController.getInventoryDocuments(docId: docId);
            if (inventoryItemsController
                .inventoryDocumentDataEntityList.isNotEmpty) {
              await inventoryItemsController.deleteDoc(docId: docId);
            }

            inventoryDocumentController.deleteInventorDocument(docId);
          },
        );
      } else {
        Get.snackbar("معتمد", "هذه الوثيقة تم اعتمادها");
      }
      return;
    case 6:
      return;
  }
}

class CustomColumnIconAndText extends StatelessWidget {
  final String title;
  final IconData icon;
  final TextStyle? textStyle;
  final double? iconSize;
  final void Function()? onTap;
  final Color? iconColor;
  const CustomColumnIconAndText({
    super.key,
    required this.title,
    required this.icon,
    this.textStyle,
    this.iconSize,
    this.onTap,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: iconSize ?? SizeManager.s30,
            color: iconColor ?? AppColors.primaryColor,
          ),
          const HieghtSpacer(height: SizeManager.s5),
          CustomTextWidget(
            text: title,
            style: textStyle ?? Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
