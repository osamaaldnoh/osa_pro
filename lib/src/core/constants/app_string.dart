import 'package:get/get.dart';

class AppString {
  // Login Screen
  static String welcome = 'welcome'.tr;
  static String loginDescription = 'login_to_the_warehouse_inventory_system'.tr;
  static String loginInformation = 'login_information'.tr;
  static String company = 'company'.tr;
  static String branch = 'branch'.tr;
  static String year = 'year'.tr;
  static String userName = 'userName'.tr;
  static String password = 'password'.tr;
  static String login = 'login'.tr;
  static String ipAddress = '192.168.1.1';
  static String port = '50000';

  // Validate Check
  static const String emailMustBeRequired = 'Email field is required';
  static const String enterValidEmailAddress = 'Enter valid email address';
  static const String minimumPasswordIs8Character =
      'Minimum password should be 8 character';
  static const String thisFieldIsRequired = 'This field is required';
  static const String confirmPasswordMustBeRequired =
      'Confirm password field is required';
  static const String confirmPasswordNotMatched =
      'Confirm password not matched';

  // Home Page
  static String warehouseInventorySystem = "warehouse_inventory_system".tr;
  static String totalItems = "total_items".tr;
  static String itemsNotAvailable = "items_not_available".tr;
  static String services = "services".tr;
  // Service Title Home Page
  static String newInventory = "new_inventory".tr;
  static String inventoryManagement = "inventory_management".tr;
  static String categoryInquiry = "category_inquiry".tr;
  static String inventoryReport = "inventory_report".tr;
  static String purchaseOrders = "purchase_orders".tr;
  static String receiveStore = "receive_store".tr;

  // Store Inventory Document Page
  static String storeInventoryDocument = "store_inventory_document".tr;
  static String notFound = "not_Found".tr;
  static String itemNotInventoried = "itemNotInventoried".tr;
}
