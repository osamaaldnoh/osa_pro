import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:osa_pro/src/core/constants/colors.dart';
import 'package:osa_pro/src/core/constants/dimensions.dart';
import 'package:osa_pro/src/core/utils/app_messages.dart';
import 'package:osa_pro/src/core/utils/convert_image.dart';
import 'package:osa_pro/src/core/widgets/custom_bottom_sheet.dart';
import 'package:osa_pro/src/core/widgets/custom_file_image.dart';
import 'package:osa_pro/src/core/widgets/custom_text.dart';
import 'package:osa_pro/src/core/widgets/hieght_spacer.dart';
import 'package:osa_pro/src/core/widgets/width_spacer.dart';
import 'package:osa_pro/src/features/inventory_items/domain/entities/entities.dart';
import 'package:osa_pro/src/features/inventory_items/presentation/getX/inventoryitems_controller.dart';
import 'package:osa_pro/src/features/inventory_items/presentation/widgets/create_inventory_item_widget.dart';
import 'package:osa_pro/src/features/store_inventory_document/presentation/widgets/custom_info_widget.dart';

class BuildContainerInventoryItemWidget extends StatelessWidget {
  BuildContainerInventoryItemWidget({
    super.key,
    required this.inventoryItemsModel,
    required this.inventoryItemsController,
    required this.expirDate,
  });
  final InventoryItemsEntity inventoryItemsModel;
  final InventoryItemsController inventoryItemsController;
  final String expirDate;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeManager.s184,
      height: SizeManager.s220,
      // color: AppColors.blackColor,
      child: Column(
        children: [
          Stack(
            children: [
              CustomImageMemory(
                image: ConvertAndSaveImage.base64String(
                    inventoryItemsModel.image!),
                height: SizeManager.s140,
                width: SizeManager.s184,
              ),
              Positioned.fill(
                top: PaddingManager.p8,
                right: PaddingManager.p8,
                child: Align(
                  alignment: Alignment.topRight,
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: SizeManager.s36,
                        width: SizeManager.s36,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: const LinearGradient(colors: [
                              Color(0x40FFFFFF),
                              Color(0x10FFFFFF),
                            ]),
                            //  border: Border.all(
                            //   style:
                            //  ),
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.blackColor.withOpacity(0.25),
                                blurRadius: RadiusManager.r24,
                                spreadRadius: -1,
                                offset: const Offset(0, 4),
                              ),
                            ]),
                        child: GestureDetector(
                          onTap: () {
                            customBottomSheetWidget(
                              childWidget: CreateInventoryItemWidget(
                                inventoryItemsController:
                                    inventoryItemsController,
                                isEdite: true,
                                id: inventoryItemsModel.id,
                              ),
                            );
                          },
                          child: const FaIcon(
                            FontAwesomeIcons.fileEdit,
                            size: SizeManager.s16,
                            color: AppColors.iconFloatColor,
                          ),
                        ),
                      ),
                      const HieghtSpacer(
                        height: SizeManager.s8,
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: SizeManager.s33,
                        width: SizeManager.s33,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: const LinearGradient(colors: [
                              Color(0x40FFFFFF),
                              Color(0x10FFFFFF),
                            ]),
                            //  border: Border.all(
                            //   style:
                            //  ),
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.blackColor.withOpacity(0.25),
                                blurRadius: RadiusManager.r24,
                                spreadRadius: -1,
                                offset: const Offset(0, 4),
                              ),
                            ]),
                        child: GestureDetector(
                          onTap: () {
                            AppMessages.showDialog(
                              title: "حذف",
                              description: 'هل تريد حذف هذا البيان',
                              icon: FontAwesomeIcons.trash,
                              iconColor: AppColors.redColor,
                              textBtnColor: AppColors.redColor,
                              titleColor: AppColors.redColor.withOpacity(0.1),
                              action: () => inventoryItemsController
                                  .deleteInventoryDocumentData(
                                      inventoryItemsModel: inventoryItemsModel),
                            );
                          },
                          child: const FaIcon(
                            FontAwesomeIcons.solidTrashAlt,
                            size: SizeManager.s16,
                            color: AppColors.iconFloatColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const HieghtSpacer(height: SizeManager.s10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                // width: double.infinity,
                child: CustomTextWidget(
                  text: inventoryItemsModel.productName.toString(),
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        // fontWeight: FontWeightManager.semiBold,
                        color: AppColors.lightBlackColor2,
                      ),
                  // maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const WidthSpacer(width: SizeManager.s10),
              Container(
                width: SizeManager.s24,
                height: SizeManager.s24,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.primaryColor.withOpacity(0.1),
                  // gradient: LinearGradient(colors:
                  // [
                  //   AppColors.primaryColor.withOpacity(0.1),
                  //   AppColors.primaryColor.withOpacity(0.1),
                  //   // Color(0x2437BD6D),
                  //   // Color(0x2437BD6D),
                  // ]),
                ),
                child: CustomTextWidget(
                  text: inventoryItemsModel.number.toString(),
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        // fontWeight: FontWeightManager.semiBold,
                        fontSize: AppFontSize.fontSizeExtraSmall,
                        color: AppColors.primaryColor,
                        // color: AppColors.lightBlackColor2,
                      ),
                  // textAlign: TextAlign.center,
                  // maxLines: 1,
                  // overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          const HieghtSpacer(height: SizeManager.s10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomInfoWidget(
                width: SizeManager.s70,
                // height: 28,
                title: inventoryItemsModel.unit.toString(),
                titleColor: AppColors.primaryColor,
              ),
              // Container(
              // width: 74,
              // height: 28,
              //   alignment: Alignment.center,
              //   decoration: BoxDecoration(
              //     color: AppColors.grayColor,
              //     borderRadius: BorderRadius.circular(20),
              //   ),
              //   child: Text("كرتون",
              //   style: Theme.of(context).textTheme.bodySmall!.copyWith(
              //     color: AppColors.lightBlackColor2,
              //     fontWeight: FontWeightManager.regular,

              //   ),),
              // ),

              const WidthSpacer(width: SizeManager.s5),
              Text(
                expirDate,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: AppFontSize.fontSizeSmall,
                      // color: Color(0x70000000),
                      color: AppColors.lightBlackColor2,
                      // fontWeight: FontWeightManager.semiBold,
                    ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
