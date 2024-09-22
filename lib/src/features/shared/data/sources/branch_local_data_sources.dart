import 'package:osa_pro/src/core/services/db/app_db.dart';
import 'package:osa_pro/src/features/branchinfo/data/models/branch_info_model.dart';

abstract class BranchLocalDataSources {
  Future<BranchInfoModel> getBranch(int branchId);
  Future<int> saveBranch(BranchInfoModel branchModel);
}

class BranchLocalDataSourcesImp extends BranchLocalDataSources {
  @override
  @override
  Future<BranchInfoModel> getBranch(int branchId) async {
    AppDatabase db = AppDatabase.instance();
    BranchInfoModel? branchModel = await (db.select(db.branchTable)
          ..where((tbl) => tbl.id.equals(branchId)))
        .getSingleOrNull();

    return branchModel!;
  }

  @override
  Future<int> saveBranch(BranchInfoModel branchModel) async {
    AppDatabase db = AppDatabase.instance();
    try {
      await db.into(db.branchTable).insert(branchModel.toCompanion());
      return branchModel.id ?? 0;
    } catch (e) {
      throw Exception("Local save branch info error");
    }
  }
}
