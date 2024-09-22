import 'package:get/get.dart';
import 'package:osa_pro/src/core/enums/login_status.dart';
import 'package:osa_pro/src/features/accounts/domain/entities/accounts_entities.dart';
import 'package:osa_pro/src/features/accounts/domain/usecases/accounts_usecases.dart';

class AccountsController extends GetxController {
  final AccountsUseCase _accountsUseCase;
  final RxList<AccountsEntity> _accountsList = RxList<AccountsEntity>();
  RxList<AccountsEntity> get accountsList =>
      RxList<AccountsEntity>([..._accountsList]);
  final requestStatus = RequestStatus.NOTHING.obs;
  final message = ''.obs;
  void setRequestStatus(RequestStatus value) => requestStatus.value = value;

  AccountsController({required AccountsUseCase accountsUseCase})
      : _accountsUseCase = accountsUseCase;

  @override
  void onInit() {
    super.onInit();
    getAccounts();
  }

  void getAccounts() async {
    setRequestStatus(RequestStatus.LOADING);
    final responseData = await _accountsUseCase.call();
    responseData.fold((failure) {
      message.value = failure.message;
      setRequestStatus(RequestStatus.ERROR);
    }, (data) {
      _accountsList.value = data;
      setRequestStatus(RequestStatus.COMPLLETED);
    });
  }
}
