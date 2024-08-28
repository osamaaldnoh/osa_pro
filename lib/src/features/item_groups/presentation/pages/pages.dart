import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:osa_pro/src/features/item_groups/presentation/getX/item_groups_controller.dart';

class ItemGroupsPage extends StatelessWidget {
  final ItemGroupsController _itemGroupsController = Get.find();
  ItemGroupsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Item_groups Page'),
      ),
    );
  }
}
