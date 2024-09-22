import 'package:flutter/material.dart';
import 'package:osa_pro/src/core/constants/app_string.dart';
import 'package:osa_pro/src/features/home/presentation/widgets/build_app_bar_widget.dart';
import 'package:osa_pro/src/features/home/presentation/widgets/build_home_body_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        // backgroundColor: AppColors.bgColor,
        appBar: homeAppBarWidget(
          titleAppBar: AppString.warehouseInventorySystem,
          labelTotalItems: AppString.totalItems,
          countTotalItems: 1500,
          labelItemsNotAvailabel: AppString.itemsNotAvailable,
          countItemsNotAvailable: 1000,
        ),
        body: const SingleChildScrollView(child: BuildHomeBodyWidget()),
      ),
    );
  }
}
