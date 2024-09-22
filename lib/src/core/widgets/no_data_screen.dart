import 'package:flutter/material.dart';
import 'package:osa_pro/src/core/constants/dimensions.dart';

class NoDataScreen extends StatelessWidget {
  final String? title;
  final Color? color;
  const NoDataScreen({Key? key, this.title, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(PaddingManager.p20),
      child: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/no_order_found.png",
                // width: 100,
                // height: 100,
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.width * 0.5,
              ),
              Padding(
                padding: const EdgeInsets.all(PaddingManager.p14),
                child: Text(
                  title!,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: color ?? Theme.of(context).hintColor),
                  textAlign: TextAlign.center,
                ),
              ),
            ]),
      ),
    );
  }
}
