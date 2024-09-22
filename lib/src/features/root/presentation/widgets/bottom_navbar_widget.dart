import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:osa_pro/src/core/constants/colors.dart';
import 'package:osa_pro/src/core/constants/dimensions.dart';
import 'package:osa_pro/src/core/extensions/app_extensions_context.dart';
import 'package:osa_pro/src/core/widgets/custom_icon_widget.dart';
import 'package:osa_pro/src/features/root/presentation/getX/root_controller.dart';

class BottomNavBarWidget extends StatelessWidget {
  const BottomNavBarWidget({
    super.key,
    required this.controller,
    required this.pageController,
    required this.bottomNavBarDataList,
  });

  final RootController controller;
  final PageController pageController;
  final List<Map<String, dynamic>> bottomNavBarDataList;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeManager.s60,
      width: SizeManager.s180,
      padding: const EdgeInsets.symmetric(
          horizontal: PaddingManager.p12, vertical: PaddingManager.p10),
      decoration: BoxDecoration(
          color: AppColors.floatingActionButtonColor,
          borderRadius: BorderRadius.circular(RadiusManager.r10),
          boxShadow: const [
            BoxShadow(
              color: AppColors.floatShadowsColor,
              blurRadius: RadiusManager.r10,
              spreadRadius: RadiusManager.r0,
              offset: Offset(RadiusManager.offset1, RadiusManager.offset1),
            )
          ]),
      child:
          // ListView.builder(
          //   itemCount: bottomNavBarDataList.length,
          //   scrollDirection: Axis.horizontal,
          //   shrinkWrap: true,
          //   itemBuilder: (context, index) {
          //   return  Obx(() => GestureDetector(
          //     onTap: ()
          //         {
          //           // print("Index :$index");
          //           controller.currentIndex.value = index;
          //           controller.onPageChanged(controller.currentIndex.value);
          //           // pageController.animateTo(
          //           //   controller.currentIndex.value.toDouble(),
          //           //  duration: const Duration(milliseconds: 200),
          //           //  curve: Curves.fastOutSlowIn,
          //           //  );
          //           pageController.animateToPage(index,
          //            duration: const Duration(microseconds: 300),
          //           curve: Curves.fastOutSlowIn, );
          //         },
          //      child: Container(
          //         height: SizeManager.s36,
          //         width: SizeManager.s36,
          //         alignment: Alignment.center,
          //         padding: const EdgeInsets.all(PaddingManager.p2),
          //         decoration: BoxDecoration(
          //           color: controller.currentIndex.value == index?
          //           AppColors.primaryColor:Colors.transparent,
          //           borderRadius: BorderRadius.circular(RadiusManager.r10),
          //         ),
          //         child: Icon(bottomNavBarDataList[index]['icon'],
          //         color:  controller.currentIndex.value == index?
          //         AppColors.whiteColor:AppColors.iconFloatColor,
          //         size: SizeManager.s20,
          //         ),
          //       ),
          //    ),
          //   );
          // },
          // ),

          Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
            bottomNavBarDataList.length,
            (index) => Obx(
                  () => GestureDetector(
                    onTap: () {
                      // controller.currentIndex.value = index;
                      controller.onPageChanged(index);
                      pageController.animateToPage(
                        controller.currentIndex.value,
                        duration: const Duration(microseconds: 300),
                        curve: Curves.fastOutSlowIn,
                      );
                      // pageController.animateToPage(page, duration: duration, curve: curve) = index;
                    },
                    child: Container(
                      height: SizeManager.s40,
                      width: SizeManager.s40,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(PaddingManager.p2),
                      decoration: BoxDecoration(
                        color: controller.currentIndex.value == index
                            ? AppColors.primaryColor
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(RadiusManager.r10),
                      ),
                      child: CustomIconWidget(
                        icon: bottomNavBarDataList[index]['icon'],
                        iconColor: controller.currentIndex.value == index
                            ? AppColors.whiteColor
                            : context.primaryColor,
                        // size: SizeManager.s20,
                      ),
                    ),
                  ),
                )),
      ),
    );
  }
}
