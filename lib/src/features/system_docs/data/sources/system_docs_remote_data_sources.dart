import 'package:osa_pro/src/core/api/end_points.dart';
import 'package:osa_pro/src/core/api/methods/http_methods.dart';
import 'package:osa_pro/src/core/config/config.dart';
import 'package:osa_pro/src/core/error/exception/exception_handlers.dart';
import 'package:osa_pro/src/features/system_docs/data/models/system_docs_models.dart';

abstract class SystemDocsRemoteDataSource {
  Future<List<SystemDocsModel>> getAllSystemDocs();
}

class SystemDocsRemoteDataSourceImp implements SystemDocsRemoteDataSource {
  final HttpMethods _networkApiServices = HttpMethods(client: sl());
  @override
  Future<List<SystemDocsModel>> getAllSystemDocs() async {
    try {
      List remoteSystemDocs = await _networkApiServices.getApi(
          url: EndPoints.systemDocsUri) as List;
      print("remoteSystemDocs::::::$remoteSystemDocs");
      final List<SystemDocsModel> systemDocsModelList =
          remoteSystemDocs.map<SystemDocsModel>((jsonSystemDocsModel) {
        return SystemDocsModel.fromJson(jsonSystemDocsModel);
      }).toList();

      return systemDocsModelList;
    } catch (e) {
      print("systemDocsModelList::::::$e");
      throw ExceptionHandlers().getExceptionString(e);
    }
  }
  // Make API call to fetch data and return object.
  // ...
}
