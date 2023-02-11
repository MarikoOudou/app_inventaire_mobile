import 'package:flutter/material.dart';
import 'package:inventaire_immobilier/presentation/scanner/screen/scanner_screen.dart';

class ScannerPage extends StatefulWidget {
  static const String routeName = '/scanner';

  @override
  _ScannerPageState createState() => _ScannerPageState();
}

class _ScannerPageState extends State<ScannerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scanner'),
      ),
      body: ScannerScreen(),
    );
  }
}
