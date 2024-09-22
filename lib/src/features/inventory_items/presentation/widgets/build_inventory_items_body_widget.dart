import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:osa_pro/src/core/constants/dimensions.dart';
import 'package:osa_pro/src/core/enums/login_status.dart';
import 'package:osa_pro/src/core/utils/convert_image.dart';
import 'package:osa_pro/src/core/widgets/custom_bottom_sheet.dart';
import 'package:osa_pro/src/core/widgets/custom_loader.dart';
import 'package:osa_pro/src/core/widgets/no_data_screen.dart';
import 'package:osa_pro/src/features/inventory_items/domain/entities/entities.dart';
import 'package:osa_pro/src/features/inventory_items/presentation/getX/inventoryitems_controller.dart';
import 'package:osa_pro/src/features/inventory_items/presentation/widgets/create_inventory_item_widget.dart';
import 'package:osa_pro/src/features/item_groups/presentation/getX/item_groups_controller.dart';
import 'package:osa_pro/src/features/items/presentation/getX/items_controller.dart';
import 'package:osa_pro/src/features/units/presentation/getX/units_controller.dart';
import 'data_table_widget.dart';
import 'inventory_item_widget.dart';
import 'package:osa_pro/src/core/constants/app_string.dart';

class BuildInventoryItemsBodyWidget extends StatelessWidget {
  BuildInventoryItemsBodyWidget(
      {super.key, required this.inventoryItemsController});
  final InventoryItemsController inventoryItemsController;
  final ItemGroupsController _itemGroupsController = Get.find();
  final ItemsController _itemsController = Get.find();
  final UnitsController _unitsController = Get.find();
  final arguments = Get.arguments['docId'];

