import 'package:drift/drift.dart';
import 'dart:io'; // needed to generate/find a path to db
import 'package:drift/native.dart'; // needed to use NativeDatabase
import 'package:osa_pro/src/core/error/exception/exception_handlers.dart';
import 'package:osa_pro/src/core/services/db/table/accounts_table.dart';
import 'package:osa_pro/src/core/services/db/table/currencies_table.dart';
import 'package:osa_pro/src/core/services/db/table/doc_table.dart';
import 'package:osa_pro/src/core/services/db/table/inventory_doc_data_table.dart';
import 'package:osa_pro/src/core/services/db/table/item_alternative_table.dart';
import 'package:osa_pro/src/core/services/db/table/item_barcode_table.dart';
import 'package:osa_pro/src/core/services/db/table/item_groups_table.dart';
import 'package:osa_pro/src/core/services/db/table/item_units_table.dart';
import 'package:osa_pro/src/core/services/db/table/items_table.dart';
import 'package:osa_pro/src/core/services/db/table/sales_man_settings_table.dart';
import 'package:osa_pro/src/core/services/db/table/stoperation_table.dart';
import 'package:osa_pro/src/core/services/db/table/system_docs_table.dart';
import 'package:osa_pro/src/core/services/db/table/units_table.dart';
import 'package:osa_pro/src/core/services/db/table/user_store_table.dart';
import 'package:osa_pro/src/features/item_groups/data/models/item_groups_models.dart';
import 'package:osa_pro/src/features/item_units/data/models/item_units_models.dart';
import 'package:osa_pro/src/features/sales_man_settings/data/models/sales_man_settings_models.dart';
import 'package:osa_pro/src/features/system_docs/data/models/system_docs_models.dart';
import 'package:osa_pro/src/features/units/data/models/units_models.dart';
import 'package:osa_pro/src/features/user_store/data/models/store_models.dart';
import 'package:path_provider/path_provider.dart'; // needed to get path to document's directory
import 'package:path/path.dart' as p;
import 'package:osa_pro/src/core/services/db/table/branch_table.dart';
import 'package:osa_pro/src/core/services/db/table/company_table.dart';
import 'package:osa_pro/src/core/services/db/table/user_table.dart';
import 'package:flutter/foundation.dart';
import 'package:osa_pro/src/features/companyinfo/data/models/company_info_model.dart';
import 'package:osa_pro/src/features/branchinfo/data/models/branch_info_model.dart';
import 'package:osa_pro/src/features/user_info/data/models/user_model.dart';
import 'package:osa_pro/src/features/currencies/data/models/currencies_model.dart';
import 'package:osa_pro/src/features/items/data/models/items_models.dart';
import 'package:osa_pro/src/features/item_alternative/data/models/item_alternative_models.dart';
import 'package:osa_pro/src/features/item_barcode/data/models/item_barcode_models.dart';
import 'package:osa_pro/src/features/accounts/data/models/accounts_models.dart';
import 'package:osa_pro/src/features/stoperation/data/models/stoperation_models.dart';
import 'package:osa_pro/src/features/store_inventory_document/data/models/doc_models.dart';
import 'package:osa_pro/src/features/inventory_items/data/models/models.dart';

import 'package:drift_dev/api/migrations.dart';

part 'app_db.g.dart';

@DriftDatabase(
  tables: [
    UserTable,
    BranchTable,
    CompanyTable,
    CurrenciesTable,
    SystemDocsTable,
    SalesManSettingsTable,
    UserStoreTable,
    UnitsTable,
    ItemGroupsTable,
    ItemsTable,
    ItemUnitsTable,
    ItemAlternativeTable,
    ItemBarcodeTable,
    AccountsTable,
    StoperationTable,
    DocTable,
    InventoryDocDataTable,
  ],
)
class AppDatabase extends _$AppDatabase {
  static final AppDatabase _instance = AppDatabase();

  static AppDatabase instance() => _instance;

  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 2;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      ///This method is executed only the first time when database is created
      onCreate: (Migrator m) async {
        await m.createAll();
      },

      ///This method is executed every time we increase the schemaVersion number
      ///In this method is where we are handling our migration
      onUpgrade: (Migrator m, int from, int to) async {
        if (from < 2) {
          //await m.addColumn(artist, artist.isActive);
          ///The code line below is when you need to migrate newly added table
          //await m.create(newTable);
        }
      },

      ///This method is helpful as it help us during development phase to check if we did migration correctly
      beforeOpen: (details) async {
        if (kDebugMode) {
          await validateDatabaseSchema();
        }
      },
    );
  }

  Future<void> saveAll<T extends Table, D>(
    TableInfo<T, D> table,
    List<Insertable<D>> models,
  ) async {
    try {
      final db = AppDatabase.instance();
      await db.batch((batch) {
        batch.insertAllOnConflictUpdate(table, models);
      });
    } catch (e) {
      throw LocalDBException(e.toString());
    }
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}

// LazyDatabase _openConnection() {
//   return LazyDatabase(() async {
//     final dbFolder = await getApplicationDocumentsDirectory();
//     final file = File(p.join(dbFolder.path, 'osa-db.sqlite'));
//     return NativeDatabase(file);
//   });
// }



// LazyDatabase _openConnection() {
//   // the LazyDatabase util lets us find the right location for the file async.
//   return LazyDatabase(() async {
//     // put the database file, called db.sqlite here, into the documents folder
//     // for your app.
//     final dbFolder = await getApplicationDocumentsDirectory(); //
//     final file = File(p.join(dbFolder.path,
//         'tododb.sqlite')); // create File object for our database, named tododb.sqlite
//     return NativeDatabase(file,
//         logStatements: true); // SET logs to true, for easier development
//   });
//   // GOTCHA! -> using Provider package, we would need to dispose, close db on main.dart.
//   // Dispose doesn't seem to be necessary using Riverpod having autodispose
// }



// final dir = await getApplicationDocumentsDirectory();
// if (! await dir.exists()) {
//   await dir.create(recursive: true);
// }
// final db = sqlite3.open(p.join(dir.path, 'my_database.db'));
