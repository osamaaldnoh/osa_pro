import 'package:get/get.dart';
// import 'package:osa_pro/src/core/config/injection.dart';
import 'package:osa_pro/src/core/constants/strings/failure.dart';
import 'package:osa_pro/src/core/enums/login_status.dart';
import 'package:osa_pro/src/core/error/exception/exception_handlers.dart';
import 'package:osa_pro/src/core/error/failure.dart';
import 'package:osa_pro/src/features/user_info/domain/entities/user_entity.dart';
// import 'package:osa_pro/src/features/auth/data/sources/login_local_data_source.dart';
import 'package:osa_pro/src/features/user_info/domain/usecases/user_usecases.dart';

class UserInfoController extends GetxController {
  RxString message = ''.obs;

  final UserInfoUseCase userInfoUseCase;
  final status = RequestStatus.NOTHING.obs;
  RxBool isLoading = false.obs;
  Rx<UserEntity> userEntity = Rx(UserEntity(
      id: 0,
      userName: '',
      password: '',
      userAccType: 0,
      branchId: 0,
      groupId: 0,
      image: '',
      note: ''));
  @override
  void onInit() {
    super.onInit();
    getUserInfo();
  }

  UserInfoController({required this.userInfoUseCase});

  Future<void> getUserInfo() async {
    // LoginLocalDataSourceImp localDataSource =
    //     LoginLocalDataSourceImp(sharedPreferences: sl());

    status.value = RequestStatus.LOADING;
    final userData = await userInfoUseCase();

    print("User Data :::::::::${userData}");
    userData.fold((failure) {
      status.value = RequestStatus.ERROR;
      message.value = failure.message;
      FetchDataException(_mapFailureToMessage(failure));
    }, (loginuser) {
      print("User Info ::::: ${loginuser}");
      status.value = RequestStatus.COMPLLETED;
      userEntity.value = loginuser;
      // Get.snackbar("Success", "Post Added Successfully");
      // LoadedPostsState(posts: posts);
    });
  }

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
}
