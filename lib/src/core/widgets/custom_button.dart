import 'package:flutter/material.dart';
import 'package:osa_pro/src/core/constants/colors.dart';
import 'package:osa_pro/src/core/constants/dimensions.dart';
import 'package:osa_pro/src/core/extensions/app_extensions_context.dart';

class CustomButton extends StatelessWidget {
  final Function()? onTap;
  final String? buttonText;
  final bool isBorder;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? borderColor;
  final double? radius;
  final double? fontSize;
  final String? leftIcon;
  final double? borderWidth;
  final FontWeight? fontWeight;

  const CustomButton(
      {super.key,
      this.onTap,
      required this.buttonText,
      this.isBorder = false,
      this.backgroundColor,
      this.radius,
      this.textColor,
      this.fontSize,
      this.leftIcon,
      this.borderColor,
      this.borderWidth,
      this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      style: TextButton.styleFrom(
          padding: const EdgeInsets.all(PaddingManager.p0)),
      child: Container(
        height: SizeManager.s45,
        alignment: Alignment.center,
        margin: const EdgeInsets.only(top: SizeManager.s10),
        decoration: BoxDecoration(
            border: isBorder
                ? Border.all(
                    color: borderColor ?? context.primaryColor,
                    width: borderWidth ?? SizeManager.widthBorder)
                : null,
            color: backgroundColor ?? context.primaryColor,
            borderRadius: BorderRadius.circular(radius != null
                ? radius!
                : isBorder
                    ? RadiusManager.r15
                    : RadiusManager.r10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (leftIcon != null)
              Padding(
                padding: const EdgeInsets.only(right: PaddingManager.p5),
                child: SizedBox(
                    width: SizeManager.s30,
                    child: Padding(
                      padding: const EdgeInsets.all(PaddingManager.p5),
                      child: Image.asset(leftIcon!),
                    )),
              ),
            Flexible(
              child: Text(buttonText ?? "",
                  style: context.bodyLarge!.copyWith(
                    fontSize: fontSize ?? AppFontSize.fontSizeLarge,
                    color: textColor ?? AppColors.whiteColor,
                    // fontWeight: fontWeight ?? FontWeightManager.semiBold,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
