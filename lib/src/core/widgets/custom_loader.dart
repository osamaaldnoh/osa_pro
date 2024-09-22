import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:osa_pro/src/core/constants/dimensions.dart';
import 'package:osa_pro/src/core/extensions/app_extensions_context.dart';

class CustomLoader extends StatelessWidget {
  final double height;
  final Widget? child;
  final bool isLoading;
  const CustomLoader(
      {Key? key, this.height = 1200, this.child, this.isLoading = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Stack(
        // alignment: Alignment.center,
        children: [
          child ?? Container(),
          isLoading
              ? Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white24,
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                        height: SizeManager.s80,
                        width: SizeManager.s80,
                        decoration: BoxDecoration(
                            color: context.primaryColor,
                            borderRadius:
                                BorderRadius.circular(RadiusManager.r15)),
                        child: const Center(
                          child: SpinKitCircle(
                            color: Colors.white,
                            size: SizeManager.s50,
                          ),
                        )),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
