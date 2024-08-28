
  import 'package:get/get.dart'; 
  import 'user_pay_method_controller.dart';

  class UserPayMethodBinding implements Bindings {
    @override
    void dependencies() => Get.lazyPut(() => UserPayMethodController());
  }
  