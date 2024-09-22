import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:osa_pro/src/core/constants/dimensions.dart';
import 'package:osa_pro/src/core/type/root_list.dart';
import 'package:osa_pro/src/core/widgets/custom_app_bar_widget.dart';
import 'package:osa_pro/src/core/widgets/custom_bottom_sheet.dart';
import 'package:osa_pro/src/core/widgets/custom_floating_action_button.dart';
import 'package:osa_pro/src/core/widgets/hieght_spacer.dart';
import 'package:osa_pro/src/features/inventory_items/presentation/getX/inventoryitems_controller.dart';
import 'package:osa_pro/src/features/inventory_items/presentation/widgets/build_inventory_items_body_widget.dart';
import 'package:osa_pro/src/features/inventory_items/presentation/widgets/build_search_style_filter_widget.dart';
import 'package:osa_pro/src/features/inventory_items/presentation/widgets/create_inventory_item_widget.dart';

class InventoryItemsPage extends StatelessWidget {
  final InventoryItemsController inventoryItemsController = Get.find();

  InventoryItemsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    inventoryItemsController.clearController();
    return Scaffold(
      appBar: customAppBarWidget(title: "inventory_items".tr),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: SizeManager.s10,
        ),
        child: Column(
          children: [
            const HieghtSpacer(height: SizeManager.s10),
            BuildSearchAndStyleAndFilterWidget(
              inventoryItemsController: inventoryItemsController,
              filterItemList: AppList.filterItemList,
            ),
            const HieghtSpacer(height: SizeManager.s15),
            BuildInventoryItemsBodyWidget(
              inventoryItemsController: inventoryItemsController,
            ),
            const HieghtSpacer(height: SizeManager.s15),
          ],
        ),
      ),
      floatingActionButton: CustomeFloatingActionButton(
        icon: FontAwesomeIcons.plus,
        onPressed: () {
          inventoryItemsController.clearController();
          customBottomSheetWidget(
              childWidget: CreateInventoryItemWidget(
            inventoryItemsController: inventoryItemsController,
          ));
        },
      ),
    );
  }
}
