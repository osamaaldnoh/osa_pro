import 'package:get/get.dart';
import 'package:osa_pro/src/features/inventory_items/data/implements/implements.dart';
import 'package:osa_pro/src/features/inventory_items/data/sources/local_inventory_documents_data_source.dart';
import 'package:osa_pro/src/features/inventory_items/data/sources/sources.dart';
import 'package:osa_pro/src/features/inventory_items/domain/repositories/repositories.dart';
import 'package:osa_pro/src/features/inventory_items/domain/usecases/add_inventory_documents_usecases.dart';
import 'package:osa_pro/src/features/inventory_items/domain/usecases/delete_documents_usecases.dart';
import 'package:osa_pro/src/features/inventory_items/domain/usecases/delete_inventory_documents_usecases.dart';
import 'package:osa_pro/src/features/inventory_items/domain/usecases/get_inventory_documents_usecases.dart';
import 'package:osa_pro/src/features/inventory_items/domain/usecases/updata_inventory_documents_usecases.dart';
import 'inventoryitems_controller.dart';

class InventoryItemsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => InventoryitemsRemoteDataSource(), fenix: true);
    Get.lazyPut<LocalInventoryDocumentsDataSource>(
        () => LocalInventoryDocumentsDataSourceImp(),
        fenix: true);
    Get.lazyPut<InventoryitemsRepository>(
        () => InventoryitemsRepositoryImp(
              remoteDataSource: Get.find(),
              localDataSource: Get.find(),
            ),
        fenix: true);
    Get.lazyPut(
        () => GetInventoryDocumentsUsecases(
              repository: Get.find(),
            ),
        fenix: true);
    Get.lazyPut(
        () => AddInventoryDocumentsUsecases(
              repository: Get.find(),
            ),
        fenix: true);
    Get.lazyPut(
        () => UpdateInventoryDocumentsUsecases(
              repository: Get.find(),
            ),
        fenix: true);
    Get.lazyPut(
        () => DeleteInventoryDocumentsUsecases(
              repository: Get.find(),
            ),
        fenix: true);

    Get.lazyPut(
        () => DeleteDocumentsUsecases(
              repository: Get.find(),
            ),
        fenix: true);

    Get.lazyPut(
        () => InventoryItemsController(
            addInventoryDocumentsUsecases: Get.find(),
            updateInventoryDocumentsUsecases: Get.find(),
            getInventoryDocumentsUsecases: Get.find(),
            deleteInventoryDocumentsUsecases: Get.find(),
            deleteDocumentsUsecases: Get.find()),
        fenix: true);
  }
}
