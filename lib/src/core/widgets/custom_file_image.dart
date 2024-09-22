import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:osa_pro/src/core/constants/dimensions.dart';
import 'package:osa_pro/src/core/extensions/app_extensions_context.dart';

import '../constants/app_images.dart';

class CustomFileImage extends StatelessWidget {
  final String image;

  // final bool imageAsset;
  final double? height;
  final double? width;
  final BoxFit fit;
  final String? placeholder;
  const CustomFileImage({
    Key? key,
    required this.image,
    this.height,
    this.width,
    this.fit = BoxFit.cover,
    this.placeholder = AppImages.placeholderImage,
    //  required this.imageAsset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? context.widthSize * 0.8,
      height: height ?? context.widthSize * 0.7,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(RadiusManager.r10),
        image:
            // imageAsset == true?  DecorationImage(
            //   fit: BoxFit.fill,
            //   image:
            //   AssetImage(image)
            // ):
            DecorationImage(
          fit: BoxFit.fill,
          image: FileImage(File(image)),
        ),
      ),
    );
    // CachedNetworkImage(

    //   placeholder: (context, url) => Image.asset(placeholder?? AppImages.placeholderImage, height: height, width: width, fit: BoxFit.cover),
    //   imageUrl: image, fit: fit,
    //   height: height,width: width,
    //   errorWidget: (c, o, s) => Image.asset(placeholder?? AppImages.placeholderImage, height: height, width: width, fit: BoxFit.cover),
    // );
  }
}

class CustomImageMemory extends StatelessWidget {
  final Uint8List image;

  // final bool imageAsset;
  final double? height;
  final double? width;
  final BoxFit fit;
  final String? placeholder;
  const CustomImageMemory({
    Key? key,
    required this.image,
    this.height,
    this.width,
    this.fit = BoxFit.cover,
    this.placeholder = AppImages.placeholderImage,
    //  required this.imageAsset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? context.widthSize * 0.8,
      height: height ?? context.widthSize * 0.7,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(RadiusManager.r10),
        image:
            // imageAsset == true?  DecorationImage(
            //   fit: BoxFit.fill,
            //   image:
            //   AssetImage(image)
            // ):
            DecorationImage(
          fit: BoxFit.fill,
          image: MemoryImage(image),
        ),
      ),
    );
    // CachedNetworkImage(

    //   placeholder: (context, url) => Image.asset(placeholder?? AppImages.placeholderImage, height: height, width: width, fit: BoxFit.cover),
    //   imageUrl: image, fit: fit,
    //   height: height,width: width,
    //   errorWidget: (c, o, s) => Image.asset(placeholder?? AppImages.placeholderImage, height: height, width: width, fit: BoxFit.cover),
    // );
  }
}
