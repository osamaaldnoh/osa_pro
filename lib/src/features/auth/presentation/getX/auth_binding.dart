import 'package:get/get.dart';
import 'package:osa_pro/src/core/config/config.dart';
import 'auth_controller.dart';

class AuthBinding implements Bindings {
  @override
  void dependencies() => Get.lazyPut(
      () => AuthController(
            // loginUserUseCase2: sl(),
            loginAuthUseCase: sl(),
            // userLoginUsecase: sl()
          ),
      fenix: true);
}
