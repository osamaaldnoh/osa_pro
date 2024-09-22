import 'package:flutter/material.dart';
import 'package:osa_pro/src/core/constants/colors.dart';
import 'package:osa_pro/src/core/constants/dimensions.dart';
import 'package:osa_pro/src/core/widgets/custom_text.dart';
import 'package:osa_pro/src/core/widgets/width_spacer.dart';

class CustomInfoWidget extends StatelessWidget {
  const CustomInfoWidget({
    super.key,
    this.height,
    this.width,
    required this.title,
    this.bgColor,
    this.titleColor,
    this.fontWeight,
    this.widthSpacer,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });
  final double? height;
  final double? width;
  final String title;
  final Color? bgColor;
  final Color? titleColor;
  final FontWeight? fontWeight;
  final double? widthSpacer;
  final MainAxisAlignment? mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: mainAxisAlignment!,
      children: [
        Container(
          width: width,
          height: height,
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(
            horizontal: width == null ? PaddingManager.p10 : 0,
            vertical: height == null ? PaddingManager.p5 : 0,
          ),
          //  margin: EdgeInsets.only(left: 5),
          decoration: BoxDecoration(
            color: bgColor ?? AppColors.grayColor,
            borderRadius: BorderRadius.circular(RadiusManager.r6),
          ),
          child: CustomTextWidget(
            text: title,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontSize: AppFontSize.fontSizeExtraSmall,
                  // fontWeight: fontWeight!,
                  color: titleColor ?? AppColors.blackColor,
                ),
          ),
        ),
        WidthSpacer(width: widthSpacer ?? SizeManager.s5),
      ],
    );
  }
}
