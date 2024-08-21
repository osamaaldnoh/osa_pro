import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:osa_pro/src/core/error/failure.dart';
import 'package:osa_pro/src/core/api/network_info.dart';
import 'package:osa_pro/src/features/auth/data/models/user_auth_model.dart';
import 'package:osa_pro/src/features/auth/data/sources/login_local_data_source.dart';
import 'package:osa_pro/src/features/auth/domain/entities/auth_response_entity.dart';
import 'package:osa_pro/src/features/auth/domain/entities/user_entity.dart';
import '../sources/login_remote_data_source.dart';
import '../../domain/repositories/repositories.dart';

// typedef AddOrUpdataLoginUser = Future<Unit> Function();

class AuthRepositoryImp implements AuthRepository {
  final LoginRemoteDataSource remoteDataSource;
  final LoginLocalDataSource loginLocalDataSource;
  final NetWorkInfo netWorkInfo;
  AuthRepositoryImp(
      {required this.netWorkInfo,
      required this.loginLocalDataSource,
      required this.remoteDataSource});

  @override
  Future<Either<Failure, AuthResponseEntity>> loginRepo(
      UserAuthEntity userAuthEntity) async {
    if (await netWorkInfo.isConnected) {
      final userAuthModel = UserAuthModel(
        username: userAuthEntity.username,
        password: userAuthEntity.password,
      );
      try {
        final remoteAuth = await remoteDataSource.authLoginUser(userAuthModel);
        // loginLocalDataSource.cacheLogin(remotePosts);
        return Right(remoteAuth);
      } catch (e) {
        return Left(ServerFailure(message: e.toString()));
      }
      // on ServerException {
      //   return Left(ServerFailure(message: "servier message"));
      // } on RequestTimeOut {
      //   return Left(RequestTimeOutFailure(message: "time out  message"));
      // }
    } else {
      return Left(ServerFailure(message: "Error Network !"));
    }
  }

  // @override
  // Future<Either<Failure, Unit>> loginUser(AuthEntity userLogin) async {
  //   final AuthModel loginModel = AuthModel(
  //       token: userLogin.token,
  //       user: userLogin.user,
  //       deviceInfo: userLogin.deviceInfo);
  //   return await _getMessage(() {
  //     return remoteDataSource.loginUser2(loginModel);
  //   });
  // }

  // Future<Either<Failure, Unit>> _getMessage(
  //     AddOrUpdataLoginUser deleteOrUpdateOrAddPost) async {
  //   if (await netWorkInfo.isConnected) {
  //     try {
  //       await deleteOrUpdateOrAddPost();
  //       return const Right(unit);
  //     } on ServerException {
  //       return Left(ServerFailure(message: ""));
  //     }
  //   } else {
  //     return Left(OffLineFailure(message: ""));
  //   }
  // }

  // @override
  // Future<Either<Failure, List<AuthEntity>>> userLoginNew(
  //     UserEntity userEntity) async {
  //   if (await netWorkInfo.isConnected) {
  //     final userModels = UserAuthModel(
  //       username: userEntity.userName,
  //       password: userEntity.passWord,
  //     );
  //     try {
  //       final remoteLogin = await remoteDataSource.userLoginNew(userModels);
  //       loginLocalDataSource.cacheLogin(remoteLogin);
  //       return Right(remoteLogin);
  //     } on ServerException {
  //       return Left(ServerFailure(message: ""));
  //     }
  //   } else {
  //     try {
  //       final localPosts = await loginLocalDataSource.getCachedLoginUser();
  //       return Right(localPosts);
  //     } on EmptyException {
  //       return left(EmptyCacheFailure(message: ""));
  //     }
  //   }
  // }

  // ... example ...
  //
  // Future<User> getUser(String userId) async {
  //     return remoteDataSource.getUser(userId);
  //   }
  // ...
}