  @override
  Widget build(BuildContext context) {
    inventoryItemsController.getInventoryDocuments(docId: arguments);

    return Obx(() => inventoryItemsController.requestStatus.value ==
            RequestStatus.LOADING
        ? CustomLoader(
            isLoading: inventoryItemsController.requestStatus.value ==
                RequestStatus.LOADING,
          )
        : inventoryItemsController
                .searchInventoryDocumentDataEntityList.isNotEmpty
            ? Column(
                children: [
                  if (inventoryItemsController.showStyleIndex.value == 0)
                    GridView.builder(
                      padding: const EdgeInsets.only(
                        bottom: PaddingManager.p80,
                      ),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisSpacing: SizeManager.s15,
                              mainAxisSpacing: SizeManager.s20,
                              childAspectRatio: .8,
                              crossAxisCount: 2),
                      itemCount: inventoryItemsController
                          .searchInventoryDocumentDataEntityList.length,
                      shrinkWrap: true,
                      physics: const ScrollPhysics(),
                      itemBuilder: (context, index) {
                        // inventoryItemsController
                        //     .convertImage(_itemsController
                        //         .findByID(inventoryItemsController
                        //             .inventoryDocumentDataEntityList[index].itemId!)
                        //         .itemImage!)
                        //     .toString();
                        return GestureDetector(
                          onTap: () {
                            inventoryItemsController
                                    .inventoryItemProductName.value.text =
                                _itemsController
                                    .findByID(inventoryItemsController
                                        .searchInventoryDocumentDataEntityList[
                                            index]
                                        .itemId!)
                                    .name!;
                            // inventoryItemsController
                            //     .searchInventoryItemsList[index].productName
                            //     .toString();
                            inventoryItemsController.selectImage.value =
                                _itemsController
                                    .findByID(inventoryItemsController
                                        .searchInventoryDocumentDataEntityList[
                                            index]
                                        .itemId!)
                                    .itemImage!;
                            inventoryItemsController.inventoryItemGroup.value =
                                SingleValueDropDownController(
                                    data: DropDownValueModel(
                                        name: _itemGroupsController
                                            .findByID(inventoryItemsController
                                                .searchInventoryDocumentDataEntityList[
                                                    index]
                                                .itemGroupeId!)
                                            .name
                                            .toString(),
                                        value: _itemGroupsController
                                            .findByID(inventoryItemsController
                                                .searchInventoryDocumentDataEntityList[
                                                    index]
                                                .itemGroupeId!)
                                            .name
                                            .toString()));

                            inventoryItemsController.inventoryItemUnit.value =
                                SingleValueDropDownController(
                                    data: DropDownValueModel(
                                        name: _unitsController
                                            .findByID(inventoryItemsController
                                                .searchInventoryDocumentDataEntityList[
                                                    index]
                                                .unitId!)
                                            .name
                                            .toString(),
                                        value: _unitsController
                                            .findByID(inventoryItemsController
                                                .searchInventoryDocumentDataEntityList[
                                                    index]
                                                .unitId!)
                                            .name
                                            .toString()));
                          },
                          child: BuildContainerInventoryItemWidget(
                            inventoryItemsController: inventoryItemsController,
                            expirDate: inventoryItemsController
                                .searchInventoryDocumentDataEntityList[index]
                                .expirDate!,
                            inventoryItemsModel: InventoryItemsEntity(
                              id: inventoryItemsController
                                  .searchInventoryDocumentDataEntityList[index]
                                  .id,

                              productName: _itemsController
                                  .findByID(
                                    inventoryItemsController
                                        .searchInventoryDocumentDataEntityList[
                                            index]
                                        .itemId!,
                                  )
                                  .name,
                              group: _itemGroupsController
                                  .findByID(
                                    inventoryItemsController
                                        .searchInventoryDocumentDataEntityList[
                                            index]
                                        .itemGroupeId!,
                                  )
                                  .name,
                              unit: _unitsController
                                  .findByID(
                                    inventoryItemsController
                                        .searchInventoryDocumentDataEntityList[
                                            index]
                                        .unitId!,
                                  )
                                  .name,
                              number: inventoryItemsController
                                  .searchInventoryDocumentDataEntityList[index]
                                  .number!,
                              quantity: inventoryItemsController
                                  .searchInventoryDocumentDataEntityList[index]
                                  .quantity!,
                              difference: inventoryItemsController
                                  .searchInventoryDocumentDataEntityList[index]
                                  .difference!,
                              image: _itemsController
                                  .findByID(
                                    inventoryItemsController
                                        .searchInventoryDocumentDataEntityList[
                                            index]
                                        .itemId!,
                                  )
                                  .itemImage
                                  .toString(),
                              // image: inventoryItemsController
                              //     .convertImage(
                              //         _itemsController
                              //             .findByID(inventoryItemsController
                              //                 .inventoryDocumentDataEntityList[
                              //                     index]
                              //                 .itemId!)
                              //             .itemImage
                              //             .toString(),
                              //         _itemsController
                              //             .findByID(inventoryItemsController
                              //                 .inventoryDocumentDataEntityList[
                              //                     index]
                              //                 .itemId!)
                              //             .name
                              //             .toString())
                              //     .toString(),
                              itemBarcode: _itemsController
                                  .findByID(
                                    inventoryItemsController
                                        .searchInventoryDocumentDataEntityList[
                                            index]
                                        .itemId!,
                                  )
                                  .itemCode
                                  .toString(),
                            ),

                            // inventoryItemsController
                            //     .searchInventoryItemsList[index],
                          ),
                        );
                      },
                    ),
                  if (inventoryItemsController.showStyleIndex.value == 1)
                    DataTableItemsWidget(
                        inventoryItemsController: inventoryItemsController),
                ],
              )
            : Obx(
                () => NoDataScreen(
                  title: inventoryItemsController
                          .inventoryDocumentDataEntityList.isEmpty
                      ? AppString.notFound
                      : inventoryItemsController
                                  .searchTextController.value.text.isNotEmpty &&
                              inventoryItemsController
                                  .searchInventoryDocumentDataEntityList.isEmpty
                          ? AppString.itemNotInventoried
                          : AppString.notFound,
                ),
              ));
  }
}
































// import 'package:dropdown_textfield/dropdown_textfield.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:osa_pro/src/core/constants/dimensions.dart';
// import 'package:osa_pro/src/core/utils/convert_image.dart';
// import 'package:osa_pro/src/core/widgets/custom_bottom_sheet.dart';
// import 'package:osa_pro/src/core/widgets/no_data_screen.dart';
// import 'package:osa_pro/src/features/inventory_items/domain/entities/entities.dart';
// import 'package:osa_pro/src/features/inventory_items/presentation/getX/inventoryitems_controller.dart';
// import 'package:osa_pro/src/features/inventory_items/presentation/widgets/create_inventory_item_widget.dart';
// import 'package:osa_pro/src/features/item_groups/presentation/getX/item_groups_controller.dart';
// import 'package:osa_pro/src/features/items/presentation/getX/items_controller.dart';
// import 'package:osa_pro/src/features/units/presentation/getX/units_controller.dart';
// import 'data_table_widget.dart';
// import 'inventory_item_widget.dart';
// import 'package:osa_pro/src/core/constants/app_string.dart';

