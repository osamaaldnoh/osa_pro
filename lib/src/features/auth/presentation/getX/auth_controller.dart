import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:osa_pro/src/core/config/config.dart';
import 'package:osa_pro/src/core/enums/login_status.dart';
import 'package:osa_pro/src/core/routes/names.dart';
import 'package:osa_pro/src/core/services/shared/app_shared_per_set.dart';
import 'package:osa_pro/src/features/auth/domain/entities/user_entity.dart';
import 'package:osa_pro/src/features/auth/domain/usecases/login_user_usecase.dart';

class AuthController extends GetxController {
  final LoginUserUseCase _loginAuthUseCase;

  AuthController({required LoginUserUseCase loginAuthUseCase})
      : _loginAuthUseCase = loginAuthUseCase;

  // final AppSharedPerSet _appSharedPerSet = Get.find();

  final authState = RequestStatus.NOTHING.obs;
  void setRxRequestStatus(RequestStatus value) => authState.value = value;
  final isLogin = false.obs;
  //
  final GlobalKey<FormState> loginFormKey = GlobalKey();
  // TextEditingController
  late TextEditingController userNameController;
  late TextEditingController passwordController;
  late TextEditingController ipController;
  late TextEditingController portController;

  // FocusNode
  final FocusNode userNameNode = FocusNode();
  final FocusNode passwordNode = FocusNode();
  final FocusNode ipNode = FocusNode();
  final FocusNode portNode = FocusNode();

  @override
  void onInit() {
    userNameController = TextEditingController();
    passwordController = TextEditingController();
    ipController = TextEditingController();
    portController = TextEditingController();
    super.onInit();
  }

  AppSharedPerSet appSharedPerSet = AppSharedPerSet();

  // @override
  login() async {
    if (loginFormKey.currentState!.validate()) {
      setRxRequestStatus(RequestStatus.LOADING);

      appSharedPerSet.setIp = ipController.text.trim();

      appSharedPerSet.setPort = portController.text.trim();
      // _appSharedPerSet.setIp = ipController.text.trim();
      // _appSharedPerSet.setPort = portController.text.trim();
      var result = await _loginAuthUseCase.login(UserAuthEntity(
          username: userNameController.text.trim(),
          password: passwordController.text.trim()));
      result.fold((l) {
        print(l.message);
        setRxRequestStatus(RequestStatus.ERROR);
        SnackBar(content: Text(l.message));
      }, (r) {
        initAfterLogin();
        if (isLogin.value == true) {
          appSharedPerSet.setIsLoginUser = isLogin.value;
        }
        Get.toNamed(RoutesName.rootPage);
        setRxRequestStatus(RequestStatus.COMPLLETED);
      });
    }
  }

  @override
  void dispose() {
    userNameController.dispose();
    passwordController.dispose();
    ipController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  // @override
  void clearController() {
    userNameController.clear();
    passwordController.clear();

    ipController.clear();
    portController.clear();
  }
}























// import 'package:flutter/widgets.dart';
// import 'package:get/get.dart';
// import 'package:osa_pro/src/core/constants/strings/failure.dart';
// import 'package:osa_pro/src/core/enums/login_status.dart';
// import 'package:osa_pro/src/core/error/exception/exception_handlers.dart';
// import 'package:osa_pro/src/core/error/failure.dart';
// import 'package:osa_pro/src/features/auth/domain/entities/auth_response_entity.dart';
// import 'package:osa_pro/src/features/auth/domain/entities/user_entity.dart';
// import 'package:osa_pro/src/features/auth/domain/usecases/login_user_usecase.dart';

// class AuthController extends GetxController {
//   late TextEditingController userName;
//   late TextEditingController passWord;
//   GlobalKey<FormState> formstate = GlobalKey<FormState>();
//   // RxList<AuthEntity> _loginList = RxList([]);
//   // RxList<AuthEntity> get loginList => RxList([..._loginList]);
//   Rx<AuthResponseEntity> authResponseEntity = Rx(AuthResponseEntity(
//     token: '',
//     userId: '',
//     refreshToken: '',
//   ));
//   RxString message = ''.obs;

//   final LoginUserUseCase loginUserUseCase;
//   // final LoginUserUseCase2 loginUserUseCase2;
//   // final UserLoginUsecase userLoginUsecase;
//   final authStatus = RequestStatus.NOTHING.obs;
//   RxBool isLoading = false.obs;

//   AuthController({
//     required this.loginUserUseCase,
//     // required this.loginUserUseCase2,
//     // required this.userLoginUsecase,
//   });

//   loginUser1() async {
//     if (formstate.currentState!.validate()) {
//       authStatus.value = RequestStatus.LOADING;
//       // var nameUser = AesEncryptAndDecrypt.encryptAES(text: userName.text);
//       // var passwordUser = AesEncryptAndDecrypt.encryptAES(text: passWord.text);
//       // print("name User :::::::::: ${nameUser}");

//       final authData = await loginUserUseCase.login(
//           UserAuthEntity(username: userName.text, password: passWord.text));

//       authData.fold((failure) {
//         authStatus.value = RequestStatus.ERROR;
//         message.value = failure.message;
//         FetchDataException(_mapFailureToMessage(failure));
//       }, (authResponse) {
//         authStatus.value = RequestStatus.COMPLLETED;
//         authResponseEntity.value = authResponse;
//         Get.snackbar("Success", "Post Added Successfully");
//         // LoadedPostsState(posts: posts);
//       });
//     }
//   }

//   // login() async {
//   //   if (formstate.currentState!.validate()) {
//   //     postStatus.value = LoginStatus.LOADING;
//   //     var nameUser = AesEncryptAndDecrypt.encryptAES(text: userName.text);
//   //     var passwordUser = AesEncryptAndDecrypt.encryptAES(text: passWord.text);
//   //     print("name User ${nameUser.base64}");
//   //     print("Password User ${passwordUser.base64}");
//   //     final loginData = await userLoginUsecase.login(UserEntity(
//   //       userName: nameUser.base64,
//   //       passWord: passwordUser.base64,
//   //     ));
//   //     loginData.fold((failure) {
//   //       postStatus.value = LoginStatus.ERROR;
//   //       ErrorLoginStatus(message: _mapFailureToMessage(failure));
//   //     }, (loginuser) {
//   //       postStatus.value = LoginStatus.COMPLLETED;
//   //       Get.snackbar("Success", "Post Added Successfully");
//   //       // LoadedPostsState(posts: posts);
//   //     });
//   //   }
//   // }

//   String _mapFailureToMessage(Failure failure) {
//     switch (failure.runtimeType) {
//       case ServerFailure:
//         return SERVER_FAILURE_MESSAGE;
//       case EmptyCacheFailure:
//         return EMPTY_CACHE_FAILURE_MESSAGE;
//       case OffLineFailure:
//         return OFFLINE_FAILURE_MESSAGE;
//       default:
//         return "Unexpected Error , Please try again later .";
//     }
//   }

//   @override
//   void onInit() {
//     userName = TextEditingController();
//     passWord = TextEditingController();
//     super.onInit();
//   }
// }
