import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:osa_pro/src/core/constants/colors.dart';
import 'package:osa_pro/src/core/constants/dimensions.dart';
import 'package:osa_pro/src/core/widgets/custom_icon_widget.dart';
import 'package:osa_pro/src/core/widgets/custom_text.dart';
import 'package:osa_pro/src/core/constants/icons.dart';

AppBar customAppBarWidget(
    {required String title, Color? titleColor, void Function()? onTapBack}) {
  return AppBar(
    automaticallyImplyLeading: false,
    bottom: PreferredSize(
      preferredSize: const Size(double.infinity, SizeManager.s8),
      child: Container(
        alignment: Alignment.center,
        height: SizeManager.s64,
        // color: AppColors.bgColor,
        padding: const EdgeInsets.symmetric(
          horizontal: PaddingManager.p10,
          //  vertical: PaddingManager.p10
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: onTapBack ?? () => Get.back(),
              child: Container(
                // height: SizeManager.s36,
                // width: SizeManager.s36,
                padding: const EdgeInsets.all(PaddingManager.p4_5),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.titleBarColor,
                    width: SizeManager.widthBorder,
                  ),
                  shape: BoxShape.circle,
                ),
                child: const CustomIconWidget(
                  icon: AppIcons.arrowBack,
                  iconColor: AppColors.titleBarColor,
                  // size: SizeManager.s20,
                ),
              ),
            ),
            CustomTextWidget(
              text: title,
              style: Theme.of(Get.context!).textTheme.bodyMedium!.apply(
                    color: titleColor ?? AppColors.titleBarColor,
                    // fontSize: AppFontSize.fontSizeLarge,
                    //  fontWeight: FontWeightManager.semiBold,
                  ),
            ),
            const CustomIconWidget(
              icon: AppIcons.ellipsisV,
              iconColor: AppColors.titleBarColor,
              // size: SizeManager.s20,
            ),
          ],
        ),
      ),
    ),
  );
}
