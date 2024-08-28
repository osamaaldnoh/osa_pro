import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:osa_pro/src/core/enums/login_status.dart';
import 'package:osa_pro/src/features/companyinfo/presentation/getX/companyinfo_controller.dart';

class CompanyInfoPage extends StatelessWidget {
  final CompanyController _companyController = Get.find();
  CompanyInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Companyinfo Page'),
      ),
      body: Obx(() {
        switch (_companyController.status.value) {
          case RequestStatus.LOADING:
            return Center(
              child: CircularProgressIndicator(),
            );
          case RequestStatus.ERROR:
            return Center(
              child: Text(_companyController.message.value),
            );
          case RequestStatus.COMPLLETED:
            return Center(
              child: Column(
                children: [
                  Text(
                      "Company Name :${_companyController.companyEntity.value.name}"),
                  Text(
                      "Company enName :${_companyController.companyEntity.value.enName}"),
                ],
              ),
            );
          default:
            return Container();
        }
      }),
    );
  }
}
