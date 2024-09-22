import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:osa_pro/src/core/constants/app_string.dart';
import 'package:osa_pro/src/core/type/root_list.dart';
import 'package:osa_pro/src/core/widgets/custom_app_bar_widget.dart';
import 'package:osa_pro/src/core/widgets/custom_bottom_sheet.dart';
import 'package:osa_pro/src/core/widgets/custom_floating_action_button.dart';
import 'package:osa_pro/src/features/store_inventory_document/presentation/getX/store_inventory_document_controller.dart';
import 'package:osa_pro/src/features/store_inventory_document/presentation/widgets/build_store_inventory_body_widget.dart';
import 'package:osa_pro/src/features/store_inventory_document/presentation/widgets/create_inventory_doc_widget.dart';

class StoreInventoryDocumentPage extends StatelessWidget {
  StoreInventoryDocumentPage({Key? key}) : super(key: key);
  final StoreInventoryDocumentController inventoryDocumentController =
      Get.find();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        appBar: customAppBarWidget(title: AppString.storeInventoryDocument),
        body: BuildStoreInventoryBodyWidget(
          inventoryDocumentController: inventoryDocumentController,
          docSettingList: AppList.docSettingList,
          titleNoData: AppString.notFound,
        ),
        floatingActionButton: CustomeFloatingActionButton(
          icon: FontAwesomeIcons.plus,
          onPressed: () => customBottomSheetWidget(
              childWidget: CreateInventoryDocWidget(
            inventoryDocumentController: inventoryDocumentController,
          )),
        ),
      ),
    );
  }
}
