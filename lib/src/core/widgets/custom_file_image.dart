import 'dart:io';

import 'package:flutter/cupertino.dart';

class CustomFileImage extends StatelessWidget {
  final String image;

  // final bool imageAsset;
  final double? height;
  final double? width;
  final BoxFit fit;
  // final String? placeholder;
  const CustomFileImage({
    Key? key,
    required this.image,
    this.height,
    this.width,
    this.fit = BoxFit.cover,
    //  required this.imageAsset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? MediaQuery.of(context).size.width * 0.8,
      height: height ?? MediaQuery.of(context).size.width * 0.7,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
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
