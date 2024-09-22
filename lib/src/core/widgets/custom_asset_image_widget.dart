import 'package:flutter/material.dart';
import 'package:osa_pro/src/core/constants/dimensions.dart';
import 'package:osa_pro/src/core/extensions/app_extensions_context.dart';

class CustomAssetImageWidget extends StatelessWidget {
  CustomAssetImageWidget({
    Key? key,
    this.width,
    this.height,
    this.radius = RadiusManager.r10,
    required this.imagePath,
    this.color = Colors.transparent,
    this.alignment = Alignment.center,
    this.fit = BoxFit.cover,
  }) : super(key: key);
  final double? width;
  final double? height;
  final double? radius;
  final String imagePath;
  final Color? color;
  final AlignmentGeometry? alignment;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 100,
      width: width ?? context.widthSize * .8,
      height: height ?? context.heightSize * .7,

      alignment: alignment,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(radius!),
      ),
      child: Image.asset(
        imagePath,
        //   width: 100,
        // height: 100,
        fit: fit,
      ),
      //   Container(
      //   width: width,
      //   height: height,
      //   // height: double.infinity,
      //   decoration: BoxDecoration(
      //     borderRadius: BorderRadius.circular(radius!),
      //     image:  DecorationImage(
      //       fit: BoxFit.cover,
      //       // fit: BoxFit.fill,
      //       image: AssetImage(imagePath),
      //     ),
      //   ),
      // ),
    );
  }
}
