import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:osa_pro/src/features/user_store/presentation/getX/user_store_controller.dart';

class UserStorePage extends StatelessWidget {
  final UserStoreController _userStoreController = Get.find();
  UserStorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User_store Page'),
      ),
    );
  }
}
