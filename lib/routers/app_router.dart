import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventaire_immobilier/presentation/auth/login/logic/bloc/login_bloc.dart';
import 'package:inventaire_immobilier/presentation/auth/login/page/login_page.dart';
import 'package:inventaire_immobilier/presentation/home/logic/bloc/home_bloc.dart';
import 'package:inventaire_immobilier/presentation/home/page/home_page.dart';
import 'package:inventaire_immobilier/presentation/inventaire/logic/bloc/inventaire_bloc.dart';
import 'package:inventaire_immobilier/presentation/inventaire/page/inventaire_page.dart';
import 'package:inventaire_immobilier/presentation/scanner/page/scanner_page.dart';
import 'package:inventaire_immobilier/shared/constants/storage_keys.dart';
import 'package:inventaire_immobilier/shared/storage.dart';

class AppRouter {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (_) => FutureBuilder(
                future: Storage.get(StorageKeys.id),
                builder: (context, snapshot) {
                  print(snapshot.data);
                  print(snapshot);

                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }

                  if (snapshot.data != null) {
                    return BlocProvider(
                      create: (__) => HomeBloc(),
                      child: HomePage(),
                    );
                  }

                  return BlocProvider(
                    create: (__) => LoginBloc(),
                    child: LoginPage(),
                  );
                }));
      // return MaterialPageRoute(builder: (BuildContext context) {
      //   return LoginPage();
      // });

      case '/home':
        return MaterialPageRoute(builder: (BuildContext context) {
          return HomePage();
        });

      case '/scanner':
        return MaterialPageRoute(builder: (BuildContext context) {
          return ScannerPage();
        });

      case '/inventaire':
        return MaterialPageRoute(builder: (BuildContext context) {
          return BlocProvider(
              create: (__) => InventaireBloc(),
              child: InventairePage(
                dataToScan: settings.arguments.toString(),
              ));
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
