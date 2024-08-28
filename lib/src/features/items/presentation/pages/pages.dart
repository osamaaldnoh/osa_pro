import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:osa_pro/src/features/items/presentation/getX/items_controller.dart';

class ItemsPage extends StatelessWidget {
  final ItemsController _itemsController = Get.find();
  ItemsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Items Page'),
      ),
    );
  }
}
