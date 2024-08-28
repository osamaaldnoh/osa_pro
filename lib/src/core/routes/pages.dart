library route_pages;

import 'package:get/get.dart';
import 'package:osa_pro/src/features/auth/presentation/getX/auth_binding.dart';
import 'package:osa_pro/src/features/auth/presentation/pages/device_info_page.dart';
import 'package:osa_pro/src/features/auth/presentation/pages/pages.dart';
import 'package:osa_pro/src/features/branchinfo/presentation/getX/branchinfo_binding.dart';
import 'package:osa_pro/src/features/branchinfo/presentation/pages/pages.dart';
import 'package:osa_pro/src/features/companyinfo/presentation/getX/companyinfo_binding.dart';
import 'package:osa_pro/src/features/companyinfo/presentation/pages/pages.dart';
import 'package:osa_pro/src/features/currencies/presentation/getX/currencies_binding.dart';
import 'package:osa_pro/src/features/currencies/presentation/pages/pages.dart';
import 'package:osa_pro/src/features/home/presentation/pages/pages.dart';
import 'package:osa_pro/src/features/item_groups/presentation/getX/item_groups_binding.dart';
import 'package:osa_pro/src/features/item_groups/presentation/pages/pages.dart';
import 'package:osa_pro/src/features/item_units/presentation/getX/item_units_binding.dart';
import 'package:osa_pro/src/features/item_units/presentation/pages/pages.dart';
import 'package:osa_pro/src/features/items/presentation/getX/items_binding.dart';
import 'package:osa_pro/src/features/items/presentation/pages/pages.dart';
import 'package:osa_pro/src/features/sales_man_settings/presentation/getX/sales_man_settings_binding.dart';
import 'package:osa_pro/src/features/sales_man_settings/presentation/pages/pages.dart';
import 'package:osa_pro/src/features/system_docs/presentation/getX/system_docs_binding.dart';
import 'package:osa_pro/src/features/system_docs/presentation/pages/pages.dart';
import 'package:osa_pro/src/features/units/presentation/getX/units_binding.dart';
import 'package:osa_pro/src/features/units/presentation/pages/pages.dart';
import 'package:osa_pro/src/features/user_info/presentation/getX/user_info_binding.dart';
import 'package:osa_pro/src/features/user_info/presentation/pages/pages.dart';
import 'package:osa_pro/src/features/user_store/presentation/getX/user_store_binding.dart';
import 'package:osa_pro/src/features/user_store/presentation/pages/pages.dart';
import 'routes.dart';

class AppRoute {
  // static const initial = RoutesName.initial;
  // static Route<dynamic> generate(RouteSettings? settings) {
  //   switch (settings?.name) {
  //     case RoutesName.initial:
  //       // return const PageFadeTransition(child: HomePage()).build;
  //       return MaterialPageRoute(builder: (ctx) => HomePage());
  //     case RoutesName.auth:
  //       // return const PageFadeTransition(child: HomePage()).build;
  //       return MaterialPageRoute(builder: (ctx) => AuthPage());

  //     default:
  //       // If there is no such named route in the switch statement
  //       throw const RouteException('Route not found!');
  //   }
  // }

  List<GetPage> generate() {
    return [
      GetPage(name: RoutesName.initial, page: () => HomePage()),
      GetPage(
          name: RoutesName.auth,
          page: () => AuthPage(),
          binding: AuthBinding()),
      GetPage(
        name: RoutesName.deviceInfo,
        page: () => DeviceInfoPage(),
      ),
      GetPage(
          name: RoutesName.userInfoPage,
          page: () => UserInfoPage(),
          binding: UserInfoBinding()),
      GetPage(
          name: RoutesName.branchInfoPage,
          page: () => BranchInfoPage(),
          binding: BranchinfoBinding()),
      GetPage(
          name: RoutesName.companyInfoPage,
          page: () => CompanyInfoPage(),
          binding: CompanyinfoBinding()),
      GetPage(
          name: RoutesName.currenciesPage,
          page: () => CurrenciesPage(),
          binding: CurrenciesBinding()),
      GetPage(
          name: RoutesName.systemDocsPage,
          page: () => SystemDocsPage(),
          binding: SystemDocsBinding()),
      GetPage(
          name: RoutesName.salesManMethodsPage,
          page: () => SalesManSettingsPage(),
          binding: SalesManSettingsBinding()),
      GetPage(
        name: RoutesName.userStorePage,
        page: () => UserStorePage(),
        binding: UserStoreBinding(),
      ),
      GetPage(
          name: RoutesName.unitsPage,
          page: () => UnitsPage(),
          binding: UnitsBinding()),
      GetPage(
          name: RoutesName.itemGroupsPage,
          page: () => ItemGroupsPage(),
          binding: ItemGroupsBinding()),
      GetPage(
          name: RoutesName.itemsPage,
          page: () => ItemsPage(),
          binding: ItemsBinding()),
      GetPage(
          name: RoutesName.itemUnitsPage,
          page: () => ItemUnitsPage(),
          binding: ItemUnitsBinding()),
    ];
  }
}
