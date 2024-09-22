import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:osa_pro/src/core/routes/routes.dart';

class HomePage2 extends StatelessWidget {
  const HomePage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            pageList.length,
            (index) {
              return OutlinedButton(
                  onPressed: () {
                    Get.toNamed(pageList[index]['page']);
                    // Navigator.push(
                    //     context,
                    //     AppRoute.generate(
                    //         RouteSettings(name: RoutesName.auth)));
                  },
                  child: Text(pageList[index]['name']));
            },
          ),
        ),
      ),
    );
  }
}

List<Map<String, dynamic>> pageList = [
  {
    'name': RoutesName.auth,
    'page': RoutesName.auth,
  },
  {
    'name': RoutesName.userInfoPage,
    'page': RoutesName.userInfoPage,
  },
  {
    'name': RoutesName.branchInfoPage,
    'page': RoutesName.branchInfoPage,
  },
  {
    'name': RoutesName.companyInfoPage,
    'page': RoutesName.companyInfoPage,
  },
  {
    'name': RoutesName.currenciesPage,
    'page': RoutesName.currenciesPage,
  },
  {
    'name': RoutesName.systemDocsPage,
    'page': RoutesName.systemDocsPage,
  },
  {
    'name': RoutesName.salesManMethodsPage,
    'page': RoutesName.salesManMethodsPage,
  },
  {
    'name': RoutesName.userStorePage,
    'page': RoutesName.userStorePage,
  },
  {
    'name': RoutesName.unitsPage,
    'page': RoutesName.unitsPage,
  },
  {
    'name': RoutesName.itemGroupsPage,
    'page': RoutesName.itemGroupsPage,
  },
  {
    'name': RoutesName.itemsPage,
    'page': RoutesName.itemsPage,
  },
  {
    'name': RoutesName.itemUnitsPage,
    'page': RoutesName.itemUnitsPage,
  },
  {
    'name': RoutesName.itemAlternativePage,
    'page': RoutesName.itemAlternativePage,
  },
  {
    'name': RoutesName.itemBarcodePage,
    'page': RoutesName.itemBarcodePage,
  },
  {
    'name': RoutesName.accountsPage,
    'page': RoutesName.accountsPage,
  },
  {
    'name': RoutesName.stoperationPage,
    'page': RoutesName.stoperationPage,
  },
];
