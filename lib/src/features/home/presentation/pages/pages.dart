import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:osa_pro/src/core/routes/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Login"),
          Center(
              child: OutlinedButton(
                  onPressed: () {
                    Get.toNamed(RoutesName.auth);
                    // Navigator.push(
                    //     context,
                    //     AppRoute.generate(
                    //         RouteSettings(name: RoutesName.auth)));
                  },
                  child: Text("Login"))),
          Center(
              child: OutlinedButton(
                  onPressed: () {
                    Get.toNamed(RoutesName.userInfoPage);
                    // Navigator.push(
                    //     context,
                    //     AppRoute.generate(
                    //         RouteSettings(name: RoutesName.auth)));
                  },
                  child: Text("User Info"))),
          Center(
              child: OutlinedButton(
                  onPressed: () {
                    Get.toNamed(RoutesName.branchInfoPage);
                    // Navigator.push(
                    //     context,
                    //     AppRoute.generate(
                    //         RouteSettings(name: RoutesName.auth)));
                  },
                  child: Text("Branch Info Page"))),
          Center(
              child: OutlinedButton(
                  onPressed: () {
                    Get.toNamed(RoutesName.currenciesPage);
                    // Navigator.push(
                    //     context,
                    //     AppRoute.generate(
                    //         RouteSettings(name: RoutesName.auth)));
                  },
                  child: Text("Currencies Page"))),
          Center(
              child: OutlinedButton(
                  onPressed: () {
                    Get.toNamed(RoutesName.deviceInfo);
                    // Navigator.push(
                    //     context,
                    //     AppRoute.generate(
                    //         RouteSettings(name: RoutesName.auth)));
                  },
                  child: Text("DeviceInfo")))
        ],
      ),
    );
  }
}
