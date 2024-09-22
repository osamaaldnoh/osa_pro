import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:osa_pro/src/core/constants/app_string.dart';
import 'package:osa_pro/src/core/constants/colors.dart';
import 'package:osa_pro/src/core/constants/dimensions.dart';
import 'package:osa_pro/src/core/extensions/app_extensions_context.dart';
import 'package:osa_pro/src/core/widgets/custom_button.dart';
import 'package:osa_pro/src/core/widgets/custom_text.dart';
import 'package:osa_pro/src/core/widgets/customer_text_field.dart';
import 'package:osa_pro/src/core/widgets/hieght_spacer.dart';
import 'package:osa_pro/src/core/widgets/width_spacer.dart';
import 'package:osa_pro/src/features/auth/presentation/getX/auth_controller.dart';

import '../../../../core/utils/ip_address_formatter.dart';

class ConnectApiDialog extends StatelessWidget {
  ConnectApiDialog({super.key});
  final AuthController loginController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: AppColors.bgColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(RadiusManager.r20),
        ),
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomTextWidget(
                text: "إعدادات الربط",
                style: context.bodyLarge!.apply(color: AppColors.primaryColor),
              ),
              const HieghtSpacer(height: 10),
              CustomerTextFieldNew(
                controller: loginController.ipController,
                focusNode: loginController.ipNode,
                nextFocus: loginController.portNode,
                hintText: AppString.ipAddress,
                prefixIcon: Icons.account_balance,
                inputType: TextInputType.number,
                inputAction: TextInputAction.next,
                inputFormatters: [
                  MyInputFormatters.ipAddressInputFilter(),
                  LengthLimitingTextInputFormatter(15),
                  IpAddressInputFormatter()
                ],
              ),
              CustomerTextFieldNew(
                controller: loginController.portController,
                hintText: AppString.port,
                prefixIcon: Icons.account_tree_rounded,
                focusNode: loginController.portNode,
                inputType: TextInputType.number,
                nextFocus: loginController.userNameNode,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(5),
                ],
              ),
              const HieghtSpacer(height: 10),
              Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: CustomButton(
                          buttonText: "Connect",
                          isBorder: true,
                          borderColor: AppColors.primaryColor,
                          textColor: AppColors.greenColor,
                          backgroundColor: Colors.transparent,
                          onTap: () {
                            Get.back();
                          },
                        ),
                      ),
                      const WidthSpacer(width: SizeManager.s8),
                      Expanded(
                        flex: 1,
                        child: CustomButton(
                          buttonText: "إلغاء".tr,
                          isBorder: true,
                          borderColor: AppColors.primaryColor,
                          textColor: AppColors.redColor,
                          backgroundColor: Colors.transparent,
                          onTap: () => Get.back(),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
