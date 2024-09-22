import 'package:get/get.dart';
import 'package:osa_pro/src/features/store_inventory_document/data/implements/implements.dart';
import 'package:osa_pro/src/features/store_inventory_document/data/sources/doc_local_data_sources.dart';
import 'package:osa_pro/src/features/store_inventory_document/data/sources/sources.dart';
import 'package:osa_pro/src/features/store_inventory_document/domain/repositories/repositories.dart';
import 'package:osa_pro/src/features/store_inventory_document/domain/usecases/add_doc_usecases.dart';
import 'package:osa_pro/src/features/store_inventory_document/domain/usecases/delete_doc_usecases.dart';
import 'package:osa_pro/src/features/store_inventory_document/domain/usecases/edite_doc_usecases.dart';
import 'package:osa_pro/src/features/store_inventory_document/domain/usecases/get_docs_usecases.dart';
import 'store_inventory_document_controller.dart';

class StoreInventoryDocumentBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StoreInventoryDocumentRemoteDataSource(), fenix: true);
    Get.lazyPut<DocLocalDataSources>(() => DocLocalDataSourcesImp(),
        fenix: true);
    Get.lazyPut<StoreInventoryDocumentRepository>(
        () => StoreInventoryDocumentRepositoryImp(
              docLocalDataSources: Get.find(),
              remoteDataSource: Get.find(),
            ),
        fenix: true);

    Get.lazyPut(() => AddDocUsecases(repository: Get.find()), fenix: true);
    Get.lazyPut(() => EditeDocUsecases(repository: Get.find()), fenix: true);
    Get.lazyPut(() => DeleteDocUsecases(repository: Get.find()), fenix: true);
    Get.lazyPut(() => GetDocsUsecases(repository: Get.find()), fenix: true);
    // Get.lazyPut(() => StoreInventoryDocumentController(), fenix: true);
    Get.lazyPut(
        () => StoreInventoryDocumentController(
              addDocUsecases: Get.find(),
              editeDocUsecases: Get.find(),
              deleteDocUsecases: Get.find(),
              getDocsUsecases: Get.find(),
            ),
        fenix: true);
  }
}
