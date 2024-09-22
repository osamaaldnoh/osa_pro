import 'package:get/get.dart';
import 'package:osa_pro/src/core/enums/login_status.dart';
import 'package:osa_pro/src/features/system_docs/domain/entities/system_docs_entities.dart';

import 'package:osa_pro/src/features/system_docs/domain/usecases/system_docs_usecases.dart';

abstract class SystemDocsController extends GetxController {
  getAllSystemDocs();
}

class SystemDocsControllerImp extends SystemDocsController {
  final SystemDocsUseCase _systemDocsUseCase;
  RxList<SystemDocsEntity> systemDocsList = RxList([]);
  RxList<SystemDocsEntity> get _systemDocsList => RxList([...systemDocsList]);
  final authState = RequestStatus.NOTHING.obs;
  RxString message = ''.obs;

  void setRxRequestStatus(RequestStatus value) => authState.value = value;

  SystemDocsControllerImp({required SystemDocsUseCase systemDocsUseCase})
      : _systemDocsUseCase = systemDocsUseCase;
  @override
  void onInit() {
    super.onInit();
    getAllSystemDocs();
  }

  @override
  getAllSystemDocs() async {
    setRxRequestStatus(RequestStatus.LOADING);
    final systemDocsData = await _systemDocsUseCase.call();
    systemDocsData.fold((failuer) {
      setRxRequestStatus(RequestStatus.ERROR);
      message.value = failuer.message;
    }, (data) {
      systemDocsList.value = data;
      setRxRequestStatus(RequestStatus.COMPLLETED);
      print(" systemDocsData :::::::$data");
    });
  }
}
