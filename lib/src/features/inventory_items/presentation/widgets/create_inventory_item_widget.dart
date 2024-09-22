import 'dart:ffi';

import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:osa_pro/src/core/constants/app_images.dart';
import 'package:osa_pro/src/core/constants/colors.dart';
import 'package:osa_pro/src/core/constants/dimensions.dart';
import 'package:osa_pro/src/core/routes/names.dart';
import 'package:osa_pro/src/core/utils/convert_image.dart';
import 'package:osa_pro/src/core/utils/get_image_picker.dart';
import 'package:osa_pro/src/core/utils/date_converter.dart';
import 'package:osa_pro/src/core/utils/input_data_formatter.dart';
import 'package:osa_pro/src/core/widgets/custom_bottom_sheet.dart';
import 'package:osa_pro/src/core/widgets/custom_button.dart';
import 'package:osa_pro/src/core/widgets/custom_icon_widget.dart';
import 'package:osa_pro/src/core/widgets/custom_text.dart';
import 'package:osa_pro/src/core/widgets/customer_drop_down_field.dart';
import 'package:osa_pro/src/core/widgets/customer_text_field.dart';
import 'package:osa_pro/src/core/widgets/hieght_spacer.dart';
import 'package:osa_pro/src/core/widgets/image_diaglog.dart';
import 'package:osa_pro/src/core/widgets/width_spacer.dart';
import 'package:osa_pro/src/features/inventory_items/presentation/getX/inventoryitems_controller.dart';
import 'package:osa_pro/src/features/item_barcode/presentation/getX/item_barcode_controller.dart';
import 'package:osa_pro/src/features/item_groups/presentation/getX/item_groups_controller.dart';
import 'package:osa_pro/src/features/item_units/presentation/getX/item_units_controller.dart';
import 'package:osa_pro/src/features/items/presentation/getX/items_controller.dart';
import 'package:osa_pro/src/features/stoperation/presentation/getX/stoperation_controller.dart';
import 'package:osa_pro/src/features/units/presentation/getX/units_controller.dart';

class CreateInventoryItemWidget extends StatelessWidget {
  CreateInventoryItemWidget(
      {super.key,
      required this.inventoryItemsController,
      this.isEdite = false,
      this.id});
  final InventoryItemsController inventoryItemsController;
  final bool? isEdite;
  final int? id;
  final ItemsController _itemsController = Get.find();
  final ItemGroupsController _itemGroupsController = Get.find();
  final UnitsController _unitsController = Get.find();
  final ItemUnitsController _itemUnitsController = Get.find();
  final StoperationController _stoperationController = Get.find();
  final ItemBarcodeController _itemBarcodeController = Get.find();
  final arguments = Get.arguments['docId'];

