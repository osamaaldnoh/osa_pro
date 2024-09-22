import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:osa_pro/src/core/constants/colors.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QRPage extends StatefulWidget {
  const QRPage({Key? key}) : super(key: key);

  @override
  State<QRPage> createState() => _QRPageState();
}

class _QRPageState extends State<QRPage> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  Barcode? result;

  QRViewController? controller;

  // @override
  // void reassemble() async {
  //   super.reassemble();
  //   if (Platform.isAndroid) {
  //     await controller!.pauseCamera();
  //   }
  //   await controller!.resumeCamera();
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            buildQrView(context),
            Positioned(bottom: 10, child: buildResult()),
            Positioned(top: 10, child: buildControlButtons()),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller?.dispose();

    super.dispose();
  }

  buildQrView(BuildContext context) => QRView(
        key: qrKey,
        onQRViewCreated: onQRViewCreated,
        overlay: QrScannerOverlayShape(
          borderColor: AppColors.primaryColor,
          borderRadius: 10,
          borderWidth: 10,
          borderLength: 20,
          cutOutSize: MediaQuery.of(context).size.width * 0.8,
        ),
        onPermissionSet: (ctrl, p) => onPermissionSet(context, ctrl, p),
      );

  void onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    // log('${DateTime.now().toIso8601String()}_onPermissionSet $p');
    if (!p) {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("no Permission")));
    }
  }

  Future<void> onQRViewCreated(QRViewController controller) async {
    this.controller = controller;
    controller.scannedDataStream.listen((scanCode) {
      setState(() {
        result = scanCode;
      });
      controller.pauseCamera();
      Future.delayed(
        const Duration(seconds: 1),
        () {},
      );
      result!.code!.isNotEmpty
          ? Get.back(result: result!.code.toString())
          : Get.back(result: '');
    }, onDone: () {
      print("finished scanning");
    });
  }
  // void onQRViewCreated(QRViewController controller) {
  //   this.controller = controller;
  //   setState(() {
  //     controller.scannedDataStream.listen((barcode) {
  //       result = barcode;
  //     });
  //   });
  // }

  buildResult() => Container(
        padding: const EdgeInsets.all(12),
        decoration: const BoxDecoration(
          color: Colors.white38,
        ),
        child: Text(
          result != null ? 'Result : ${result!.code}' : 'Scan a Code!',
          style: const TextStyle(
            color: Colors.white,
          ),
          maxLines: 3,
        ),
      );

  buildControlButtons() => Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white38,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () async {
                await controller?.toggleFlash();
                setState(() {});
              },
              icon: FutureBuilder<bool?>(
                future: controller?.getFlashStatus(),
                builder: (ctx, snap) {
                  if (snap.data != null) {
                    return Icon(
                      snap.data! ? Icons.flash_on : Icons.flash_off,
                    );
                  } else {
                    return Container();
                  }
                },
              ),
            ),
            IconButton(
              onPressed: () async {
                await controller?.flipCamera();
                setState(() {});
              },
              icon: FutureBuilder(
                future: controller?.getCameraInfo(),
                builder: (ctx, snap) {
                  if (snap.data != null) {
                    return const Icon(
                      Icons.flash_off,
                    );
                  } else {
                    return Container();
                  }
                },
              ),
            ),
          ],
        ),
      );
}
//${describeEnum(result!.format)}
