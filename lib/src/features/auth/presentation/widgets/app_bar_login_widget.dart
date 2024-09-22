import 'package:flutter/material.dart';
import 'package:osa_pro/src/core/constants/app_images.dart';
import 'package:osa_pro/src/core/constants/app_string.dart';
import 'package:osa_pro/src/core/constants/colors.dart';
import 'package:osa_pro/src/core/constants/dimensions.dart';
import 'package:osa_pro/src/core/extensions/app_extensions_context.dart';
import 'package:osa_pro/src/core/widgets/custom_asset_image_widget.dart';
import 'package:osa_pro/src/core/widgets/custom_text.dart';
import 'package:osa_pro/src/core/widgets/hieght_spacer.dart';

class AppBarLoginWidget extends StatelessWidget {
  const AppBarLoginWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // print(
    // "Size :${MediaQuery.of(context).size.height - (MediaQuery.of(context).size.height / 1.11)}");
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          color: AppColors.primaryColor,
          width: MediaQuery.of(context).size.width,
          // height: MediaQuery.of(context).size.height -
          //     (MediaQuery.of(context).size.height / 1.4),
          padding: const EdgeInsets.symmetric(horizontal: PaddingManager.p15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              HieghtSpacer(
                  height:
                      // SizeConfig.blockSizeVertical * 17
                      context.heightSize * 0.15
                  // context.height - (context.height / 1.14),
                  ),
              CustomTextWidget(
                text: AppString.welcome,
              ),
              SizedBox(
                width: context.widthSize,
                child: CustomTextWidget(
                  text: AppString.loginDescription,
                  style: context.bodyLarge!.apply(
                    color: AppColors.titleBarColor,
                  ),
                ),
              ),
              const HieghtSpacer(height: SizeManager.s10),
            ],
          ),
        ),
        Positioned(
          left: 20,
          // PositionedManager.positioned40,
          bottom: -context.heightSize * .17,
          // PositionedManager.positioned90,
          child: CustomAssetImageWidget(
            imagePath: AppImages.bgLogin,
            width: context.heightSize * .25,
            // SizeManager.s220,
            height: context.heightSize * .45,
            // SizeManager.s240,
          ),
        ),
        Positioned(
          left: -10,
          child: CustomAssetImageWidget(
            width: context.heightSize * .13,
            // SizeManager.s140,
            height: context.heightSize * .25,
            // SizeManager.s140,
            imagePath: AppImages.bgLogin1,
          ),
        ),
      ],
    );
  }
}
