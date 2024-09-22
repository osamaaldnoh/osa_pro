import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:osa_pro/src/core/constants/colors.dart';
import 'package:osa_pro/src/core/constants/dimensions.dart';

dynamic customBottomSheetWidget({
  required Widget childWidget,
  double? horizontalPadding = PaddingManager.p10,
  double? verticalPadding = PaddingManager.p20,
  double? topLeftAndRightRadius = RadiusManager.r20,
  Color? bgColor = AppColors.bottomSheet,
}) {
  return Get.bottomSheet(
    elevation: 0,
    isScrollControlled: true,
    SingleChildScrollView(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(topLeftAndRightRadius!),
            topRight: Radius.circular(topLeftAndRightRadius),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding!,
            vertical: verticalPadding!,
          ),
          child: childWidget,
        ),
      ),
    ),
  );
}
