import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:osa_pro/src/features/item_units/presentation/getX/item_units_controller.dart';

class ItemUnitsPage extends StatelessWidget {
  final ItemUnitsController _itemUnitsController = Get.find();
  ItemUnitsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Item_units Page'),
      ),
    );
  }
}
