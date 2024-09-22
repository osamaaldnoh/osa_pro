import 'package:get/get.dart';
import 'package:osa_pro/src/core/enums/login_status.dart';
import 'package:osa_pro/src/features/item_alternative/domain/entities/item_alternative_entities.dart';
import 'package:osa_pro/src/features/item_alternative/domain/usecases/item_alternative_usecases.dart';

abstract class ItemAlternativeController extends GetxController {
  void getItemAlternatives();
}

class ItemAlternativeControllerImp extends ItemAlternativeController {
  final ItemAlternativeUseCase _itemAlternativeUseCase;
  RxList<ItemAlternativeEntity> _itemAlternativeList = RxList([]);
  RxList<ItemAlternativeEntity> get itemAlternativeList =>
      RxList([..._itemAlternativeList]);

  RxString message = ''.obs;
  final requestStatus = RequestStatus.NOTHING.obs;
  void setRxRequestStatus(RequestStatus value) => requestStatus.value = value;

  ItemAlternativeControllerImp(
      {required ItemAlternativeUseCase itemAlternativeUseCase})
      : _itemAlternativeUseCase = itemAlternativeUseCase;

  @override
  void onInit() {
    super.onInit();
    getItemAlternatives();
  }

  @override
  void getItemAlternatives() async {
    setRxRequestStatus(RequestStatus.LOADING);
    final responseData = await _itemAlternativeUseCase.call();
    responseData.fold((failure) {
      message.value = failure.message;
      setRxRequestStatus(RequestStatus.ERROR);
      print(failure.message);
    }, (data) {
      _itemAlternativeList.value = data;
      setRxRequestStatus(RequestStatus.COMPLLETED);
      print(data);
      // Get.snackbar("Success", "Item Alternatives Added Successfully");
    });
  }
}
