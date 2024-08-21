import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:osa_pro/src/features/currencies/presentation/getX/currencies_controller.dart';

class CurrenciesPage extends StatelessWidget {
  final CurrenciesController controller = Get.find();
  CurrenciesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Currencies Page'),
      ),
    );
  }
}
