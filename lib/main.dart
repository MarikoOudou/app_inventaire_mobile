import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:inventaire_immobilier/presentation/auth/login/data/services/usersService.dart';
import 'package:inventaire_immobilier/routers/app_router.dart';
import 'package:inventaire_immobilier/shared/constants/environnement.dart';
import 'package:inventaire_immobilier/shared/themes/AppTheme.dart';
import 'package:inventaire_immobilier/shared/themes/ColorsTheme.dart';
import 'package:openapi_generator_annotations/openapi_generator_annotations.dart';
import 'package:openapi_generator/openapi_generator.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // runApp(const MyApp());
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) => runApp(MyApp()));
}

final AppRouter _appRouter = AppRouter();

@Openapi(
    additionalProperties:
        AdditionalProperties(pubName: 'api_inventaire', pubAuthor: 'Mariko'),
    inputSpecFile: '$URL_API/v3/api-docs',
    alwaysRun: true,
    generatorName: Generator.dart,
    outputDirectory: 'api_inventaire')
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        color: ColorTheme.primary,
        // routes: ,
        theme: AppTheme().themeData,
        // home: const MyHomePage(title: 'Flutter Demo Home Page'),
        onGenerateRoute: _appRouter.generateRoute);
  }
}
