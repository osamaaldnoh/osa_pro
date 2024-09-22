import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:osa_pro/src/features/accounts/presentation/getX/accounts_controller.dart';

class AccountsPage extends StatelessWidget {
  final AccountsController _accountsController = Get.find();
  AccountsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Obx(
        () => Text(_accountsController.message.value),
      )),
    );
  }
}
