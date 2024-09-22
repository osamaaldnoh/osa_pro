import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:osa_pro/src/core/constants/colors.dart';
import 'package:osa_pro/src/core/constants/dimensions.dart';
import 'package:osa_pro/src/core/widgets/custom_asset_image_widget.dart';
import 'package:osa_pro/src/core/widgets/custom_file_image.dart';
import '../constants/app_images.dart';

class ImageDialog extends StatelessWidget {
  final Uint8List imageUrl;
  // final bool imageAsset;
  const ImageDialog({
    Key? key,
    required this.imageUrl,
    // required this.imageAsset
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(RadiusManager.r10),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              children: [
                imageUrl == '' || imageUrl == 'null'
                    ? CustomAssetImageWidget(
                        imagePath: AppImages.placeholderImage,
                      )
                    : CustomImageMemory(
                        image: imageUrl,
                        // imageAsset: imageAsset,
                      ),
                Positioned(
                  // alignment: Alignment.centerRight,
                  // top: 2,
                  right: 0,
                  child: IconButton(
                    icon: const Icon(
                      Icons.cancel,
                      color: AppColors.lightBlackColor2,
                    ),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

































// import 'package:flutter/material.dart';
// import 'package:osa_pro/src/core/constants/colors.dart';
// import 'package:osa_pro/src/core/constants/dimensions.dart';
// import 'package:osa_pro/src/core/widgets/custom_asset_image_widget.dart';
// import 'package:osa_pro/src/core/widgets/custom_file_image.dart';
// import '../constants/app_images.dart';

// class ImageDialog extends StatelessWidget {
//   final String imageUrl;
//   // final bool imageAsset;
//   const ImageDialog({
//     Key? key,
//     required this.imageUrl,
//     // required this.imageAsset
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Dialog(
//       shape: const RoundedRectangleBorder(
//         borderRadius: BorderRadius.all(
//           Radius.circular(RadiusManager.r10),
//         ),
//       ),
//       child: SingleChildScrollView(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Stack(
//               children: [
//                 imageUrl == '' || imageUrl == 'null'
//                     ? CustomAssetImageWidget(
//                         imagePath: AppImages.placeholderImage,
//                       )
//                     : CustomFileImage(
//                         image: imageUrl,
//                         // imageAsset: imageAsset,
//                       ),
//                 Align(
//                   alignment: Alignment.centerRight,
//                   child: IconButton(
//                     icon: const Icon(
//                       Icons.cancel,
//                       color: AppColors.lightBlackColor2,
//                     ),
//                     onPressed: () => Navigator.of(context).pop(),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
