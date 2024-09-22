import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:osa_pro/src/core/constants/colors.dart';
import 'package:osa_pro/src/core/constants/dimensions.dart';
import 'package:osa_pro/src/core/utils/date_converter.dart';
import 'package:osa_pro/src/core/widgets/custom_text.dart';
import 'package:osa_pro/src/core/widgets/hieght_spacer.dart';
import 'package:osa_pro/src/core/widgets/width_spacer.dart';
import 'package:osa_pro/src/features/branchinfo/presentation/getX/branchinfo_controller.dart';
import 'package:osa_pro/src/features/store_inventory_document/domain/entities/doc_entities.dart';
import 'package:osa_pro/src/features/store_inventory_document/presentation/getX/store_inventory_document_controller.dart';
import 'package:osa_pro/src/features/user_store/presentation/getX/user_store_controller.dart';
import 'custom_info_widget.dart';
import 'inventory_document_settings_widget.dart';

class StoreInventoryDocumentWidget extends StatelessWidget {
  final UserStoreController _storeController = Get.find();
  final BranchinfoController _branchController = Get.find();
  final StoreInventoryDocumentController inventoryDocumentController;

  StoreInventoryDocumentWidget({
    super.key,
    required this.isExpanded,
    // required this.indexItem,
    required this.indexId,
    required this.inventoryDocument,
    required this.docSettingList,
    this.onTapExpanded,
    required this.inventoryDocumentController,
  });

  final bool isExpanded;
  // final RxInt indexItem;
  final int indexId;
  final DocEntities inventoryDocument;
  final List<Map<String, dynamic>> docSettingList;
  final VoidCallback? onTapExpanded;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.whiteColor,
      child: Column(
        children: [
          GestureDetector(
            onTap: onTapExpanded,
            // () {
            //   isExpanded.value =
            //       isExpanded.value ? false : true;
            //   indexItem.value = indexId;
            //   // isExpanded.value = isExpanded.value == false?true:false;
            //   // if(indexItem.value == index && isExpanded.value == true)
            //   // {
            //   //   isExpanded.value= false;

            //   // }
            // },
            child: Container(
              width: double.infinity,
              height: SizeManager.s95,
              padding: const EdgeInsets.all(PaddingManager.p10),
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                border: Border.all(
                  color: AppColors.borderColor,
                  width: SizeManager.widthBorder,
                ),
                borderRadius: BorderRadius.circular(RadiusManager.r15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        // flex: 4,
                        child: Obx(
                          () => CustomTextWidget(
                              text: _storeController
                                  .findById(inventoryDocument.storeId!)
                                  .value
                                  .name,
                              style: Theme.of(context).textTheme.bodyMedium!
                              // .copyWith(
                              //   fontWeight:
                              //       // FontWeightManager.semiBold,
                              // ),
                              ),
                        ),
                      ),
                      CustomInfoWidget(
                        width: SizeManager.s65,
                        height: SizeManager.s24,
                        widthSpacer: 0,
                        title: inventoryDocument.docId.toString(),
                        bgColor: AppColors.primaryColor.withOpacity(0.1),
                        titleColor: AppColors.primaryColor,
                        // fontWeight: FontWeightManager.bold,
                      ),
                      //  Container(
                      //   width: 67,
                      //   height: 25,
                      //   alignment: Alignment.center,
                      //   // padding: EdgeInsets.symmetric(
                      //   //   horizontal: 5,
                      //   //   vertical: 5,
                      //   // ),
                      //   decoration: BoxDecoration(
                      //     color: Color(0x102F4670),
                      //     // color: AppColors.primaryColor.withOpacity(0.1),
                      //     borderRadius: BorderRadius.circular(5),
                      //   ),
                      //   child: Text("21548",
                      //   style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      //     fontSize: FontSize.fontSizeExtraSmall,
                      //     fontWeight: FontWeightManager.bold,
                      //     color: AppColors.primaryColor,
                      //   ),
                      //   ),
                      //  )
                    ],
                  ),
                  const HieghtSpacer(height: SizeManager.s10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        flex: 3,
                        child: CustomInfoWidget(
                          title: inventoryDocument.storeId.toString(),
                          width: SizeManager.s105,
                        ),
                      ),
                      // const WidthSpacer(width: SizeManager.s5),
                      Flexible(
                        flex: 3,
                        child: CustomInfoWidget(
                          title:
                              // inventoryDocument.docDateTime!.toString(),
                              DateConverter.convertStringToDatetimeSlash(
                                  DateTime.parse(inventoryDocument.docDateTime!
                                      .toString())),
                          width: SizeManager.s85,
                          mainAxisAlignment: MainAxisAlignment.center,
                        ),
                      ),
                      // const WidthSpacer(width: SizeManager.s5),
                      Flexible(
                        flex: 2,
                        child: CustomInfoWidget(
                          title: inventoryDocument.docId.toString(),
                          width: SizeManager.s65,
                          mainAxisAlignment: MainAxisAlignment.center,

                          // width: SizeManager.s95,
                        ),
                      ),
                      const WidthSpacer(width: SizeManager.s10),
                      Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(PaddingManager.p8),
                        decoration: BoxDecoration(
                            color: AppColors.greenColor.withOpacity(0.1),
                            shape: BoxShape.circle),
                        child: const FaIcon(
                          FontAwesomeIcons.arrowDown,
                          size: SizeManager.s16,
                          color: AppColors.greenColor,
                        ),
                      ),
                      // const WidthSpacer(width: SizeManager.s5),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const HieghtSpacer(height: SizeManager.s8),
          isExpanded && inventoryDocument.docId == indexId
              ? InventoryDocumentSettingsWidget(
                  settingDataList: docSettingList,
                  docId: inventoryDocument.docId!,
                  inventoryDocument: inventoryDocument,
                  inventoryDocumentController: inventoryDocumentController,
                )
              : Container(),
          // Obx(
          //   () => isExpanded.value && indexItem.value == indexId
          //       ?
          //       : Container(),
          // ),
        ],
      ),
    );
  }
}