// class BuildInventoryItemsBodyWidget extends StatelessWidget {
//   BuildInventoryItemsBodyWidget(
//       {super.key, required this.inventoryItemsController});
//   final InventoryItemsController inventoryItemsController;
//   final ItemGroupsController _itemGroupsController = Get.find();
//   final ItemsController _itemsController = Get.find();
//   final UnitsController _unitsController = Get.find();
//   final arguments = Get.arguments['docId'];

//   @override
//   Widget build(BuildContext context) {
//     inventoryItemsController.getInventoryDocuments(docId: arguments);
//     return Obx(() => inventoryItemsController
//                 .searchInventoryDocumentDataEntityList.isNotEmpty ||
//             inventoryItemsController.inventoryDocumentDataEntityList.isNotEmpty
//         ? Column(
//             children: [
//               if (inventoryItemsController.showStyleIndex.value == 0)
//                 GridView.builder(
//                   padding: const EdgeInsets.only(
//                     bottom: PaddingManager.p80,
//                   ),
//                   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                       crossAxisSpacing: SizeManager.s15,
//                       mainAxisSpacing: SizeManager.s20,
//                       childAspectRatio: .8,
//                       crossAxisCount: 2),
//                   itemCount: inventoryItemsController
//                           .searchInventoryDocumentDataEntityList.isEmpty
//                       ? inventoryItemsController
//                           .inventoryDocumentDataEntityList.length
//                       : inventoryItemsController
//                           .searchInventoryDocumentDataEntityList.length,
//                   shrinkWrap: true,
//                   physics: const ScrollPhysics(),
//                   itemBuilder: (context, index) {
//                     // inventoryItemsController
//                     //     .convertImage(_itemsController
//                     //         .findByID(inventoryItemsController
//                     //             .inventoryDocumentDataEntityList[index].itemId!)
//                     //         .itemImage!)
//                     //     .toString();
//                     return GestureDetector(
//                       onTap: () {
//                         inventoryItemsController
//                                 .inventoryItemProductName.value.text =
//                             _itemsController
//                                 .findByID(inventoryItemsController
//                                     .inventoryDocumentDataEntityList[index]
//                                     .itemId!)
//                                 .name!;
//                         // inventoryItemsController
//                         //     .searchInventoryItemsList[index].productName
//                         //     .toString();
//                         inventoryItemsController.selectImage.value =
//                             _itemsController
//                                 .findByID(inventoryItemsController
//                                     .inventoryDocumentDataEntityList[index]
//                                     .itemId!)
//                                 .itemImage!;
//                         inventoryItemsController.inventoryItemGroup.value =
//                             SingleValueDropDownController(
//                                 data: DropDownValueModel(
//                                     name: _itemGroupsController
//                                         .findByID(inventoryItemsController
//                                             .inventoryDocumentDataEntityList[
//                                                 index]
//                                             .itemGroupeId!)
//                                         .name
//                                         .toString(),
//                                     value: _itemGroupsController
//                                         .findByID(inventoryItemsController
//                                             .inventoryDocumentDataEntityList[
//                                                 index]
//                                             .itemGroupeId!)
//                                         .name
//                                         .toString()));

