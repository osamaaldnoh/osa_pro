import 'package:osa_pro/src/core/services/db/app_db.dart';
import 'package:osa_pro/src/features/accounts/data/models/accounts_models.dart';

abstract class AccountsLocalDataSources {
  Future<List<AccountsModel>> getAccounts();
  Future<int> saveAccount(AccountsModel accountModel);
}

class AccountsLocalDataSourcesImp implements AccountsLocalDataSources {
  @override
  Future<List<AccountsModel>> getAccounts() async {
    // AppDatabase db = AppDatabase.instance();
    // List<AccountsModel> response = await (db.select(db.accountsTable).get());
    // return response;
    throw Exception();
  }

  @override
  Future<int> saveAccount(AccountsModel accountModel) async {
    // AppDatabase db = AppDatabase.instance();
    // final result =
    //     await db.into(db.accountsTable).insert(accountModel.toCompanion());
    // return result;
    throw Exception();
  }
}
