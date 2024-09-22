import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:osa_pro/src/core/constants/colors.dart';
import 'package:osa_pro/src/core/constants/dimensions.dart';
import 'package:osa_pro/src/core/constants/icons.dart';
import 'package:osa_pro/src/core/extensions/app_extensions_context.dart';
import 'package:osa_pro/src/core/widgets/custom_icon_widget.dart';
import 'package:osa_pro/src/core/widgets/custom_text.dart';
import 'package:osa_pro/src/core/widgets/hieght_spacer.dart';
import 'package:osa_pro/src/core/widgets/width_spacer.dart';

AppBar homeAppBarWidget({
  required String titleAppBar,
  required String labelTotalItems,
  required int countTotalItems,
  required String labelItemsNotAvailabel,
  required int countItemsNotAvailable,
}) {
  return AppBar(
    // backgroundColor: AppColors.primaryColor,
    automaticallyImplyLeading: false,
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(SizeManager.s150),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: PaddingManager.p15, vertical: PaddingManager.p10),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTextWidget(
                  text: titleAppBar,
                  style: Theme.of(Get.context!).textTheme.titleMedium!.copyWith(
                        color: AppColors.titleBarColor,
                        //  fontSize: FontSize.fontSizeLarge,
                        // fontWeight: FontWeightManager.semiBold,
                      ),
                ),
                const Row(
                  children: [
                    CustomIconWidget(
                      icon: AppIcons.gear,
                      iconColor: AppColors.titleBarColor,
                      // size: SizeManager.s24,
                    ),
                    WidthSpacer(width: SizeManager.s12),
                    CustomIconWidget(
                      icon: AppIcons.notification,
                      iconColor: AppColors.titleBarColor,
                      // size: SizeManager.s24,
                    ),
                  ],
                ),
              ],
            ),
            const HieghtSpacer(height: SizeManager.s20),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BuildCategoryCountWidget(
                  title: labelTotalItems,
                  count: 1500,
                ),
                const WidthSpacer(width: SizeManager.s10),
                BuildCategoryCountWidget(
                  title: labelItemsNotAvailabel,
                  count: countItemsNotAvailable,
                  countColor: AppColors.redColor,
                ),
              ],
            ),
            const HieghtSpacer(height: SizeManager.s10),
          ],
        ),
      ),
    ),
  );
}

class BuildCategoryCountWidget extends StatelessWidget {
  final String title;
  final int count;
  final Color? countColor;
  const BuildCategoryCountWidget({
    super.key,
    required this.title,
    required this.count,
    this.countColor = AppColors.hintTextColor,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: Container(
        //  padding: EdgeInsets.all(25),
        width: double.infinity,
        height: SizeManager.s112,
        decoration: BoxDecoration(
          color: AppColors.bgColor,
          borderRadius: BorderRadius.circular(RadiusManager.r15),
          border: Border.all(
            width: SizeManager.widthBorder,
            color: AppColors.borderColor,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextWidget(text: title, style: context.bodyMedium
                // .copyWith(
                // color: AppColors.hintTextColor,
                // fontSize: AppFontSize.fontSizeLarge,
                // fontWeight: FontWeightManager.bold
                // )
                ),
            const HieghtSpacer(height: SizeManager.s8),
            Text("$count",
                style: context.bodyMedium!.apply(
                  // color: AppColors.hintTextColor,
                  color: countColor,
                  // fontSize: FontSize.fontSizeLarge,
                  // fontWeight: F.semiBold
                )),
          ],
        ),
      ),
    );
  }
}
