import 'package:get/get.dart';
import 'package:osa_pro/src/core/enums/login_status.dart';
import 'package:osa_pro/src/features/item_barcode/domain/entities/item_barcode_entities.dart';
import 'package:osa_pro/src/features/item_barcode/domain/usecases/item_barcode_usecases.dart';

class ItemBarcodeController extends GetxController {
  final ItemBarcodeUseCase _itemBarcodeUseCase;
  final RxList<ItemBarcodeEntity> _itemBarcodelist =
      RxList<ItemBarcodeEntity>([]);
  RxList<ItemBarcodeEntity> get itemBarcodelist =>
      RxList<ItemBarcodeEntity>([..._itemBarcodelist]);
  final requestStatus = RequestStatus.NOTHING.obs;
  final message = ''.obs;
  void setRequestStatus(RequestStatus value) => requestStatus.value = value;

  ItemBarcodeController({required ItemBarcodeUseCase itemBarcodeUseCase})
      : _itemBarcodeUseCase = itemBarcodeUseCase;

  @override
  void onInit() {
    super.onInit();
    getItemBarcodes();
  }

  void getItemBarcodes() async {
    setRequestStatus(RequestStatus.LOADING);
    final responseData = await _itemBarcodeUseCase.call();
    responseData.fold((failure) {
      message.value = failure.message;
      setRequestStatus(RequestStatus.ERROR);
    }, (itemBarcodes) {
      _itemBarcodelist.value = itemBarcodes;
      print(_itemBarcodelist.value);
      setRequestStatus(RequestStatus.COMPLLETED);
    });
  }

  ItemBarcodeEntity findByBarcode({required String barcode}) {
    return _itemBarcodelist.firstWhere(
      (value) => value.itemBarcode == barcode,
      orElse: () => ItemBarcodeEntity(
        id: 0,
        itemBarcode: '',
        itemId: 0,
      ),
    );
  }

  ItemBarcodeEntity findByItemId({required int itemId}) {
    return _itemBarcodelist.firstWhere(
      (value) => value.itemId == itemId,
      orElse: () => ItemBarcodeEntity(
        id: 0,
        itemBarcode: '',
        itemId: 0,
      ),
    );
  }
}
