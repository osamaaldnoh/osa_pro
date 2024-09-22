import 'package:flutter/material.dart';
import 'package:osa_pro/src/core/constants/dimensions.dart';
import 'package:osa_pro/src/core/extensions/app_extensions_context.dart';
import 'package:osa_pro/src/core/widgets/custom_asset_image_widget.dart';
import 'package:osa_pro/src/core/widgets/custom_text.dart';
import 'package:osa_pro/src/core/widgets/hieght_spacer.dart';
import 'package:get/get.dart';

class BuildServicesListWidget extends StatelessWidget {
  final List<Map<String, dynamic>> servicesListItems;
  const BuildServicesListWidget({
    super.key,
    required this.servicesListItems,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: servicesListItems.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: .9,
      ),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () => Get.toNamed(servicesListItems[index]['page']),
          // Get.toNamed(RoutesName.storeInventoryDocumentScreen),
          child: Row(
            // mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomAssetImageWidget(
                      width: context.heightSize * 0.09,
                      // width: 80,
                      height: context.heightSize * .09,
                      radius: RadiusManager.r15,
                      color: context.primaryColor.withOpacity(0.07),
                      // color: Color(0x402F4670),
                      imagePath: servicesListItems[index]['image']),
                  // Container(
                  //   // padding: EdgeInsets.all(10),
                  //   width: SizeManager.s70,
                  //   height: SizeManager.s70,
                  //   decoration: BoxDecoration(
                  //     // color: AppColors.primaryColor,
                  //     // color: Color(0x102F4670),
                  //     color: AppColors.primaryColor.withOpacity(0.07),
                  //     borderRadius: BorderRadius.circular(RadiusManager.r15),
                  //     image: DecorationImage(
                  //       image: AssetImage(servicesListItems[index]['image'],
                  //     ),
                  //     ),
                  //   ),
                  //   // child: Image.asset(servicesListItems[index]['image'],
                  //   // width: 20,
                  //   // height: 20,
                  //   // fit: BoxFit.cover,
                  //   // )
                  //   // Icon(Icons.file_copy,
                  //   // color: AppColors.primaryColor,
                  //   // ),
                  // ),
                  const HieghtSpacer(
                    height: SizeManager.s10,
                  ),
                  SizedBox(
                    // flex: 2,
                    width: SizeManager.s100,
                    child: CustomTextWidget(
                      text: servicesListItems[index]['title'],
                      textAlign: TextAlign.center,
                      style: context.bodyMedium,
                    ),
                    // Text(servicesListItems[index]['title'],
                    // style: Theme.of(context).textTheme.
                    // bodyMedium!.copyWith(
                    //   // fontSize: FontSize.fontSizeLarge,
                    //   fontWeight: FontWeightManager.regular,
                    // ),
                    // // maxLines: 1,
                    // overflow: TextOverflow.ellipsis,
                    // textAlign: TextAlign.center,
                    // ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
