import 'package:get/get.dart';
import 'package:osa_pro/src/core/enums/login_status.dart';
import 'package:osa_pro/src/features/stoperation/domain/entities/stoperation_entities.dart';
import 'package:osa_pro/src/features/stoperation/domain/usecases/stoperation_quantity_usecases.dart';
import 'package:osa_pro/src/features/stoperation/domain/usecases/stoperation_usecases.dart';

class StoperationController extends GetxController {
  final StoperationUseCase _stoperationUseCase;
  final StoperationQuantityUseCase _stoperationQuantityUseCase;
  final RxList<StoperationEntity> _stoperationList =
      RxList<StoperationEntity>();
  RxList<StoperationEntity> get stoperationList =>
      RxList<StoperationEntity>([..._stoperationList]);
  final requestStatus = RequestStatus.NOTHING.obs;
  final totalQuantity = 0.obs;
  final message = ''.obs;
  void setRequestStatus(RequestStatus value) => requestStatus.value = value;

  StoperationController(
      {required StoperationUseCase stoperationUseCase,
      required StoperationQuantityUseCase stoperationQuantityUseCase})
      : _stoperationUseCase = stoperationUseCase,
        _stoperationQuantityUseCase = stoperationQuantityUseCase;

  @override
  void onInit() {
    super.onInit();
    getStoperation();
  }

  void getStoperation() async {
    setRequestStatus(RequestStatus.LOADING);
    final responseData = await _stoperationUseCase.call();
    responseData.fold((failure) {
      message.value = failure.message;
      setRequestStatus(RequestStatus.ERROR);
    }, (data) {
      _stoperationList.value = data;
      setRequestStatus(RequestStatus.COMPLLETED);
      message.value = "secc";
    });
  }

  Future<int> getTotalQuantity(
      {required int itemId, required int unitId, required int storeId}) async {
    totalQuantity.value = 0;
    setRequestStatus(RequestStatus.LOADING);
    final responseData = await _stoperationQuantityUseCase.call(
        itemId: itemId, unitId: unitId, storeId: storeId);
    responseData.fold((failure) {
      message.value = failure.message;
      setRequestStatus(RequestStatus.ERROR);
    }, (data) {
      data.forEach((value) {
        totalQuantity.value += value.quantity;
      });

      print("StoperationController :: ############$data");
      // _stoperationList.value = data;
      setRequestStatus(RequestStatus.COMPLLETED);
      message.value = "secc";
    });

    return totalQuantity.value;
  }

  Rx<StoperationEntity> findByItemIdAndUnitIdAndStoryId(
      {required int itemId, required int unitId, required int storyId}) {
    _stoperationList.forEach((value) {
      if (value.itemId == itemId &&
          value.unitId == unitId &&
          value.storeId == storyId) {
        print("VVVVVVVVVVVVVVVVV::::::::${value.expirDate}");
      } else {}
    });
    return _stoperationList
        .firstWhere(
            (value) =>
                value.itemId == itemId &&
                value.unitId == unitId &&
                value.storeId == storyId,
            orElse: () => stoperationEntity)
        .obs;
  }

  StoperationEntity stoperationEntity = StoperationEntity(
    id: 0,
    operationId: 0,
    operationType: 0,
    operationDate: '',
    operationIn: false,
    storeId: 0,
    itemId: 0,
    unitId: 0,
    quantity: 0,
    averageCost: 0,
    unitCost: 0,
    totalCost: 0,
    unitFactor: 0,
    qtyConvert: 0,
    expirDate: '',
    addBranch: 0,
  );
}
