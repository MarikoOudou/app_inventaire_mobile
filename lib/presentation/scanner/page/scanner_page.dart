import 'package:flutter/material.dart';
import 'package:inventaire_immobilier/presentation/scanner/screen/scanner_screen.dart';
import 'package:inventaire_immobilier/shared/widgets/AppBarTheme.dart';

class ScannerPage extends StatefulWidget {
  static const String routeName = '/scanner';

  @override
  _ScannerPageState createState() => _ScannerPageState();
}

class _ScannerPageState extends State<ScannerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0.0),
        child: AppBarThemeCustom.appBar("Scanner", context,
            backPage: false, backgroundColor: Colors.greenAccent),
      ),
      body: ScannerScreen(),
    );
  }
}
