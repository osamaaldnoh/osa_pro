import 'package:osa_pro/src/core/api/end_points.dart';
import 'package:osa_pro/src/core/api/helper_service.dart';
import 'package:osa_pro/src/core/config/config.dart';
import 'package:osa_pro/src/core/error/exception/exception_handlers.dart';
import 'package:osa_pro/src/core/api/methods/http_methods.dart';
import 'package:osa_pro/src/core/services/shared/shared_per.dart';
import 'package:osa_pro/src/features/companyinfo/data/models/company_info_model.dart';

abstract class CompanyRemoteDataSource {
  Future<CompanyModel> getCompanyInfo();
}

class CompanyRemoteDataSourceImp extends CompanyRemoteDataSource {
  final HttpMethods _networkApiServices = HttpMethods(client: sl());
  final SharedPreferencesService _sharedPreferencesService =
      SharedPreferencesService(sl());
  @override
  Future<CompanyModel> getCompanyInfo() async {
    try {
      final remoteCompany = await _networkApiServices.postApi(
          pathUri: EndPoints.companyInfoUri, body: HelperService.body);
      _sharedPreferencesService.setString(
          'companyid', remoteCompany['id'].toString());
      return CompanyModel.fromJson(remoteCompany);
    } catch (e) {
      throw ExceptionHandlers().getExceptionString(e);
    }
  }
}
