import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:inventaire_immobilier/shared/themes/ColorsTheme.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class ScannerQr extends StatefulWidget {
  ScannerQr({Key? key}) : super(key: key);

  @override
  _ScannerQrState createState() => _ScannerQrState();
}

class _ScannerQrState extends State<ScannerQr> {
  Barcode? result;
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    }
    controller!.resumeCamera();
  }

  @override
  Widget build(BuildContext context) {
    return _buildQrView(context);
  }

  Widget _buildQrView(BuildContext context) {
    // For this example we check how width or tall the device is and change the scanArea and overlay accordingly.
    var scanArea = (MediaQuery.of(context).size.width < 400 ||
            MediaQuery.of(context).size.height < 400)
        ? 300.0
        : 400.0;
    // To ensure the Scanner view is properly sizes after rotation
    // we need to listen for Flutter SizeChanged notification and update controller
    return QRView(
      key: qrKey,
      onQRViewCreated: _onQRViewCreated,
      overlay: QrScannerOverlayShape(
          borderColor: ColorTheme.secondary,
          borderRadius: 10,
          borderLength: 30,
          borderWidth: 8,
          cutOutSize: scanArea),
      onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
      });

      print("DATA TO SCAN : " + scanData.code.toString());
      controller.pauseCamera();

      // if () {

      // }

      Navigator.pushNamedAndRemoveUntil(
          context, '/inventaire', (route) => false,
          arguments: scanData.code.toString());
    });
  }

  _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) async {
    log('${DateTime.now().toIso8601String()}_onPermissionSet $p');
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('no Permission')),
      );
    } else {
      if (Platform.isAndroid) {
        await controller!.pauseCamera();
      }
      controller!.resumeCamera();
    }
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
