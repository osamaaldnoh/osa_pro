import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:osa_pro/src/features/stoperation/presentation/getX/stoperation_controller.dart';

class StoperationPage extends StatelessWidget {
  final StoperationController _stoperationController = Get.find();
  StoperationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Obx(
        () => Text(_stoperationController.message.value),
      )),
    );
  }
}
