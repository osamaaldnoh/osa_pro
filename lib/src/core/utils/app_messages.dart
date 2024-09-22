import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:osa_pro/src/core/constants/colors.dart';
import 'package:osa_pro/src/core/constants/colorss.dart';
import 'package:osa_pro/src/core/constants/dimensions.dart';
import 'package:osa_pro/src/core/constants/text_style1.dart';
import 'package:osa_pro/src/core/widgets/custom_button.dart';
import 'package:osa_pro/src/core/widgets/custom_text.dart';
import 'package:osa_pro/src/core/widgets/hieght_spacer.dart';

class AppMessages {
  static void showDialog({
    title,
    description,
    icon,
    titleColor,
    action,
    fontSize,
    textBtnColor,
    iconColor,
  }) {
    Get.defaultDialog(
      backgroundColor: AppColor.bgColor,

      title: '',
      // contentPadding: EdgeInsets.all(AppLayout.getHeight(10)),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FaIcon(
            icon,
            size: 50,
            color: iconColor ?? AppColors.primaryColor,
          ),
          const HieghtSpacer(height: SizeManager.s20),
          CustomTextWidget(
            text: title,
            style: AppTextStyle.titleLarge.copyWith(),
            // style: StyleApp.textStyle
            //     .copyWith(color: titleColor, fontSize: AppLayout.getHeight(20)),
          ),
          //SizedBox(height: AppLayout.getHeight(20)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: PaddingManager.p50),
            child: CustomTextWidget(
              text: description,
              textAlign: TextAlign.center,
              // style: StyleApp.textStyle.copyWith(
              //   color: Colors.grey,
              //   fontSize: AppLayout.getHeight(14),
              // ),
            ),
          ),
          HieghtSpacer(height: SizeManager.s15),
        ],
      ),

      cancel: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            minimumSize: const Size.fromHeight(SizeManager.s45),
            backgroundColor: titleColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(RadiusManager.r15),
            ),
          ),
          onPressed: () {
            Get.back();
            action();
          },
          child: CustomTextWidget(
              text: "موافق",
              style: AppTextStyle.bodyLarge.copyWith(
                fontSize: fontSize ?? AppFontSize.fontSizeLarge,
                color: textBtnColor ?? AppColors.whiteColor,
                // fontWeight: fontWeight ?? FontWeightManager.semiBold,
              )
              // style: StyleApp.textStyle.copyWith(color: Colors.white),
              )),
      confirm: Padding(
        padding:
            EdgeInsets.only(bottom: PaddingManager.p20, top: PaddingManager.p2),
        child: GestureDetector(
          onTap: () => Get.back(),
          child: const CustomTextWidget(
            text: "الغاء",
            // style: StyleApp.textStyle.copyWith(
            //   color: Colors.black,
            // ),
          ),
        ),
      ),
    );
  }
}
