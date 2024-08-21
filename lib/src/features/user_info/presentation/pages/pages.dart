import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:osa_pro/src/core/enums/login_status.dart';
import 'package:osa_pro/src/features/user_info/presentation/getX/user_info_controller.dart';

class UserInfoPage extends StatelessWidget {
  UserInfoPage({Key? key}) : super(key: key);
  final UserInfoController userInfoController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('User_info Page'),
        ),
        body: Obx(() {
          switch (userInfoController.status.value) {
            case LoginStatus.LOADING:
              return Center(
                child: CircularProgressIndicator(),
              );
            case LoginStatus.ERROR:
              return Center(
                child: Text(userInfoController.message.value),
              );
            case LoginStatus.COMPLLETED:
              return Column(
                children: [
                  Text(
                      "UserName : ${userInfoController.userEntity.value.userName}"),
                  Text(
                      "UserName : ${userInfoController.userEntity.value.password}"),
                ],
              );
            default:
              return Container();
          }
          // Column(
          //       children: [
          //         Text(
          //           userInfoController.message.value,
          //         ),
          //         OutlinedButton(
          //           onPressed: () {
          //             userInfoController.getUserInfo();
          //           },
          //           child: Text("Get"),
          //         ),
          //       ],
          //     )
        }));
  }
}
