import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:osa_pro/src/features/units/presentation/getX/units_controller.dart';

class UnitsPage extends StatelessWidget {
  final UnitsController _unitsController = Get.find();
  UnitsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Units Page'),
      ),
    );
  }
}
