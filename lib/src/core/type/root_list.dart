import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:osa_pro/src/core/constants/app_string.dart';
import 'package:osa_pro/src/core/constants/icons.dart';
import 'package:osa_pro/src/core/routes/routes.dart';
import 'package:osa_pro/src/features/home/presentation/pages/home_page.dart';
// import 'package:osa_pro/src/features/home/presentation/pages/home_page.dart';

class AppList {
  // Root List
  static List<Map<String, dynamic>> bottomNavBarRootList = [
    {
      'page': const HomePage(),
      'title': 'Home',
      'icon': AppIcons.home,
    },
    {
      'page': Scaffold(),
      'title': 'Scaffold',
      'icon': AppIcons.user,
    },
    {
      'page': Scaffold(),
      'title': 'QR',
      'icon': AppIcons.gear,
    },
  ];

  // Home Services List Items
  static List<Map<String, dynamic>> homeServicesListItems = [
    {
      "title": AppString.newInventory,
      "image": "assets/images/add.png",
      "page": RoutesName.storeInventoryDocumentPage,
    },
    {
      "title": AppString.inventoryManagement,
      "image": "assets/images/gear.png",
      "page": RoutesName.inventoryItemsPage,
    },
    {
      "title": AppString.categoryInquiry,
      "image": "assets/images/list_detail.png",
      "page": RoutesName.storeInventoryDocumentPage,
    },
    {
      "title": AppString.inventoryReport,
      "image": "assets/images/chart.png",
      "page": RoutesName.reportPage,
    },
    {
      "title": AppString.purchaseOrders,
      "image": "assets/images/edit.png",
      "page": RoutesName.rootPage,
    },
    {
      "title": AppString.receiveStore,
      "image": "assets/images/box_check.png",
      "page": RoutesName.homePage2,
    },
  ];

  // Store Inventory Doc List Setting
  static List<Map<String, dynamic>> docSettingList = [
    {
      'id': 1,
      'title': 'تعديل',
      'icon': FontAwesomeIcons.fileEdit,
      'page': '',
    },
    {
      'id': 2,
      'title': 'اعتماد',
      'icon': FontAwesomeIcons.check,
      'page': '',
    },
    {
      'id': 3,
      'title': 'بدء الجرد',
      'icon': FontAwesomeIcons.repeat,
      'page': RoutesName.inventoryItemsPage,
    },
    {
      'id': 4,
      'title': 'ترحيل',
      'icon': FontAwesomeIcons.arrowUpFromBracket,
      'page': '',
    },
    {
      'id': 5,
      'title': 'حذف',
      'icon': FontAwesomeIcons.trash,
      'page': '',
    },
    {
      'id': 6,
      'title': 'تقرير',
      'icon': FontAwesomeIcons.chartBar,
      'page': '',
    },
    // {
    //   'title' : 'تعديل',
    //   'icon' : FontAwesomeIcons.fileEdit,
    // },
    // {
    //   'title' : 'اعتماد',
    //   'icon' : Icons.book,
    // },
    // {
    //   'title' : 'بدء الجرد',
    //   'icon' : FontAwesomeIcons.gofore,
    // },
    // {
    //   'title' : 'ترحيل',
    //   'icon' : FontAwesomeIcons.outdent,
    // },
    // {
    //   'title' : 'حذف',
    //   'icon' : FontAwesomeIcons.remove,
    // },
    // {
    //   'title' : 'تقرير',
    //   'icon' : FontAwesomeIcons.chartArea,
    // },
  ];

  // Inventory Items Data Table Column List
  static List<Map<String, dynamic>> dataColumnDataList = [
    {
      "columnName": "id",
      "title": "#",
    },
    {
      "columnName": "productName",
      "title": "productName".tr,
    },
    {
      "columnName": "group",
      "title": "group".tr,
    },
    {
      "columnName": "unit",
      "title": "unit".tr,
    },
    {
      "columnName": "quantity",
      "title": "quantity".tr,
    },
    {
      "columnName": "number",
      "title": "number".tr,
    },
    {
      "columnName": "difference",
      "title": "difference".tr,
    },
  ];

  // Filter Sort Inventory Items List
  static List<Map<String, dynamic>> filterItemList = [
    {
      "title": "categories_a_z".tr,
      "id": 1,
    },
    {
      "title": "categories_z_a".tr,
      "id": 2,
    },
    {
      "title": "group_a_z".tr,
      "id": 3,
    },
    {
      "title": "group_z_a".tr,
      "id": 4,
    },
    {
      "title": "unit_a_z".tr,
      "id": 5,
    },
    {
      "title": "unit_z_a".tr,
      "id": 6,
    },
    {
      "title": "quantity_a_z".tr,
      "id": 7,
    },
    {
      "title": "quantity_z_a".tr,
      "id": 8,
    },
    {
      "title": "number_a_z".tr,
      "id": 9,
    },
    {
      "title": "number_z_a".tr,
      "id": 10,
    },
    {
      "title": "difference_a_z".tr,
      "id": 11,
    },
    {
      "title": "difference_z_a".tr,
      "id": 12,
    },
  ];

  // Inventory Items Show Style List
  static List<Map<String, dynamic>> showStyleList = [
    {
      "title": "square".tr,
      "icon": Icons.grid_view_outlined,
      'style': "square".tr,
    },
    {
      "title": "list".tr,
      "icon": FontAwesomeIcons.listSquares,
      'style': "list".tr,
    },
    {
      "title": "sort".tr,
      "icon": FontAwesomeIcons.arrowDownShortWide,
      'style': "sort".tr,
    },
  ];
}
