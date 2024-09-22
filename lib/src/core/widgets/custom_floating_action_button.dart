import 'package:flutter/material.dart';
import 'package:osa_pro/src/core/constants/colors.dart';
import 'package:osa_pro/src/core/constants/dimensions.dart';
import 'package:osa_pro/src/core/widgets/custom_icon_widget.dart';

class CustomeFloatingActionButton extends StatelessWidget {
  const CustomeFloatingActionButton({
    super.key,
    this.onPressed,
    required this.icon,
    this.colorIcon = AppColors.whiteColor,
    this.sizeIcon = SizeManager.s24,
  });
  final void Function()? onPressed;
  final IconData icon;
  final Color? colorIcon;
  final double? sizeIcon;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: AppColors.primaryColor,
      onPressed: onPressed,
      child: CustomIconWidget(
        icon: icon,
        iconColor: colorIcon,
        iconSize: sizeIcon,
      ),
    );
  }
}