//                         inventoryItemsController.inventoryItemUnit.value =
//                             SingleValueDropDownController(
//                                 data: DropDownValueModel(
//                                     name: _unitsController
//                                         .findByID(inventoryItemsController
//                                             .inventoryDocumentDataEntityList[
//                                                 index]
//                                             .unitId!)
//                                         .name
//                                         .toString(),
//                                     value: _unitsController
//                                         .findByID(inventoryItemsController
//                                             .inventoryDocumentDataEntityList[
//                                                 index]
//                                             .unitId!)
//                                         .name
//                                         .toString()));
//                       },
//                       child: BuildContainerInventoryItemWidget(
//                         inventoryItemsController: inventoryItemsController,
//                         inventoryItemsModel: InventoryItemsEntity(
//                           id: inventoryItemsController
//                                   .searchInventoryDocumentDataEntityList.isEmpty
//                               ? inventoryItemsController
//                                   .inventoryDocumentDataEntityList[index].id
//                               : inventoryItemsController
//                                   .searchInventoryDocumentDataEntityList[index]
//                                   .id,
//                           productName: _itemsController
//                               .findByID(
//                                 inventoryItemsController
//                                         .searchInventoryDocumentDataEntityList
//                                         .isEmpty
//                                     ? inventoryItemsController
//                                         .inventoryDocumentDataEntityList[index]
//                                         .itemId!
//                                     : inventoryItemsController
//                                         .searchInventoryDocumentDataEntityList[
//                                             index]
//                                         .itemId!,
//                               )
//                               .name,
//                           group: _itemGroupsController
//                               .findByID(
//                                 inventoryItemsController
//                                         .searchInventoryDocumentDataEntityList
//                                         .isEmpty
//                                     ? inventoryItemsController
//                                         .inventoryDocumentDataEntityList[index]
//                                         .itemGroupeId!
//                                     : inventoryItemsController
//                                         .searchInventoryDocumentDataEntityList[
//                                             index]
//                                         .itemGroupeId!,
//                               )
//                               .name,
//                           unit: _unitsController
//                               .findByID(
//                                 inventoryItemsController
//                                         .searchInventoryDocumentDataEntityList
//                                         .isEmpty
//                                     ? inventoryItemsController
//                                         .inventoryDocumentDataEntityList[index]
//                                         .unitId!
//                                     : inventoryItemsController
//                                         .searchInventoryDocumentDataEntityList[
//                                             index]
//                                         .unitId!,
//                               )
//                               .name,
//                           number: inventoryItemsController
//                                   .searchInventoryDocumentDataEntityList.isEmpty
//                               ? inventoryItemsController
//                                   .inventoryDocumentDataEntityList[index]
//                                   .number!
//                               : inventoryItemsController
//                                   .searchInventoryDocumentDataEntityList[index]
//                                   .number!,
//                           quantity: inventoryItemsController
//                                   .searchInventoryDocumentDataEntityList.isEmpty
//                               ? inventoryItemsController
//                                   .inventoryDocumentDataEntityList[index]
//                                   .quantity!
//                               : inventoryItemsController
//                                   .searchInventoryDocumentDataEntityList[index]
//                                   .quantity!,
//                           difference: inventoryItemsController
//                                   .searchInventoryDocumentDataEntityList.isEmpty
//                               ? inventoryItemsController
//                                   .inventoryDocumentDataEntityList[index]
//                                   .difference!
//                               : inventoryItemsController
//                                   .searchInventoryDocumentDataEntityList[index]
//                                   .difference!,
//                           image: _itemsController
//                               .findByID(
//                                 inventoryItemsController
//                                         .searchInventoryDocumentDataEntityList
//                                         .isEmpty
//                                     ? inventoryItemsController
//                                         .inventoryDocumentDataEntityList[index]
//                                         .itemId!
//                                     : inventoryItemsController
//                                         .searchInventoryDocumentDataEntityList[
//                                             index]
//                                         .itemId!,
//                               )
//                               .itemImage
//                               .toString(),
//                           // image: inventoryItemsController
//                           //     .convertImage(
//                           //         _itemsController
//                           //             .findByID(inventoryItemsController
//                           //                 .inventoryDocumentDataEntityList[
//                           //                     index]
//                           //                 .itemId!)
//                           //             .itemImage
//                           //             .toString(),
//                           //         _itemsController
//                           //             .findByID(inventoryItemsController
//                           //                 .inventoryDocumentDataEntityList[
//                           //                     index]
//                           //                 .itemId!)
//                           //             .name
//                           //             .toString())
//                           //     .toString(),
//                           itemBarcode: _itemsController
//                               .findByID(
//                                 inventoryItemsController
//                                         .searchInventoryDocumentDataEntityList
//                                         .isEmpty
//                                     ? inventoryItemsController
//                                         .inventoryDocumentDataEntityList[index]
//                                         .itemId!
//                                     : inventoryItemsController
//                                         .searchInventoryDocumentDataEntityList[
//                                             index]
//                                         .itemId!,
//                               )
//                               .itemCode
//                               .toString(),
//                         ),

//                         // inventoryItemsController
//                         //     .searchInventoryItemsList[index],
//                       ),
//                     );
//                   },
//                 ),
//               if (inventoryItemsController.showStyleIndex.value == 1)
//                 DataTableItemsWidget(
//                     inventoryItemsController: inventoryItemsController),
//             ],
//           )
//         : Obx(
//             () => NoDataScreen(
//               title: inventoryItemsController.inventoryItemsList.isEmpty
//                   ? AppString.notFound
//                   : inventoryItemsController
//                               .searchTextController.value.text.isNotEmpty &&
//                           inventoryItemsController
//                               .searchInventoryDocumentDataEntityList
//                               .value
//                               .isEmpty
//                       ? AppString.itemNotInventoried
//                       : AppString.notFound,
//             ),
//           ));
//   }
// }
