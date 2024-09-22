import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:osa_pro/src/core/constants/colors.dart';
import 'package:osa_pro/src/core/constants/dimensions.dart';
import 'package:osa_pro/src/core/routes/routes.dart';
import 'package:osa_pro/src/core/type/root_list.dart';
import 'package:osa_pro/src/core/widgets/custom_bottom_sheet.dart';
import 'package:osa_pro/src/core/widgets/customer_text_field.dart';
import 'package:osa_pro/src/core/widgets/width_spacer.dart';
import 'package:osa_pro/src/features/inventory_items/domain/entities/entities.dart';
import 'package:osa_pro/src/features/inventory_items/presentation/getX/inventoryitems_controller.dart';
import 'package:osa_pro/src/features/inventory_items/presentation/widgets/create_inventory_item_widget.dart';
import 'package:osa_pro/src/features/inventory_items/presentation/widgets/show_style_data_view_widget.dart';
import 'package:osa_pro/src/features/items/presentation/getX/items_controller.dart';
import 'build_filter_sort_items_widget.dart';

class BuildSearchAndStyleAndFilterWidget extends StatelessWidget {
  BuildSearchAndStyleAndFilterWidget({
    super.key,
    required this.inventoryItemsController,
    required this.filterItemList,
  });

  final InventoryItemsController inventoryItemsController;
  final List<Map<String, dynamic>> filterItemList;
  final ItemsController _itemsController = Get.find();
  final arguments = Get.arguments['docId'];

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Flexible(
          flex: 3,
          child: Obx(() {
            _itemsController.getItemNames(inventoryItemsController
                .inventoryDocumentDataEntityList.value
                .map((value) => value.itemId!)
                .toList()
                .obs);
            return BuildTypeaheadFiled(
              controller: inventoryItemsController.searchTextController.value,
              hintText: "",
              titleText: "product_name".tr,
              suffixIcon: "assets/images/read_qr.png",
              suggestionsCallback:
                  _itemsController.inventoryDocDataSuggestionsCallback,
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
                  inventoryItemsController.searchTextController.value.text =
                      barcodeResult;
                  InventoryItemsEntity inventoryItem = inventoryItemsController
                      .findByNameOrBarcode(barcodeResult);
                  if (inventoryItem.productName!.isNotEmpty ||
                      inventoryItem.itemBarcode!.isNotEmpty) {
                    customBottomSheetWidget(
                        childWidget: CreateInventoryItemWidget(
                            inventoryItemsController:
                                inventoryItemsController));
                  }
                }
              },
              // autofocus: true,
              onChanged: (value) {
                // inventoryItemsController.searchInventoryItem(
                //     productName: value);
                // _itemsController.getItemNames(value);
                if (value.isNotEmpty) {
                  inventoryItemsController
                      .searchInventoryDocumentDataEntityList.value = [];
                  final item = _itemsController.searchByNamesList(value).value;

                  if (item.isNotEmpty) {
                    item.forEach((value) {
                      // print("""object:::::::::::::::::$item""");
                      inventoryItemsController.searchInventoryItem(
                          itemId: value.id.toString(), docId: arguments);
                    });
                  }
                } else {
                  // inventoryItemsController.searchInventoryDocumentDataEntityList
                  //     .clear();
                  inventoryItemsController
                          .searchInventoryDocumentDataEntityList.value =
                      inventoryItemsController.inventoryDocumentDataEntityList;
                }
              },
              onSelected: (String? value) {
                // inventoryItemsController.searchInventoryItem(
                //     productName: value!);
                inventoryItemsController.searchTextController.value.text =
                    value!;

                if (value.isNotEmpty) {
                  inventoryItemsController
                      .searchInventoryDocumentDataEntityList.value = [];
                  final item = _itemsController.searchByNamesList(value).value;

                  if (item.isNotEmpty) {
                    item.forEach((value) {
                      // print("""object:::::::::::::::::$item""");
                      inventoryItemsController.searchInventoryItem(
                          itemId: value.id.toString(), docId: arguments);
                    });
                  }
                } else {
                  // inventoryItemsController.searchInventoryDocumentDataEntityList
                  //     .clear();
                  inventoryItemsController
                          .searchInventoryDocumentDataEntityList.value =
                      inventoryItemsController.inventoryDocumentDataEntityList;
                }
                // final inventoryItem =
                //     inventoryItemsController.findByNameOrBarcode(value);

                // if (inventoryItem.productName!.isNotEmpty) {
                //   customBottomSheetWidget(
                //       childWidget: CreateInventoryItemWidget(
                //           inventoryItemsController: inventoryItemsController));
                // } else {}
              },
            );
          }),
        ),
        const WidthSpacer(width: SizeManager.s10),
        Flexible(
          flex: 1,
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 6,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                      AppList.showStyleList.length,
                      (index) => GestureDetector(
                          onTap: () {
                            if (AppList.showStyleList[index] ==
                                AppList.showStyleList.last) {
                            } else {
                              inventoryItemsController.showStyleIndex.value =
                                  index;
                            }
                          },
                          child: Obx(
                            () => ShowStyleWidget(
                              title: AppList.showStyleList[index]['title'],
                              icon: AppList.showStyleList[index]['icon'],
                              isSort: AppList.showStyleList[index] ==
                                  AppList.showStyleList.last,
                              isActiviteColor: inventoryItemsController
                                          .showStyleIndex.value ==
                                      index
                                  ? AppColors.primaryColor
                                  : null,
                              widget: AppList.showStyleList[index] ==
                                      AppList.showStyleList.last
                                  ? BuildFilterSortItemsWidget(
                                      filterItemList: filterItemList,
                                      iconSort: AppList.showStyleList[index]
                                          ['icon'],
                                      indexSort: inventoryItemsController
                                          .filterIndex.value,
                                      onChanged: (value) {
                                        inventoryItemsController
                                            .filterIndex.value = value!['id'];
                                        inventoryItemsController
                                            .filterInventoryItem(
                                                filterId: value['id']);
                                      },
                                    )
                                  : null,
                            ),
                          )),
                    ),
                  ),
                ),
                // Flexible(
                //   flex: 4,
                //   child: FilterSortItemsWidget(),),
                // Flexible(
                //   flex: 4,
                //   child:  Container(
                //     // color: AppColors.primaryColor,
                //     // alignment: Alignment.centerLeft,
                //     // margin: const EdgeInsets.only(
                //     //   left: 5,
                //     // ),
                //     child: Column(
                //       crossAxisAlignment: CrossAxisAlignment.center,
                //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //       children: [
                //         CustomTextWidget(text: AppList.showStyleList.last['title'],
                //           style: Theme.of(context).textTheme.bodySmall!.copyWith(
                //               fontSize: FontSize.fontSizeExtraSmall,
                //               fontWeight: FontWeightManager.semiBold,
                //               color:  AppColors.secondaryColor,
                //             ),
                //             textAlign: TextAlign.center,
                //             ),
                //           // const HieghtSpacer(height: 6),
                //         FilterItemWidgetSort(
                //           filterItemList: filterItemList,
                //           icon: AppList.showStyleList.last['icon'],
                //           value: AppList.showStyleList.last['title'],
                //           onTapSort: (){
                //       //  inventoryItemsController.filterIndex.value = index;
                //       //     //  inventoryItemsController.filterIndex.value = filterItemList[index]['id'];
                //       //     print("value :${filterItemList[index]['id']} : $index");
                //       //     inventoryItemsController
                //       //     .filterInventoryItem(filterId: filterItemList[index]['id']);
                //         },
                //           // inventoryItemsController: inventoryItemsController,
                //           ),
                //       ],
                //     ),
                //   ),
                // ),
                // //       //             GestureDetector(
                // //       //               onTap: () {
                // //       //                  customBottomSheetWidget(
                // //       // bgColor: AppColors.whiteColor,
                // //       // childWidget: SizedBox(
                // //       //   height: 400,
                // //       //   child: SingleChildScrollView(
                // //       //     child: Column(
                // //       //       crossAxisAlignment: CrossAxisAlignment.start,
                // //       //       children: [
                // //       //         CustomTextWidget(
                // //       //           text: "ترتيب حسب",
                // //       //         style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                // //       //           fontWeight: FontWeightManager.bold,
                // //       //         ),
                // //       //         textAlign: TextAlign.start,
                // //       //         ),
                // //       //         ListView.builder(
                // //       //           itemCount: filterItemList.length,
                // //       //           shrinkWrap: true,
                // //       //           physics: BouncingScrollPhysics(),
                // //       //           itemBuilder: (ctx,index){
                // //       //           return Obx(() => FilterItemWidget(
                // //       //             onTap: (){
                // //     // inventoryItemsController.filterIndex.value = index;
                // //     // inventoryItemsController.filterInventoryItem(filterId: filterItemList[index]['id']);
                // //     // Get.back();
                // //       //             },
                // //       //             title: filterItemList[index]['title'],
                // //       //             isActiviteColor: inventoryItemsController.filterIndex.value == index? true:false,
                // //       //            ));
                // //       //         }),
                // //       //         // Column(
                // //       //         //   children: List.generate(filterItemList.length,
                // //       //         //    (index) => Obx(() => FilterItemWidget(
                // //       //         //     onTap: (){
                // //     // inventoryItemsController.filterIndex.value = index;
                // //       //         //     },
                // //       //         //     title: filterItemList[index]['title'],
                // //       //         //     isActiviteColor: inventoryItemsController.filterIndex.value == index? true:false,
                // //       //         //    ),))
                // //       //         // ),
                // //       //       ],
                // //       //     ),
                // //       //   ),
                // //       // ));
                // //       //               },
                // //       //               child: ShowStyleWidget(
                // //       //                 title: AppList.showStyleList.last['title'],
                // //       //                 icon: AppList.showStyleList.last['icon'],
                // //       //                 // isActiviteColor: inventoryItemsController.showStyleIndex.value == index?AppColors.primaryColor:null,
                // //       //                 ),
                // //       //             ),

                // // ),
              ]),
        ),
      ],
    );
  }
}
