import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inventaire_immobilier/presentation/auth/login/page/login_page.dart';
import 'package:inventaire_immobilier/presentation/home/page/home_page.dart';
import 'package:inventaire_immobilier/presentation/scanner/page/scanner_page.dart';

class AppRouter {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (BuildContext context) {
          return LoginPage();
        });

      case '/home':
        return MaterialPageRoute(builder: (BuildContext context) {
          return HomePage();
        });

      case '/scanner':
        return MaterialPageRoute(builder: (BuildContext context) {
          return ScannerPage();
        });

      // case '/singIn':
      //   return MaterialPageRoute(
      //       builder: (_) => BlocProvider(
      //             create: (__) => SingInCubit(),
      //             child: SingInPage(),
      //           ));

      default:
        return MaterialPageRoute(builder: (BuildContext context) {
          return LoginPage();
        });
    }
  }
}
