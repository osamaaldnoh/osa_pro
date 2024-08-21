import 'package:dartz/dartz.dart';
import 'package:osa_pro/src/core/error/failure.dart';
import 'package:osa_pro/src/features/companyinfo/domain/entities/company_entities.dart';

abstract class CompanyRepository {
  // Future<User> getUser(String userId);

  Future<Either<Failure, CompanyEntity>> getCompanyInfo();
}
