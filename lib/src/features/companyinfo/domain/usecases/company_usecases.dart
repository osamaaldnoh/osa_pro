import 'package:dartz/dartz.dart';
import 'package:osa_pro/src/core/error/failure.dart';
import 'package:osa_pro/src/features/companyinfo/domain/entities/company_entities.dart';

import '../repositories/company_repositories.dart';

class CompanyUseCase {
  final CompanyRepository repository;

  CompanyUseCase({required this.repository});

  // Future<User> execute(String userId) async {
  //   return userRepository.getUser(userId);
  // }

  Future<Either<Failure, CompanyEntity>> call() async {
    return await repository.getCompanyInfo();
  }
}
