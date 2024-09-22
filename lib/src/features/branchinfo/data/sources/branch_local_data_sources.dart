import 'package:osa_pro/src/core/services/db/app_db.dart';
import 'package:osa_pro/src/features/branchinfo/data/models/branch_info_model.dart';

abstract class BranchLocalDataSources {
  Future<BranchInfoModel> getBranch(int branchId);
  // Future<List<BranchInfoModel>> getBranchs();
  Future<int> saveBranch(BranchInfoModel branchModel);
}

class BranchLocalDataSourcesImp extends BranchLocalDataSources {
  // @override
  // Future<List<BranchInfoModel>> getBranchs() async {
  //   AppDatabase db = AppDatabase.instance();
  //   List<BranchInfoModel> branchModelList =
  //       await (db.select(db.branchTable).get());

  //   return branchModelList;
  // }

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

    final result =
        await db.into(db.branchTable).insert(branchModel.toCompanion());
    return result;
  }
}
