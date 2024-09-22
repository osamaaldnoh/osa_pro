import 'package:osa_pro/src/core/api/end_points.dart';
import 'package:osa_pro/src/core/api/helper_service.dart';
import 'package:osa_pro/src/core/api/methods/http_methods.dart';
import 'package:osa_pro/src/core/config/config.dart';
import 'package:osa_pro/src/core/error/exception/exception_handlers.dart';
import 'package:osa_pro/src/features/accounts/data/models/accounts_models.dart';

abstract class AccountsRemoteDataSource {
  // Make API call to fetch data and return object.
  // ...
  Future<List<AccountsModel>> getAccounts();
}

class AccountsRemoteDataSourceImp implements AccountsRemoteDataSource {
  final HttpMethods _httpMethods = HttpMethods(client: sl());

  @override
  Future<List<AccountsModel>> getAccounts() async {
    try {
      List response = await _httpMethods.postApi(
          pathUri: EndPoints.accountsUri, body: HelperService.body);

      List<AccountsModel> accountsList = response
          .map((jsonAccounts) => AccountsModel.fromJson(jsonAccounts))
          .toList();
      return accountsList;
    } catch (e) {
      throw ExceptionHandlers().getExceptionString(e);
    }
  }
}
