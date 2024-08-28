import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:osa_pro/src/core/enums/login_status.dart';
import 'package:osa_pro/src/core/routes/routes.dart';
import 'package:osa_pro/src/core/widgets/custom_file_image.dart';
import 'package:osa_pro/src/features/branchinfo/presentation/getX/branchinfo_controller.dart';

class BranchInfoPage extends StatelessWidget {
  BranchInfoPage({Key? key}) : super(key: key);

  final BranchinfoController _branchinfoController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Branchinfo Page'),
      ),
      body: Obx(() {
        switch (_branchinfoController.status.value) {
          case RequestStatus.LOADING:
            return Center(
              child: CircularProgressIndicator(),
            );
          case RequestStatus.ERROR:
            return Center(
              child: Text(_branchinfoController.message.value),
            );
          case RequestStatus.COMPLLETED:
            return Center(
              child: Column(
                children: [
                  Text(
                      "Branch Name :${_branchinfoController.branchInfoEntity.value.name}"),
                  Text(
                      "Branch companyId :${_branchinfoController.branchInfoEntity.value.companyId}"),
                  CustomFileImage(
                    image: _branchinfoController.image.value,
                  ),
                  OutlinedButton(
                      onPressed: () {
                        Get.toNamed(RoutesName.companyInfoPage);
                      },
                      child: Text("Go to Company"))
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
