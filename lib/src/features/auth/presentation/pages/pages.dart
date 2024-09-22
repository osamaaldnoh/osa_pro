import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:osa_pro/src/core/constants/colorss.dart';
import 'package:osa_pro/src/core/enums/login_status.dart';
import 'package:osa_pro/src/core/routes/names.dart';
import 'package:osa_pro/src/core/widgets/custom_loader.dart';
import 'package:osa_pro/src/features/auth/presentation/getX/auth_controller.dart';
import 'package:osa_pro/src/features/auth/presentation/widgets/app_bar_login_widget.dart';
import 'package:osa_pro/src/features/auth/presentation/widgets/form_login_widget.dart';

class AuthPage extends StatelessWidget {
  AuthPage({Key? key}) : super(key: key);
  final AuthController authController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Theme.of(context).primaryColor,
      body: Obx(
        () => CustomLoader(
          isLoading: authController.authState.value == RequestStatus.LOADING,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const AppBarLoginWidget(),
                FormLoginWidget(),
              ],
            ),
          ),

          // Row(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   mainAxisAlignment: MainAxisAlignment.start,
          //   children: [
          //     Expanded(
          //       child: AppBarLoginWidget(),
          //     ),
          //     Expanded(child: Center(child: FormLoginWidget()))
          //   ],
          // )
        ),
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
      key: authController.loginFormKey,
      child: Column(
        children: [
          TextFormField(
            controller: authController.userNameController,
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
            controller: authController.passwordController,
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
                    authController.login();
                  },
                  child: Text("Login",
                      style: Theme.of(context).textTheme.bodyMedium)))
        ],
      ),
    );
  }
}
