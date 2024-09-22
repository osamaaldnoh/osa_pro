import 'package:get/get.dart';
import 'package:osa_pro/src/core/config/config.dart';
import 'package:osa_pro/src/core/enums/login_status.dart';
import 'package:osa_pro/src/core/services/shared/app_shared_per_set.dart';
import 'package:osa_pro/src/features/currencies/domain/entities/currencies_entities.dart';
import 'package:osa_pro/src/features/currencies/domain/usecases/currencies_usecases.dart';

abstract class CurrenciesController extends GetxController {
  void getAllCurrencies();
}

class CurrenciesControllerImp extends CurrenciesController {
  final CurrenciesUseCase _currenciesUseCase;
  RxList<CurrenciesEntity> currenciesList = RxList([]);
  RxList<CurrenciesEntity> get _currenciesList => RxList([...currenciesList]);
  // final AppSharedPerSet _appSharedPerSet = sl();
  final authState = RequestStatus.NOTHING.obs;
  RxString message = ''.obs;
  void setRxRequestStatus(RequestStatus value) => authState.value = value;

  //
  CurrenciesControllerImp({required CurrenciesUseCase currenciesUseCase})
      : _currenciesUseCase = currenciesUseCase;

  @override
  void onInit() {
    super.onInit();
    getAllCurrencies();
  }

  @override
  getAllCurrencies() async {
    setRxRequestStatus(RequestStatus.LOADING);
    final currenciesData = await _currenciesUseCase.call();
    currenciesData.fold((failure) {
      setRxRequestStatus(RequestStatus.ERROR);
      message.value = failure.message;
      print(message.value);
    }, (data) {
      setRxRequestStatus(RequestStatus.COMPLLETED);
      currenciesList.value = data;
      // print(data);
      // Get.snackbar("Success", "Currencies Added Successfully");
    });
  }
}
