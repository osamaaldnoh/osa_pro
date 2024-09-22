import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:osa_pro/src/features/item_barcode/presentation/getX/item_barcode_controller.dart';

class ItemBarcodePage extends StatelessWidget {
  final ItemBarcodeController itemBarcodeController = Get.find();
  ItemBarcodePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Obx(
        () => Text(itemBarcodeController.message.value),
      )),
    );
  }
}
