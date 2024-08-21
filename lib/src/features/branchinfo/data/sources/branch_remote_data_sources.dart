import 'package:osa_pro/src/core/api/end_points.dart';
import 'package:osa_pro/src/core/config/config.dart';
import 'package:osa_pro/src/core/error/exception/exception_handlers.dart';
import 'package:osa_pro/src/core/api/methods/http_methods.dart';
import 'package:osa_pro/src/core/services/shared/shared_per.dart';
import 'package:osa_pro/src/features/branchinfo/data/models/branch_info_model.dart';

abstract class BranchRemoteDataSource {
  Future<BranchInfoModel> getBranchData();
}

class BranchRemoteDataSourceImp extends BranchRemoteDataSource {
  HttpMethods networkApiServices = HttpMethods(client: sl());
  final SharedPreferencesService _sharedPreferencesService =
      SharedPreferencesService(sl());

  @override
  Future<BranchInfoModel> getBranchData() async {
    final body = {
      'userid': _sharedPreferencesService.getString('userid'),
      'branchid': _sharedPreferencesService.getString('branchid'),
      "dateTime": null
    };

    try {
      final branchData = await networkApiServices.postApi(
          pathUri: EndPoints.branchInfoUri, body: body);

      return BranchInfoModel.fromJson(branchData);
    } catch (e) {
      throw ExceptionHandlers().getExceptionString(e);
    }
  }
}
