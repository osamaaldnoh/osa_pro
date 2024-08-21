import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:osa_pro/src/core/constants/strings/failure.dart';
import 'package:osa_pro/src/core/enums/login_status.dart';
import 'package:osa_pro/src/core/error/exception/exception_handlers.dart';
import 'package:osa_pro/src/core/error/failure.dart';
import 'package:osa_pro/src/features/auth/domain/entities/auth_response_entity.dart';
import 'package:osa_pro/src/features/auth/domain/entities/user_entity.dart';
import 'package:osa_pro/src/features/auth/domain/usecases/login_user_usecase.dart';

class AuthController extends GetxController {
  late TextEditingController userName;
  late TextEditingController passWord;
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  // RxList<AuthEntity> _loginList = RxList([]);
  // RxList<AuthEntity> get loginList => RxList([..._loginList]);
  Rx<AuthResponseEntity> authResponseEntity = Rx(AuthResponseEntity(
    token: '',
    userId: '',
    refreshToken: '',
  ));
  RxString message = ''.obs;

  final LoginUserUseCase loginUserUseCase;
  // final LoginUserUseCase2 loginUserUseCase2;
  // final UserLoginUsecase userLoginUsecase;
  final authStatus = LoginStatus.NOTHING.obs;
  RxBool isLoading = false.obs;

  AuthController({
    required this.loginUserUseCase,
    // required this.loginUserUseCase2,
    // required this.userLoginUsecase,
  });

  loginUser1() async {
    if (formstate.currentState!.validate()) {
      authStatus.value = LoginStatus.LOADING;
      // var nameUser = AesEncryptAndDecrypt.encryptAES(text: userName.text);
      // var passwordUser = AesEncryptAndDecrypt.encryptAES(text: passWord.text);
      // print("name User :::::::::: ${nameUser}");

      final authData = await loginUserUseCase.login(
          UserAuthEntity(username: userName.text, password: passWord.text));

      authData.fold((failure) {
        authStatus.value = LoginStatus.ERROR;
        message.value = failure.message;
        FetchDataException(_mapFailureToMessage(failure));
      }, (authResponse) {
        authStatus.value = LoginStatus.COMPLLETED;
        authResponseEntity.value = authResponse;
        Get.snackbar("Success", "Post Added Successfully");
        // LoadedPostsState(posts: posts);
      });
    }
  }

  // login() async {
  //   if (formstate.currentState!.validate()) {
  //     postStatus.value = LoginStatus.LOADING;
  //     var nameUser = AesEncryptAndDecrypt.encryptAES(text: userName.text);
  //     var passwordUser = AesEncryptAndDecrypt.encryptAES(text: passWord.text);
  //     print("name User ${nameUser.base64}");
  //     print("Password User ${passwordUser.base64}");

  //     final loginData = await userLoginUsecase.login(UserEntity(
  //       userName: nameUser.base64,
  //       passWord: passwordUser.base64,
  //     ));
  //     loginData.fold((failure) {
  //       postStatus.value = LoginStatus.ERROR;
  //       ErrorLoginStatus(message: _mapFailureToMessage(failure));
  //     }, (loginuser) {
  //       postStatus.value = LoginStatus.COMPLLETED;
  //       Get.snackbar("Success", "Post Added Successfully");
  //       // LoadedPostsState(posts: posts);
  //     });
  //   }
  // }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return SERVER_FAILURE_MESSAGE;
      case EmptyCacheFailure:
        return EMPTY_CACHE_FAILURE_MESSAGE;
      case OffLineFailure:
        return OFFLINE_FAILURE_MESSAGE;
      default:
        return "Unexpected Error , Please try again later .";
    }
  }

  @override
  void onInit() {
    userName = TextEditingController();
    passWord = TextEditingController();
    super.onInit();
  }
}
