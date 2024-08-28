import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:osa_pro/src/features/sales_man_settings/presentation/getX/sales_man_settings_controller.dart';

class SalesManSettingsPage extends StatelessWidget {
  final SalesManSettingsController _salesManSettingsController = Get.find();
  SalesManSettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sales_man_settings Page'),
      ),
    );
  }
}
