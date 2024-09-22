library route_pages;

import 'package:get/get.dart';
import 'package:osa_pro/src/core/middleware/auth_middleware.dart';
import 'package:osa_pro/src/core/middleware/language_middleware.dart';
import 'package:osa_pro/src/features/accounts/presentation/getX/accounts_binding.dart';
import 'package:osa_pro/src/features/accounts/presentation/pages/pages.dart';
import 'package:osa_pro/src/features/auth/presentation/getX/auth_binding.dart';
import 'package:osa_pro/src/features/auth/presentation/pages/device_info_page.dart';
import 'package:osa_pro/src/features/auth/presentation/pages/pages.dart';
import 'package:osa_pro/src/features/branchinfo/presentation/getX/branchinfo_binding.dart';
import 'package:osa_pro/src/features/branchinfo/presentation/pages/pages.dart';
import 'package:osa_pro/src/features/companyinfo/presentation/getX/companyinfo_binding.dart';
import 'package:osa_pro/src/features/companyinfo/presentation/pages/pages.dart';
import 'package:osa_pro/src/features/currencies/presentation/getX/currencies_binding.dart';
import 'package:osa_pro/src/features/currencies/presentation/pages/pages.dart';
import 'package:osa_pro/src/features/home2/presentation/pages/pages.dart';
import 'package:osa_pro/src/features/inventory_items/presentation/getX/inventoryitems_binding.dart';
import 'package:osa_pro/src/features/inventory_items/presentation/pages/pages.dart';
import 'package:osa_pro/src/features/item_alternative/presentation/getX/item_alternative_binding.dart';
import 'package:osa_pro/src/features/item_alternative/presentation/pages/pages.dart';
import 'package:osa_pro/src/features/item_barcode/presentation/getX/item_barcode_binding.dart';
import 'package:osa_pro/src/features/item_barcode/presentation/pages/pages.dart';
import 'package:osa_pro/src/features/item_groups/presentation/getX/item_groups_binding.dart';
import 'package:osa_pro/src/features/item_groups/presentation/pages/pages.dart';
import 'package:osa_pro/src/features/item_units/presentation/getX/item_units_binding.dart';
import 'package:osa_pro/src/features/item_units/presentation/pages/pages.dart';
import 'package:osa_pro/src/features/items/presentation/getX/items_binding.dart';
import 'package:osa_pro/src/features/items/presentation/pages/pages.dart';
import 'package:osa_pro/src/features/language/presentation/getX/language_binding.dart';
import 'package:osa_pro/src/features/language/presentation/pages/pages.dart';
import 'package:osa_pro/src/features/location/presentation/getX/location_binding.dart';
import 'package:osa_pro/src/features/location/presentation/pages/pages.dart';
import 'package:osa_pro/src/features/qr/presentation/pages/pages.dart';
import 'package:osa_pro/src/features/root/presentation/getX/root_binding.dart';
import 'package:osa_pro/src/features/root/presentation/pages/route_page.dart';
import 'package:osa_pro/src/features/sales_man_settings/presentation/getX/sales_man_settings_binding.dart';
import 'package:osa_pro/src/features/sales_man_settings/presentation/pages/pages.dart';
import 'package:osa_pro/src/features/stoperation/presentation/getX/stoperation_binding.dart';
import 'package:osa_pro/src/features/stoperation/presentation/pages/pages.dart';
import 'package:osa_pro/src/features/store_inventory_document/presentation/getX/store_inventory_document_binding.dart';
import 'package:osa_pro/src/features/store_inventory_document/presentation/pages/pages.dart';
import 'package:osa_pro/src/features/system_docs/presentation/getX/system_docs_binding.dart';
import 'package:osa_pro/src/features/system_docs/presentation/pages/pages.dart';
import 'package:osa_pro/src/features/units/presentation/getX/units_binding.dart';
import 'package:osa_pro/src/features/units/presentation/pages/pages.dart';
import 'package:osa_pro/src/features/user_info/presentation/getX/user_info_binding.dart';
import 'package:osa_pro/src/features/user_info/presentation/pages/pages.dart';
import 'package:osa_pro/src/features/user_store/presentation/getX/user_store_binding.dart';
import 'package:osa_pro/src/features/user_store/presentation/getX/user_store_controller.dart';
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
      GetPage(
          name: RoutesName.initial,
          page: () => LanguagePage(),
          binding: LanguageBinding(),
          middlewares: [
            LanguageMiddleWare(),
          ]),
      GetPage(name: RoutesName.homePage2, page: () => HomePage2()),
      GetPage(
          name: RoutesName.auth,
          page: () => AuthPage(),
          binding: AuthBinding(),
          middlewares: [
            AuthMiddleware(),
          ]),
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
      GetPage(
          name: RoutesName.itemAlternativePage,
          page: () => ItemAlternativePage(),
          binding: ItemAlternativeBinding()),
      GetPage(
          name: RoutesName.itemBarcodePage,
          page: () => ItemBarcodePage(),
          binding: ItemBarcodeBinding()),
      GetPage(
          name: RoutesName.accountsPage,
          page: () => AccountsPage(),
          binding: AccountsBinding()),
      GetPage(
          name: RoutesName.stoperationPage,
          page: () => StoperationPage(),
          binding: StoperationBinding()),

      // Inventory App

      // GetPage(
      //     name: RoutesName.loginPage,
      //     page: () => LoginPage(),
      //     binding: AuthBinding(),
      //     middlewares: [
      //       AuthMiddleware(),
      //     ]),

      GetPage(
          name: RoutesName.rootPage,
          page: () => RootPage(),
          binding: RootBinding()),

      GetPage(
        name: RoutesName.homePage,
        page: () => HomePage2(),
      ),

      GetPage(
          name: RoutesName.storeInventoryDocumentPage,
          page: () => StoreInventoryDocumentPage(),
          bindings: [
            StoreInventoryDocumentBinding(),
            BranchinfoBinding(),
            UserStoreBinding(),
            InventoryItemsBinding(),
          ]),

      GetPage(
          name: RoutesName.inventoryItemsPage,
          page: () => InventoryItemsPage(),
          bindings: [
            InventoryItemsBinding(),
            ItemsBinding(),
            ItemGroupsBinding(),
            UnitsBinding(),
            ItemUnitsBinding(),
            StoperationBinding(),
            ItemBarcodeBinding(),
          ]),

      GetPage(
          name: RoutesName.googleMapPage,
          page: () => LocationPage(),
          binding: LocationBinding()),
      GetPage(name: RoutesName.qrPage, page: () => QRPage()),
      // GetPage(
      //     name: RoutesName.reportPage,
      //     page: () => ReportPage(),
      //     binding: ReportBinding()),
    ];
  }
}
