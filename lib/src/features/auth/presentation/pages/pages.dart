import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:osa_pro/src/core/constants/colors.dart';
import 'package:osa_pro/src/core/enums/login_status.dart';
import 'package:osa_pro/src/core/routes/names.dart';
import 'package:osa_pro/src/features/auth/presentation/getX/auth_controller.dart';

class AuthPage extends StatelessWidget {
  AuthPage({Key? key}) : super(key: key);
  final AuthController authController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Auth Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Obx(() {
          switch (authController.authStatus.value) {
            case RequestStatus.LOADING:
              return Center(
                child: CircularProgressIndicator(),
              );
            case RequestStatus.COMPLLETED:
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Success" + "Post Added Successfully",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  OutlinedButton(
                    onPressed: () {
                      Get.toNamed(RoutesName.userInfoPage);
                    },
                    child: Text(
                      "User Info",
                    ),
                  ),
                ],
              );

            case RequestStatus.ERROR:
              return Center(
                child: Text(authController.message.value),
              );
            default:
              return LoginFormField(authController: authController);
          }
        }),
      ),
    );
  }
}

class LoginFormField extends StatelessWidget {
  const LoginFormField({
    super.key,
    required this.authController,
  });

  final AuthController authController;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: authController.formstate,
      child: Column(
        children: [
          TextFormField(
            controller: authController.userName,
            keyboardType: TextInputType.name,
            validator: (value) {
              if (value!.isEmpty) {
                return "Enter userName";
              } else {
                return null;
              }
            },
            decoration: InputDecoration(
              hintText: "UserName",
              // border: OutlineInputBorder(
              //   borderRadius: BorderRadius.circular(15),
              //   borderSide: BorderSide(
              //     color: Theme.of(context).hintColor,
              //   ),
              // ),
              // focusedBorder: OutlineInputBorder(
              //   borderRadius: BorderRadius.circular(15),
              //   borderSide: BorderSide(
              //     color: Theme.of(context).primaryColor,
              //   ),
              // )
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: authController.passWord,
            keyboardType: TextInputType.visiblePassword,
            validator: (value) {
              if (value!.isEmpty) {
                return "Enter Password";
              } else {
                return null;
              }
            },
            decoration: InputDecoration(
              hintText: "Password",
              // border: OutlineInputBorder(
              //   borderRadius: BorderRadius.circular(15),
              //   borderSide: BorderSide(
              //     color: Theme.of(context).hintColor,
              //   ),
              // ),
              // focusedBorder: OutlineInputBorder(
              //   borderRadius: BorderRadius.circular(15),
              //   borderSide: BorderSide(
              //     color: Theme.of(context).primaryColor,
              //   ),
              // )
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: AppColorrrs.primary,
                  ),
                  onPressed: () {
                    authController.loginUser1();
                  },
                  child: Text("Login",
                      style: Theme.of(context).textTheme.bodyMedium)))
        ],
      ),
    );
  }
}
