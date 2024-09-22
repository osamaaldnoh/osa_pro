import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:osa_pro/src/core/constants/colors.dart';
import 'package:osa_pro/src/core/constants/dimensions.dart';
import 'package:osa_pro/src/core/routes/routes.dart';
import 'package:osa_pro/src/core/widgets/custom_button.dart';
import 'package:osa_pro/src/core/widgets/custom_text.dart';
import 'package:osa_pro/src/core/widgets/hieght_spacer.dart';
import 'package:osa_pro/src/features/language/presentation/getX/language_controller.dart';

class LanguagePage extends GetView<LanguageController> {
  const LanguagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextWidget(
                text: "choose_language".tr,
                style: Theme.of(context).textTheme.headlineSmall!
                // .copyWith(
                //       // fontWeight: FontWeightManager.semiBold,
                //     ),
                ),
            const HieghtSpacer(height: SizeManager.s15),
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: PaddingManager.p100),
              child: CustomButton(
                buttonText: "arabic".tr,
                // fontWeight: FontWeightManager.bold,
                onTap: () {
                  controller.changeLang("ar");
                  Get.offAllNamed(RoutesName.auth);
                },
              ),
            ),
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: PaddingManager.p100),
              child: CustomButton(
                buttonText: "english".tr,
                onTap: () {
                  controller.changeLang("en");
                  Get.offAllNamed(RoutesName.auth);
                },
                backgroundColor: AppColors.secondaryColor,
                textColor: AppColors.primaryColor,
                // fontWeight: FontWeightManager.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
