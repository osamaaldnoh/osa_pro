import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:osa_pro/src/features/item_alternative/presentation/getX/item_alternative_controller.dart';

class ItemAlternativePage extends StatelessWidget {
  final ItemAlternativeController _itemAlternativeController = Get.find();
  ItemAlternativePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ItemAlternative Page'),
      ),
      body: Center(
        child: Text('_itemAlternativeController.message.value'),
      ),
    );
  }
}
