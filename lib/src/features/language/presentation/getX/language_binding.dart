
  import 'package:get/get.dart'; 
  import 'language_controller.dart';

  class LanguageBinding implements Bindings {
    @override
    void dependencies() => Get.lazyPut(() => LanguageController());
  }
  