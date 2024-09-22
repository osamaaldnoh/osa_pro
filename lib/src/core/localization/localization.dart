import 'package:get/get.dart';

class LocaleTranslations implements Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "ar": {
          // Public
          "choose_language": "اختر اللغة",
          "arabic": "عربي",
          "english": "انجليزي",
          "search": "بحث عن...",
          "not_Found": "لا يوجد اي جرد",
          "add": "إضافة",
          "cancel": "إلغاء",
          "studio": "المعرض",
          "camera": "الكاميرا",

          // HomeScreen
          "warehouse_inventory_system": "نظام الجرد المخزني",
          "total_items": "اجمالي الاصناف",
          "items_not_available": "اصناف غير متوفرة",
          "services": "الخدمات",
          "new_inventory": "جرد جديد",
          "inventory_management": "إدارة الجرد",
          "category_inquiry": "استعلام الاصناف",
          "inventory_report": "تقرير الجرد",
          "purchase_orders": "طلبات الشراء",
          "receive_store": "استلام مخزني",

          // Store inventory document
          "store_inventory_document": "وثيقة الجرد المخزني",
          "itemNotInventoried": "لم يتم جرد الصنف",

          // Bottom sheet Store inventory document
          "invoice_number": "رقم الفاتورة",
          "invoice_date": "تاريخ الفاتورة",
          "branch_name": "اسم الفرع",
          "store_name": "اسم المخزن",
          "inventory_document_statement": "بيان وثيقة الجرد",
          "geographical_location": "الموقع الجغرافي",
          "save": "حفظ",
          "save_and_inventory": "حفظ وجرد",

          // Inventory Items
          "inventory_items": "جرد الاصناف",
          "product_name": "اسم الصنف",
          "square": "مربع",
          "list": "قائمة",
          "sort": "فرز",
          "productName": "اسم الصنف",
          "group": "المجموعه",
          "unit": "الوحده",
          "quantity": "الكمية",
          "number": "العدد",
          "difference": "الفارق",

          //  Bottom Sheet Inventory Items
          "item": "الصنف",
          // "group" : "المجموعة",
          // "unit" : "الوحدة",
          // "number" : "العدد",
          "expiry_date": "تأريخ الأنتهاء",
          "notes": "ملاحظات",
          "add_barcode": "اضافة باركود",

          // Filter Inventory Item
          "categories_a_z": "حسب الاصناف أ-ي",
          "categories_z_a": "حسب الاصناف ي-أ",
          "group_a_z": "حسب المجموعه أ-ي",
          "group_z_a": "حسب المجموعه ي-أ",
          "unit_a_z": "حسب الوحده أ-ي",
          "unit_z_a": "حسب الوحده ي-أ",
          "quantity_a_z": "حسب الكمية أ-ي",
          "quantity_z_a": "حسب الكمية ي-أ",
          "number_a_z": "حسب العدد أ-ي",
          "number_z_a": "حسب العدد ي-أ",
          "difference_a_z": "حسب الفارق أ-ي",
          "difference_z_a": "حسب الفارق ي-أ",

          // Login view
          "welcome": "مرحباً",
          "login_to_the_warehouse_inventory_system":
              "تسجل الدخول لنظام الجرد المخزني",
          "login_information": "معلومات تسجيل الدخول",
          "company": "الشركة",
          "branch": "الفرع",
          "year": "السنة",
          "userName": "اسم المستخدم",
          "password": "كلمة المرور",
          "login": "تسجيل الدخول",

          // Google Map Screen
          "geolocation": "تحديد الموقع الجغرافي",
          "detect_location": "تحديد الموقع",
        },
        "en": {
          // Public
          "choose_language": "Choose Language",
          "arabic": "Arabic",
          "english": "English",
          "search": "Search...",
          "not_Found": "Not Found",
          "add": "Add",
          "cancel": "Cancel",
          "studio": "Studio",
          "camera": "Camera",

          // HomeScreen
          "warehouse_inventory_system": "Warehouse inventory system",
          "total_items": "Total items",
          "items_not_available": "Items not available",
          "services": "Services",
          "new_inventory": "New inventory",
          "inventory_management": "Inventory management",
          "category_inquiry": "Category inquiry",
          "inventory_report": "Inventory report",
          "purchase_orders": "Purchase orders",
          "receive_store": "Receive store",

          // Store inventory document
          "store_inventory_document": "Store inventory document",
          "itemNotInventoried": "Item not inventoried",

          // Bottom sheet Store inventory document
          "invoice_number": "Invoice number",
          "invoice_date": "Invoice date",
          "branch_name": "Branch name",
          "store_name": "Store name",
          "inventory_document_statement": "Inventory document statement",
          "geographical_location": "Geographical location",
          "save": "Save",
          "save_and_inventory": "Save and inventory",

          // Inventory Items
          "inventory_items": "Inventory items",
          "product_name": "Product Name",
          "square": "Square",
          "list": "List",
          "sort": "Sort",
          "productName": "Product Name",
          "group": "Group",
          "unit": "Unit",
          "quantity": "Quantity",
          "number": "Number",
          "difference": "Difference",

          //  Bottom Sheet Inventory Items
          "item": "Item",
          // "group" : "Group",
          // "unit" : "Unit",
          // "number" : "Number",
          "expiry_date": "Expiry date",
          "notes": "Notes",
          "add_barcode": "Add barcode",

          // Filter Inventory Item
          "categories_a_z": "Categories A-Z",
          "categories_z_a": "Categories Z-A",
          "group_a_z": "Group A-Z",
          "group_z_a": "Group Z-A",
          "unit_a_z": "Unit A-Z",
          "unit_z_a": "Unit Z-A",
          "quantity_a_z": "Quantity A-Z",
          "quantity_z_a": "Quantity Z-A",
          "number_a_z": "Number A-Z",
          "number_z_a": "Number Z-A",
          "difference_a_z": "Difference A-Z",
          "difference_z_a": "Difference Z-A",

          // Login view
          "welcome": "Welcome",
          "login_to_the_warehouse_inventory_system":
              "Log in to the warehouse inventory system",
          "login_information": "Login information",
          "company": "Company",
          "branch": "Branch",
          "year": "Year",
          "userName": "User Name",
          "password": "Password",
          "login": "Log in",

          // Google Map Screen
          "geolocation": "Geolocation",
          "detect_location": "Detect location",
        }
      };
}
