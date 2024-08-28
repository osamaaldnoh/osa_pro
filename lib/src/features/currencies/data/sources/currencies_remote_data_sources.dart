import 'package:osa_pro/src/core/api/end_points.dart';
import 'package:osa_pro/src/core/api/methods/http_methods.dart';
import 'package:osa_pro/src/core/config/config.dart';
import 'package:osa_pro/src/core/error/exception/exception_handlers.dart';
import 'package:osa_pro/src/core/services/shared/shared_per.dart';
import 'package:osa_pro/src/features/currencies/data/models/currencies_model.dart';

abstract class CurrenciesRemoteDataSource {
  // Make API call to fetch data and return object.
  // ...

  Future<List<CurrenciesModel>> getAllCurrencies();
}

class CurrenciesRemoteDataSourceImp implements CurrenciesRemoteDataSource {
  final HttpMethods _httpMethods = HttpMethods(client: sl());
  final SharedPreferencesService _sharedPreferencesService =
      SharedPreferencesService(sl());
  @override
  Future<List<CurrenciesModel>> getAllCurrencies() async {
    final body = {
      'userid': _sharedPreferencesService.getString('userid'),
      'branchid': _sharedPreferencesService.getString('branchid'),
      "dateTime": null
    };

    try {
      List response = await _httpMethods.postApi(
          pathUri: EndPoints.currenciesUri, body: body) as List;

      final List<CurrenciesModel> currenciesModel =
          response.map<CurrenciesModel>((jsonCurrenciesModel) {
        return CurrenciesModel.fromJson(jsonCurrenciesModel);
      }).toList();

      return currenciesModel;
    } catch (e) {
      throw ExceptionHandlers().getExceptionString(e);
    }
  }
}
