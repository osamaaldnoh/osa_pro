import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:osa_pro/src/core/constants/app_string.dart';
import 'package:osa_pro/src/core/constants/colors.dart';
import 'package:osa_pro/src/core/constants/constants.dart';
import 'package:osa_pro/src/core/constants/dimensions.dart';
import 'package:osa_pro/src/core/extensions/app_extensions_context.dart';
import 'package:osa_pro/src/core/widgets/custom_button.dart';
import 'package:osa_pro/src/core/widgets/custom_text.dart';
import 'package:osa_pro/src/core/widgets/customer_text_field.dart';
import 'package:osa_pro/src/features/auth/presentation/getX/auth_controller.dart';
import 'package:osa_pro/src/features/auth/presentation/widgets/connect_api_dialog.dart';

class FormLoginWidget extends StatelessWidget {
  FormLoginWidget({super.key});
  final AuthController loginController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(SizeManager.s15),
      child: Form(
        key: loginController.loginFormKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // HieghtSpacer(height: 15),
            CustomTextWidget(
              text: AppString.loginInformation,
              style: context.bodyLarge!.apply(
                  //     // fontWeight: FontWeightManager.bold,

                  color: AppColors.primaryColor),
            ),
            // CustomerTextFieldNew(
            //   controller: loginController.ipController,
            //   focusNode: loginController.ipNode,
            //   nextFocus: loginController.portNode,
            //   hintText: AppString.ipAddress,
            //   prefixIcon: Icons.account_balance,
            //   inputType: TextInputType.number,
            //   inputAction: TextInputAction.next,
            //   inputFormatters: [
            //     MyInputFormatters.ipAddressInputFilter(),
            //     LengthLimitingTextInputFormatter(15),
            //     IpAddressInputFormatter()
            //   ],
            // ),

            // CustomerTextFieldNew(
            //   controller: loginController.portController,
            //   hintText: AppString.port,
            //   prefixIcon: Icons.account_tree_rounded,
            //   focusNode: loginController.portNode,
            //   inputType: TextInputType.number,
            //   nextFocus: loginController.userNameNode,
            //   inputFormatters: [
            //     LengthLimitingTextInputFormatter(5),
            //   ],
            // ),
            CustomerTextFieldNew(
              controller: loginController.userNameController,
              hintText: AppString.userName,
              prefixIcon: AppIcons.user,
              focusNode: loginController.userNameNode,
              nextFocus: loginController.passwordNode,
            ),
            CustomerTextFieldNew(
              controller: loginController.passwordController,
              hintText: AppString.password,
              prefixIcon: AppIcons.password,
              focusNode: loginController.passwordNode,
              inputAction: TextInputAction.done,
              // validator: (value) => ValidateCheck.validatePassword(value, ''),
            ),
            // const HieghtSpacer(height: SizeManager.s10),
            // SizedBox(
            //   height: SizeManager.s10,
            // ),
            Row(
              children: [
                GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context, builder: (_) => ConnectApiDialog());
                    },
                    child: CustomTextWidget(text: "إعدادات الربط")),
                Spacer(),
                CustomTextWidget(text: "تذكرني"),
                Obx(
                  () => Checkbox(
                      value: loginController.isLogin.value,
                      side: BorderSide(
                        color: context.primaryColor,
                        width: SizeManager.widthBorder,
                      ),
                      onChanged: (value) {
                        loginController.isLogin.value = value!;
                      }),
                ),
              ],
            ),

            CustomButton(
              buttonText: AppString.login,
              onTap: () => loginController.login(),
            ),
          ],
        ),
      ),
    );
  }
}
