import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:osa_pro/src/core/constants/dimensions.dart';
import 'package:osa_pro/src/core/extensions/app_extensions_context.dart';

class CustomIconWidget extends StatelessWidget {
  final IconData icon;
  final double? iconSize;
  final Color? iconColor;
  const CustomIconWidget(
      {super.key,
      required this.icon,
      this.iconSize = SizeManager.s22,
      this.iconColor});

  @override
  Widget build(BuildContext context) {
    return FaIcon(
      icon,
      size: iconSize?.spMin,
      color: iconColor ?? context.primaryColor,
    );
  }
}
