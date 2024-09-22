import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:osa_pro/src/core/constants/colorss.dart';
import 'package:osa_pro/src/core/type/root_list.dart';
import 'package:osa_pro/src/features/root/presentation/getX/root_controller.dart';
import 'package:osa_pro/src/features/root/presentation/widgets/bottom_navbar_widget.dart';

class RootPage extends GetView<RootController> {
  const RootPage({super.key});
  // final MyServices myServices = Get.find();
  // List<Widget> rootScreenList = [HomeScreen(),Scaffold(),Scaffold()];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: AppColor.bgColor,
        body: PageView(
          controller: controller.pageController.value,
          reverse: false,
          onPageChanged: controller.onPageChanged,
          children: List.generate(AppList.bottomNavBarRootList.length,
              (index) => AppList.bottomNavBarRootList[index]['page']),
        ),
        // floatingActionButtonLocation:
        //     myServices.sharedPreferences.getString("lang") == 'ar'
        //         ? FloatingActionButtonLocation.startFloat
        //         : FloatingActionButtonLocation.endFloat,
        floatingActionButton: BottomNavBarWidget(
          controller: controller,
          pageController: controller.pageController.value,
          bottomNavBarDataList: AppList.bottomNavBarRootList,
        ),
      ),
    );
  }
}
