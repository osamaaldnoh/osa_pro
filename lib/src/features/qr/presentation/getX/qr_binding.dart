
  import 'package:get/get.dart'; 
  import 'qr_controller.dart';

  class QrBinding implements Bindings {
    @override
    void dependencies() => Get.lazyPut(() => QrController());
  }
  