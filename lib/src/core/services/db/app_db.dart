import 'package:drift/drift.dart';
import 'dart:io'; // needed to generate/find a path to db
import 'package:drift/native.dart'; // needed to use NativeDatabase
import 'package:osa_pro/src/core/services/db/table/currencies_table.dart';
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
import 'package:drift_dev/api/migrations.dart';

part 'app_db.g.dart';

@DriftDatabase(
  tables: [UserTable, BranchTable, CompanyTable, CurrenciesTable],
)
class AppDatabase extends _$AppDatabase {
  static final AppDatabase _instance = AppDatabase();

  static AppDatabase instance() => _instance;

  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

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
