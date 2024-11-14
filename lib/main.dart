// Openapi Generator last run: : 2024-11-14T12:00:00.545548
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:inventaire_immobilier/routers/app_router.dart';
import 'package:inventaire_immobilier/shared/themes/AppTheme.dart';
import 'package:inventaire_immobilier/shared/themes/ColorsTheme.dart';
import 'package:openapi_generator_annotations/openapi_generator_annotations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  WidgetsFlutterBinding.ensureInitialized();

  // print('ready in 3...');
  // await Future.delayed(const Duration(seconds: 1));
  print('ready in 2...');
  await Future.delayed(const Duration(seconds: 1));
  print('ready in 1...');
  await Future.delayed(const Duration(seconds: 1));
  print('go!');
  FlutterNativeSplash.remove();

  // runApp(const MyApp());
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) => runApp(MyApp()));
}

final AppRouter _appRouter = AppRouter();

// @Openapi(
//     additionalProperties: AdditionalProperties(pubName: 'api_inventaire', pubAuthor: 'Mariko'),
//     inputSpec: InputSpec (path: '../openapi.json'),
//     generatorName: Generator.dart,
//     outputDirectory: 'api_inventaire')



@Openapi(
   additionalProperties:
   DioProperties(pubName: 'api_inventaire', pubAuthor: 'Mariko'),
   inputSpec: InputSpec (path: './openapi.json'),
   // typeMappings: {'Pet': 'ExamplePet'},
   generatorName: Generator.dart,
   runSourceGenOnOutput: true,
   outputDirectory: './api_inventaire',
)
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

  void initialization() async {
    // This is where you can initialize the resources needed by your app while
    // the splash screen is displayed.  Remove the following example because
    // delaying the user experience is a bad design practice!
    // ignore_for_file: avoid_print
    print('ready in 3...');
    await Future.delayed(const Duration(seconds: 1));
    print('ready in 2...');
    await Future.delayed(const Duration(seconds: 1));
    print('ready in 1...');
    await Future.delayed(const Duration(seconds: 1));
    print('go!');
    FlutterNativeSplash.remove();
  }
}