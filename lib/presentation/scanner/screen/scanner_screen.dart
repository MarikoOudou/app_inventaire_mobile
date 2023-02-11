import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventaire_immobilier/presentation/scanner/widgets/scanner_qr.dart';

class ScannerScreen extends StatefulWidget {
  const ScannerScreen({
    Key? key,
  }) : super(key: key);

  @override
  ScannerScreenState createState() {
    return ScannerScreenState();
  }
}

class ScannerScreenState extends State<ScannerScreen> {
  ScannerScreenState();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ScannerQr(),
    );
  }
}
