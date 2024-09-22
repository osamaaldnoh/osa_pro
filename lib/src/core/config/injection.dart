library dependency_injection;

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:osa_pro/src/core/api/methods/http_methods.dart';
import 'package:osa_pro/src/core/api/network_info.dart';
import 'package:osa_pro/src/core/services/shared/app_shared_per_get.dart';
import 'package:osa_pro/src/core/services/shared/app_shared_per_set.dart';
import 'package:osa_pro/src/features/accounts/presentation/getX/accounts_binding.dart';
import 'package:osa_pro/src/features/auth/data/implements/implements.dart';
import 'package:osa_pro/src/features/auth/data/sources/login_local_data_source.dart';
import 'package:osa_pro/src/features/auth/data/sources/login_remote_data_source.dart';
import 'package:osa_pro/src/features/auth/domain/repositories/repositories.dart';
import 'package:osa_pro/src/features/auth/domain/usecases/login_user_usecase.dart';
import 'package:osa_pro/src/features/branchinfo/presentation/getX/branchinfo_binding.dart';
import 'package:osa_pro/src/features/companyinfo/presentation/getX/companyinfo_binding.dart';
import 'package:osa_pro/src/features/currencies/presentation/getX/currencies_binding.dart';
import 'package:osa_pro/src/features/item_alternative/presentation/getX/item_alternative_binding.dart';
import 'package:osa_pro/src/features/item_barcode/presentation/getX/item_barcode_binding.dart';
import 'package:osa_pro/src/features/item_groups/presentation/getX/item_groups_binding.dart';
import 'package:osa_pro/src/features/item_units/presentation/getX/item_units_binding.dart';
import 'package:osa_pro/src/features/items/presentation/getX/items_binding.dart';
import 'package:osa_pro/src/features/sales_man_settings/presentation/getX/sales_man_settings_binding.dart';
import 'package:osa_pro/src/features/stoperation/presentation/getX/stoperation_binding.dart';
import 'package:osa_pro/src/features/system_docs/presentation/getX/system_docs_binding.dart';
import 'package:osa_pro/src/features/units/presentation/getX/units_binding.dart';
import 'package:osa_pro/src/features/user_store/presentation/getX/user_store_binding.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

final sl = GetIt.instance;

class DependencyInjection
// extends Bindings
{
  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();

    sl.registerLazySingleton(() => LoginUserUseCase(repository: sl()));
    // sl.registerLazySingleton(() => LoginUserUseCase2(repository: sl()));
    // sl.registerLazySingleton(() => UserLoginUsecase(authRepository: sl()));
    // sl.registerLazySingleton(() => UserInfoUseCase(repository: sl()));

// Repository

    sl.registerLazySingleton<AuthRepository>(() => AuthRepositoryImp(
        remoteDataSource: sl(), loginLocalDataSource: sl(), netWorkInfo: sl()));
    // sl.registerLazySingleton<UserInfoRepository>(() => UserInfoRepositoryImp(
    //     remoteDataSource: sl(),
    //     userInfoLocalDataSources: sl(),
    //     netWorkInfo: sl()));

// Datasources

    sl.registerLazySingleton(() => HttpMethods(client: sl()));
    sl.registerLazySingleton<LoginRemoteDataSource>(
        () => LoginRemoteDataSourceImp());
    sl.registerLazySingleton<LoginLocalDataSource>(
        () => LoginLocalDataSourceImp(sharedPreferences: sl()));

    // sl.registerLazySingleton<UserInfoRemoteDataSource>(
    //     () => UserInfoRemoteDataSourceImp());
    // sl.registerLazySingleton<UserInfoLocalDataSources>(
    //     () => UserInfoLocalDataSourcesImp());

// Core

    sl.registerLazySingleton<NetWorkInfo>(() => NetWorkInfoImpl(sl()));

// External

    final sharedPreferences = await SharedPreferences.getInstance();
    sl.registerLazySingleton(() => sharedPreferences);
    sl.registerLazySingleton(() => AppSharedPerSet());
    sl.registerLazySingleton(() => AppSharedPerGet());
    sl.registerLazySingleton(() => http.Client());
    sl.registerLazySingleton(() => InternetConnectionChecker());
  }

//   @override
//   void dependencies() async {
//     // Usecases

// //     sl.registerLazySingleton(() => LoginUserUseCase(repository: sl()));
// //     sl.registerLazySingleton(() => LoginUserUseCase2(repository: sl()));

// // // Repository

// //     sl.registerLazySingleton<AuthRepository>(() => AuthRepositoryImp(
// //         remoteDataSource: sl(), loginLocalDataSource: sl(), netWorkInfo: sl()));

// // // Datasources

// //     sl.registerLazySingleton<LoginRemoteDataSource>(
// //         () => LoginRemoteDataSourceImp(client: sl()));
// //     sl.registerLazySingleton<LoginLocalDataSource>(
// //         () => LoginLocalDataSourceImp(sharedPreferences: sl()));

// // //! Core

// //     sl.registerLazySingleton<NetWorkInfo>(() => NetWorkInfoImpl(sl()));

// // //! External

// //     final sharedPreferences = await SharedPreferences.getInstance();
// //     sl.registerLazySingleton(() => sharedPreferences);
// //     sl.registerLazySingleton(() => http.Client());
// //     sl.registerLazySingleton(() => InternetConnectionChecker());
//   }
}

Future<void> initAfterLogin() async {
  ItemsBinding();
  UnitsBinding();
  ItemGroupsBinding();
  ItemAlternativeBinding();
  ItemUnitsBinding();
  BranchinfoBinding();
  CompanyinfoBinding();
  CurrenciesBinding();
  SystemDocsBinding();
  SalesManSettingsBinding();
  UserStoreBinding();
  ItemBarcodeBinding();
  AccountsBinding();
  StoperationBinding();
}
