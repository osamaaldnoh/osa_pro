import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:osa_pro/src/features/system_docs/presentation/getX/system_docs_controller.dart';

class SystemDocsPage extends StatelessWidget {
  final SystemDocsController systemDocsControllerImp = Get.find();
  SystemDocsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('System_docs Page'),
      ),
    );
  }
}