  @override
  Widget build(BuildContext context) {
    if (isEdite == true && id != null) {
      inventoryItemsController.inventoryDocumentDataModel =
          inventoryItemsController.findById(inventoryDataId: id!);
      final item = _itemsController.findByID(
          inventoryItemsController.inventoryDocumentDataModel.itemId!);

      _itemsController.itemId.value =
          inventoryItemsController.inventoryDocumentDataModel.itemId.toString();

      inventoryItemsController.inventoryItemProductName.value.text = item.name!;

      final itemsGroup = _itemGroupsController.findByID(
          inventoryItemsController.inventoryDocumentDataModel.itemGroupeId!);
      inventoryItemsController.inventoryItemGroup.value =
          SingleValueDropDownController(
              data: DropDownValueModel(
        name: itemsGroup.name.toString(),
        value: itemsGroup.name.toString(),
      ));

      final units = _unitsController.findByID(
          inventoryItemsController.inventoryDocumentDataModel.unitId!);
      _itemUnitsController.getUnitsWhereItemId(item.id!);
      inventoryItemsController.inventoryItemUnit.value =
          SingleValueDropDownController(
              data: DropDownValueModel(
        name: units.name.toString(),
        value: units.name.toString(),
      ));

      inventoryItemsController.inventoryItemnumber.value.text =
          inventoryItemsController.inventoryDocumentDataModel.number.toString();

      inventoryItemsController.inventoryItemNote.value.text =
          inventoryItemsController.inventoryDocumentDataModel.note!;

      inventoryItemsController.inventoryItemEndDateTime.value.text =
          inventoryItemsController.inventoryDocumentDataModel.expirDate!;
    } else {
      // inventoryItemsController.clearController();
      _itemsController.itemId.value = '';
    }
    return Form(
      key: inventoryItemsController.inventoryDocDtataKey,
      child: Column(
        children: [
          Obx(
            () => BuildTypeaheadFiled(
              controller:
                  inventoryItemsController.inventoryItemProductName.value,
              hintText: "item".tr,
              titleText: "item".tr,
              // prefixIcon: Icons.category,
              suffixIcon: "assets/images/read_qr.png",
              validator: (value) {
                if (value!.isEmpty) {
                  return "required";
                } else {
                  return null;
                }
              },
              suffixOnTap: () async {
                final barcodeResult = await Get.toNamed(RoutesName.qrPage);
                // barcodeResult != ''
                //     ? barcodeResult
                //     : inventoryItemsController
                //         .searchTextController.value.text;
                if (barcodeResult.toString() == '' ||
                    barcodeResult.toString() == 'null') {
                  print("object");
                } else {
                  inventoryItemsController.inventoryItemProductName.value.text =
                      barcodeResult.toString();
                  final inventoryItem = inventoryItemsController
                      .findByNameOrBarcode(barcodeResult);

                  final itemBarcode = _itemBarcodeController.findByBarcode(
                      barcode: barcodeResult);
                  final item = _itemsController.findByID(itemBarcode.itemId);
                  _itemsController.itemId.value = item.id.toString();
                  if (_itemsController.itemId.value.isNotEmpty) {
                    _itemUnitsController.getUnitsWhereItemId(
                        int.tryParse(_itemsController.itemId.value)!);
                    _itemGroupsController
                        .getItemGroupWhereItemId(item.itemGroupId!);
                    inventoryItemsController.inventoryItemsModel.productName =
                        item.name;

                    inventoryItemsController.inventoryItemGroup.value
                        .dropDownValue = DropDownValueModel(
                      name: _itemGroupsController
                          .itemGroupsWhereItemList.first.name
                          .toString(),
                      value: _itemGroupsController
                          .itemGroupsWhereItemList.first.name
                          .toString(),
                    );
                  } else {
                    _itemsController.itemId.value = '';
                  }
                }
              },
              onChanged: (value) {
                inventoryItemsController.inventoryItemsModel.productName =
                    value;
                //
                if (value.isNotEmpty) {
                  final item = _itemsController.findByName(value);
                  print("**********************::::::::::::::::${item.name}");

                  if (item.name == '' || item.name.toString() == 'null') {
                    _itemsController.itemId.value = '';
                  } else {
                    //
                    _itemsController.itemId.value = item.id.toString();
                    //
                    inventoryItemsController.inventoryDocumentDataModel.itemId =
                        item.id;
                    //
                    inventoryItemsController
                            .inventoryDocumentDataModel.itemBarcodeId =
                        _itemBarcodeController
                            .findByItemId(itemId: item.id!)
                            .id;
                    //

                    _itemUnitsController.getUnitsWhereItemId(
                        int.tryParse(_itemsController.itemId.value)!);
                    _itemGroupsController
                        .getItemGroupWhereItemId(item.itemGroupId!);

                    if (_itemsController.itemId.value.isNotEmpty) {
                      final itemsGroup = _itemGroupsController
                          .findByItemGroupID(item.itemGroupId!);
                      inventoryItemsController.inventoryItemGroup.value =
                          SingleValueDropDownController(
                              data: DropDownValueModel(
                        name: itemsGroup.name.toString(),
                        value: itemsGroup.name.toString(),
                      ));
                      inventoryItemsController
                              .inventoryDocumentDataModel.itemGroupeId =
                          _itemGroupsController
                              .findByName(
                                itemsGroup.name.toString(),
                              )
                              .id;
                    }
                  }
                }
                inventoryItemsController.inventoryItemUnit.value =
                    SingleValueDropDownController();

                ///
                //   if (value.isNotEmpty) {
                //     final item = _itemsController.findByName(value);
                //     _itemsController.itemId.value = item.id.toString();
                //     _itemsController.itemId.value.isNotEmpty
                //         ? _itemUnitsController.getUnitsWhereItemId(
                //             int.tryParse(_itemsController.itemId.value)!)
                //         : _itemsController.itemId.value = '';
                //   }

                // /////
                // if (_itemsController.itemId.value.isNotEmpty) {
                //   _itemUnitsController.getUnitsWhereItemId(
                //       int.tryParse(_itemsController.itemId.value)!);
                //   // _itemGroupsController.getUnitsWhereItemId(
                //   //     int.tryParse(_itemsController.itemId.value)!);
                // }
                // inventoryItemsController.inventoryDocumentDataModel.itemId =
                //     int.parse(_itemsController.itemId.value);
              },
              suggestionsCallback:
                  _itemsController.inventoryItemsSuggestionsCallback,
              onSelected: (value) {
                inventoryItemsController.inventoryItemProductName.value.text =
                    value!;
                // final inventoryItem =
                //     inventoryItemsController.findByNameOrBarcode(value);
                // _itemsController.itemsEntity.value =
                //     _itemsController.findByName(value);
                // _itemUnitsController
                //     .getUnitsWhereItemId(_itemsController.itemsEntity.value.id!);
                if (value.isNotEmpty) {
                  final item = _itemsController.findByName(value);
                  inventoryItemsController.inventoryDocumentDataModel.itemId =
                      item.id;
                  _itemsController.itemId.value = item.id.toString();
                  if (_itemsController.itemId.value.isNotEmpty) {
                    //
                    inventoryItemsController
                            .inventoryDocumentDataModel.itemBarcodeId =
                        _itemBarcodeController
                            .findByItemId(itemId: item.id!)
                            .id;
                    //

                    _itemUnitsController.getUnitsWhereItemId(
                        int.tryParse(_itemsController.itemId.value)!);
                    _itemGroupsController
                        .getItemGroupWhereItemId(item.itemGroupId!);

                    if (_itemsController.itemId.value.isNotEmpty) {
                      final itemsGroup = _itemGroupsController
                          .findByItemGroupID(item.itemGroupId!);

                      inventoryItemsController.inventoryItemGroup.value =
                          SingleValueDropDownController(
                              data: DropDownValueModel(
                        name: itemsGroup.name.toString(),
                        value: itemsGroup.name.toString(),
                      ));
                      inventoryItemsController
                              .inventoryDocumentDataModel.itemGroupeId =
                          _itemGroupsController
                              .findByName(
                                itemsGroup.name.toString(),
                              )
                              .id;
                    }
                  } else {
                    _itemsController.itemId.value = '';
                  }
                }
              },
            ),
          ),
          Row(
            children: [
              Flexible(
                flex: 1,
                child: Obx(
                  () => CustomDropDownTextFieldWidget(
                    controller:
                        inventoryItemsController.inventoryItemGroup.value,
                    hintText: "group".tr,
                    titleText: "group".tr,
                    isEnabled:
                        _itemsController.itemId.value.isEmpty ? true : false,
                    // prefixIcon: FontAwesomeIcons.layerGroup,
                    onChanged: (value) {
                      // print(inventoryItemsController
                      //     .inventoryItemGroup.value.dropDownValue!.value.toString());
                      DropDownValueModel? group = inventoryItemsController
                          .inventoryItemGroup.value.dropDownValue;
                      // final groups = DropDownValueModel(name: name, value: value);
                      inventoryItemsController.inventoryItemsModel.group =
                          value.toString();
                      inventoryItemsController
                              .inventoryDocumentDataModel.itemGroupeId =
                          _itemGroupsController
                              .findByName(group!.name.toString())
                              .id;
                      print(inventoryItemsController
                          .inventoryDocumentDataModel.itemGroupeId);

                      // group.name;
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "required";
                      } else {
                        return null;
                      }
                    },
                    dropDownList: _itemsController.itemId.value.isEmpty
                        ? List.generate(
                            _itemGroupsController.itemGroupsList.length,
                            (index) => DropDownValueModel(
                              name: _itemGroupsController
                                  .itemGroupsList[index].name
                                  .toString(),
                              value: _itemGroupsController
                                  .itemGroupsList[index].name
                                  .toString(),
                            ),
                          )
                        : List.generate(
                            _itemGroupsController
                                .itemGroupsWhereItemList.length,
                            (index) => DropDownValueModel(
                              name: _itemGroupsController
                                  .itemGroupsWhereItemList[index].name
                                  .toString(),
                              value: _itemGroupsController
                                  .itemGroupsWhereItemList[index].name
                                  .toString(),
                            ),
                          ),
                    //  const [
                    //   DropDownValueModel(
                    //     name: "1",
                    //     value: "1",
                    //   ),
                    //   DropDownValueModel(
                    //     name: "2",
                    //     value: "2",
                    //   ),
                    //   DropDownValueModel(
                    //     name: "3",
                    //     value: "3",
                    //   ),
                    //   DropDownValueModel(
                    //     name: "4",
                    //     value: "4",
                    //   ),
                    // ],
                  ),
                ),
              ),
              const WidthSpacer(width: SizeManager.s10),
              Flexible(
                  flex: 1,
                  child: Obx(
                    () => CustomDropDownTextFieldWidget(
                      controller:
                          inventoryItemsController.inventoryItemUnit.value,
                      hintText: "unit".tr,
                      titleText: "unit".tr,
                      // prefixIcon: FontAwesomeIcons.recycle,
                      onChanged: (value) {
                        // DropDownValueModel unit = value;
                        // DropDownValueModel.fromJson(value).name;
                        inventoryItemsController.inventoryItemsModel.unit =
                            inventoryItemsController
                                .inventoryItemUnit.value.dropDownValue!.value;
                        inventoryItemsController
                                .inventoryDocumentDataModel.unitId =
                            _unitsController
                                .findByName(inventoryItemsController
                                    .inventoryItemUnit
                                    .value
                                    .dropDownValue!
                                    .value)
                                .id;
                        // unit.name;
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "required";
                        } else {
                          return null;
                        }
                      },
                      dropDownList: _itemsController.itemId.value.isEmpty
                          ? List.generate(
                              _unitsController.unitsList.length,
                              (index) => DropDownValueModel(
                                    name:
                                        _unitsController.unitsList[index].name,
                                    value:
                                        _unitsController.unitsList[index].name,
                                  )).toList()
                          : List.generate(
                              _itemUnitsController.unitsWhereItemList.length,
                              (index) => DropDownValueModel(
                                    name: _unitsController
                                        .findByID(_itemUnitsController
                                            .unitsWhereItemList[index]
                                            .itemUnitId)
                                        .name,
                                    value: _unitsController
                                        .findByID(_itemUnitsController
                                            .unitsWhereItemList[index]
                                            .itemUnitId)
                                        .name,
                                  )).toList(),
                      // const [
                      //   DropDownValueModel(
                      //     name: "حبة",
                      //     value: "حبة",
                      //   ),
                      //   DropDownValueModel(
                      //     name: "شدة",
                      //     value: "شدة",
                      //   ),
                      //   DropDownValueModel(
                      //     name: "كيلو",
                      //     value: "كيلو",
                      //   ),
                      //   DropDownValueModel(
                      //     name: "باكت",
                      //     value: "باكت",
                      //   ),
                      // ],
                    ),
                  )),
            ],
          ),
          Row(
            children: [
              Flexible(
                flex: 1,
                child: Obx(
                  () => CustomerTextFieldNew(
                    controller:
                        inventoryItemsController.inventoryItemnumber.value,
                    hintText: "number".tr,
                    titleText: "number".tr,
                    // suffixIcon: ,
                    inputType: TextInputType.number,
                    onChanged: (value) {
                      inventoryItemsController.inventoryItemsModel.number =
                          int.tryParse(value);
                      inventoryItemsController.inventoryDocumentDataModel
                          .number = int.tryParse(value);
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "required";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
              ),
              const WidthSpacer(width: SizeManager.s10),
              Flexible(
                flex: 1,
                child: Obx(
                  () => CustomerTextFieldNew(
                    controller:
                        inventoryItemsController.inventoryItemEndDateTime.value,
                    isEnabled: _stoperationController
                            .findByItemIdAndUnitIdAndStoryId(
                              itemId: inventoryItemsController
                                      .inventoryDocumentDataModel.itemId ??
                                  -1,
                              unitId: inventoryItemsController
                                      .inventoryDocumentDataModel.unitId ??
                                  -1,
                              storyId: 4,
                            )
                            .value
                            .expirDate
                            .isNotEmpty
                        ? false
                        : true,
                    hintText: DateConverter.convertStringToDatetimeSlash(
                        inventoryItemsController.selectDate.value),
                    titleText: "expiry_date".tr,
                    inputType: TextInputType.datetime,
                    inputFormatters: [
                      DateTextFormatter(),
                    ],
                    onChanged: (value) {
                      inventoryItemsController
                          .inventoryDocumentDataModel.expirDate = value;
                    },
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: CustomerTextFieldNew(
                  controller: inventoryItemsController.inventoryItemNote.value,
                  hintText: "",
                  titleText: "notes".tr,
                  maxLines: 2,
                  onChanged: (value) {
                    inventoryItemsController.inventoryDocumentDataModel.note =
                        value;
                  },
                ),
              ),
            ],
          ),
          const HieghtSpacer(height: SizeManager.s20),
          Obx(
            () => Container(
              width: double.infinity,
              height: SizeManager.s30,
              padding: const EdgeInsets.all(PaddingManager.p5),
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.circular(RadiusManager.r8),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 7,
                    child: GestureDetector(
                      onTap: () async {
                        final img =
                            await ConvertAndSaveImage.convertImageToBase64(
                                AppImages.placeholderImage);
                        // final img =
                        //     await ConvertAndSaveImage.convertImageToBase64(
                        //         inventoryItemsController.selectImage.value);

                        final image =
                            _itemsController.itemId.value.toString().isNotEmpty
                                ? await ConvertAndSaveImage.base64String(
                                    _itemsController
                                        .findByID(int.parse(
                                            _itemsController.itemId.value))
                                        .itemImage!)
                                : await ConvertAndSaveImage.base64String(img);

                        // inventoryItemsController
                        //     .selectImage.value = _itemsController
                        //         .itemId.value.isNotEmpty
                        //     ? await ConvertAndSaveImage.convertAndSaveImage(
                        //         _itemsController
                        //             .findByID(int.tryParse(
                        //                 _itemsController.itemId.value)!)
                        //             .itemImage!)
                        //     : await ConvertAndSaveImage.convertAndSaveImage(
                        //         await ConvertAndSaveImage.convertImageToBase64(
                        //             AppImages.placeholderImage));

                        await showDialog(
                            context: Get.context!,
                            builder: (_) {
                              return ImageDialog(
                                imageUrl: image,

                                // imageAsset:  inventoryItemsController.selectImageAssets.value,
                              );
                            });
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.image,
                            size: SizeManager.s16,
                            // color: Color(0x50212121),
                            color: AppColors.iconFloatColor.withOpacity(.5),
                          ),
                          const WidthSpacer(width: SizeManager.s10),
                          Expanded(
                            flex: 4,
                            child: CustomTextWidget(
                              text: _itemsController.itemId.value.isNotEmpty ||
                                      isEdite != false
                                  ? _itemsController
                                      .findByID(int.tryParse(
                                          _itemsController.itemId.value)!)
                                      .itemImage!
                                  : AppImages.placeholderImg,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    color: AppColors.iconFloatColor
                                        .withOpacity(.5),
                                    // fontWeight: FontWeightManager.regular,
                                  ),
                              overflow: TextOverflow.fade,
                              // textAlign: TextAlign.start,
                              // textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const WidthSpacer(width: SizeManager.s10),
                  GestureDetector(
                    onTap: () async {
                      // final img = await ConvertAndSaveImage.convertImageToBase64(
                      //     inventoryItemsController.selectImage.value);

                      // if (_itemsController.itemId.value.isEmpty) {
                      //   inventoryItemsController.selectImage.value =
                      //       await ConvertAndSaveImage.convertAndSaveImage(
                      //           await ConvertAndSaveImage.convertImageToBase64(
                      //               AppImages.placeholderImg));
                      //   showDialog(
                      //       context: context,
                      //       builder: (_) {
                      //         return ImageDialog(
                      //           imageUrl:
                      //               inventoryItemsController.selectImage.value,

                      //           // imageAsset:  inventoryItemsController.selectImageAssets.value,
                      //         );
                      //       });
                      // } else {
                      //   inventoryItemsController.selectImage.value =
                      //       await ConvertAndSaveImage.convertAndSaveImage(
                      //           _itemsController
                      //               .findByID(int.tryParse(
                      //                   _itemsController.itemId.value)!)
                      //               .itemImage!);
                      //   showDialog(
                      //       context: context,
                      //       builder: (_) {
                      //         return ImageDialog(
                      //           imageUrl:
                      //               inventoryItemsController.selectImage.value,

                      //           // imageAsset:  inventoryItemsController.selectImageAssets.value,
                      //         );
                      //       });
                      // }
                      final img =
                          await ConvertAndSaveImage.convertImageToBase64(
                              AppImages.placeholderImage);
                      // final img =
                      //     await ConvertAndSaveImage.convertImageToBase64(
                      //         inventoryItemsController.selectImage.value);

                      final image = _itemsController.itemId.value
                              .toString()
                              .isNotEmpty
                          ? await ConvertAndSaveImage.base64String(
                              _itemsController
                                  .findByID(
                                      int.parse(_itemsController.itemId.value))
                                  .itemImage!)
                          : await ConvertAndSaveImage.base64String(img);

                      // inventoryItemsController
                      //     .selectImage.value = _itemsController
                      //         .itemId.value.isNotEmpty
                      //     ? await ConvertAndSaveImage.convertAndSaveImage(
                      //         _itemsController
                      //             .findByID(int.tryParse(
                      //                 _itemsController.itemId.value)!)
                      //             .itemImage!)
                      //     : await ConvertAndSaveImage.convertAndSaveImage(
                      //         await ConvertAndSaveImage.convertImageToBase64(
                      //             AppImages.placeholderImage));

                      await showDialog(
                          context: Get.context!,
                          builder: (_) {
                            return ImageDialog(
                              imageUrl: image,

                              // imageAsset:  inventoryItemsController.selectImageAssets.value,
                            );
                          });
                    },
                    child: CustomIconWidget(
                      icon: Icons.visibility,
                    ),
                  )
                ],
              ),
            ),
          ),
          const HieghtSpacer(height: SizeManager.s10),
          Row(
            children: [
              Expanded(
                flex: 3,
                child: CustomButton(
                  onTap: () async {
                    // inventoryItemsController.inventoryItemsModel.image =
                    //     inventoryItemsController.selectImage.value;
                    // inventoryItemsController.inventoryItemsModel.productName =
                    //     inventoryItemsController
                    //         .inventoryItemProductName.value.text;
                    inventoryItemsController.addInventoryItem(
                        inventoryItem:
                            inventoryItemsController.inventoryItemsModel);

                    if (_itemsController.itemId.value.isNotEmpty) {
                      inventoryItemsController
                              .inventoryDocumentDataModel.quantity =
                          await _stoperationController.getTotalQuantity(
                              itemId:
                                  int.tryParse(_itemsController.itemId.value)!,
                              unitId: inventoryItemsController
                                  .inventoryDocumentDataModel.unitId!,
                              storeId: 4);
                    }
                    // inventoryItemsController.inventoryDocumentDataModel
                    //     .quantity = _stoperationController.totalQuantity.value;
                    inventoryItemsController.inventoryDocumentDataModel.docId =
                        arguments;
                    isEdite == true
                        ? inventoryItemsController
                            .editeInventoryDocumentDataEntity(
                                inventoryDocumentDataEntity:
                                    inventoryItemsController
                                        .inventoryDocumentDataModel)
                        : inventoryItemsController
                            .addInventoryDocumentDataEntity(
                                inventoryDocumentDataEntity:
                                    inventoryItemsController
                                        .inventoryDocumentDataModel);
                  },
                  buttonText: isEdite == true ? "edit".tr : "add".tr,
                ),
              ),
              const WidthSpacer(width: SizeManager.s8),
              Expanded(
                flex: 2,
                child: CustomButton(
                  onTap: () => Get.back(),
                  buttonText: "cancel".tr,
                  textColor: AppColors.redColor,
                  // isBorder: true,
                  // borderColor: AppColors.redColor,
                  // backgroundColor: Colors.transparent,
                  backgroundColor: AppColors.redColor.withOpacity(0.1),
                ),

                // Container(
                //   height: 45,
                //   width: double.infinity,
                //   child: OutlinedButton(

                //     onPressed: ()
                //     {},
                //    child: Row(
                //      children: [
                //       Image.asset("assets/images/read_qr.png",
                //       width: 17,
                //       height: 17,
                //       fit: BoxFit.cover,
                //       ),
                //       WidthSpacer(width: 10),
                //        Text("add_barcode".tr,
                //        style: Theme.of(context).textTheme.bodyMedium!.
                //           copyWith(
                //             color: AppColors.primaryColor,
                //             fontWeight: FontWeightManager.semiBold,
                //           ),),
                //      ],
                //    ),),
                // ),
              ),
            ],
          ),
        ],
      ),
    );
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
