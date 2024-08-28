
  import 'package:get/get.dart'; 
  import 'item_alternative_controller.dart';

  class ItemAlternativeBinding implements Bindings {
    @override
    void dependencies() => Get.lazyPut(() => ItemAlternativeController());
  }
  