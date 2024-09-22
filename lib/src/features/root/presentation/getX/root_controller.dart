import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RootController extends GetxService {
  static RootController get to => Get.find();
  final pageController = PageController().obs;
  RxInt currentIndex = 0.obs;

  void onPageChanged(int index) {
    // currentIndex.value =index;
    // print(index);
    currentIndex(index);
  }

  @override
  void onClose() {
    pageController.value.dispose();
  }
}
