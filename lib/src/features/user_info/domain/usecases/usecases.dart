import 'package:dartz/dartz.dart';
import 'package:osa_pro/src/core/error/failure.dart';
import 'package:osa_pro/src/features/user_info/domain/entities/user_entity.dart';
import 'package:osa_pro/src/features/user_info/domain/repositories/repositories.dart';

class UserInfoUseCase {
  final UserInfoRepository repository;

  UserInfoUseCase({required this.repository});

  Future<Either<Failure, UserEntity>> call() async {
    return repository.getUserInfo();
  }
}
