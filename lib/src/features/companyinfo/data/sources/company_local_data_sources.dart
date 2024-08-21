import 'package:osa_pro/src/core/services/db/app_db.dart';
import 'package:osa_pro/src/features/companyinfo/data/models/company_info_model.dart';

abstract class CompanyLocalDataSources {
  Future<CompanyModel> getCompanyInfo({required int companyId});
  Future<int> saveCompanyInfo({required CompanyModel companyModel});
}

class CompanyLocalDataSourcesImp extends CompanyLocalDataSources {
  @override
  Future<CompanyModel> getCompanyInfo({required int companyId}) async {
    try {
      AppDatabase db = AppDatabase.instance();
      CompanyModel? companyModel = await (db.select(db.companyTable)
            ..where((tbl) => tbl.id.equals(companyId)))
          .getSingleOrNull();
      return companyModel!;
    } catch (e) {
      throw Exception("Local get company info error");
    }
  }

  @override
  Future<int> saveCompanyInfo({required CompanyModel companyModel}) async {
    try {
      AppDatabase db = AppDatabase.instance();
      await db.into(db.companyTable).insert(companyModel.toCompanion());
      return companyModel.id ?? 0;
    } catch (e) {
      throw Exception("Local save company info error");
    }
  }
}
