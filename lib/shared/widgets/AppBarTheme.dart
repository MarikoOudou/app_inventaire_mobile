import 'package:art_sweetalert/art_sweetalert.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:inventaire_immobilier/shared/constants/storage_keys.dart';
import 'package:inventaire_immobilier/shared/storage.dart';

import '../themes/ColorsTheme.dart';
import '../themes/TextTheme.dart';

class AppBarThemeCustom {
  // ignore: prefer_function_declarations_over_variables
  static AppBar appBar(String title, BuildContext context,
      {bool? backPage,
      String? title2,
      Color? backgroundColor,
      Color? statusBarColor}) {
    return AppBar(
        backgroundColor: backgroundColor ?? ColorTheme.grey,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
          // Status bar color
          statusBarColor: statusBarColor ?? ColorTheme.grey,

          // Status bar brightness (optional)
          statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
          statusBarBrightness: Brightness.light, // For iOS (dark icons)
        ),
        title: title2 == null
            ? Text(
                title,
                textAlign: TextAlign.center,
                style: textTheme.headline3,
              )
            : Column(
                children: [
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: textTheme.headline3,
                  ),
                  Text(
                    title2!,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: ColorTheme.black,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
        centerTitle: true,
        actions: [
          IconButton(
            color: ColorTheme.black,
            icon: const Icon(Icons.exit_to_app),
            tooltip: 'Déconnexion',
            onPressed: () {
              // handle the press
              ArtSweetAlert.show(
                  context: context,
                  artDialogArgs: ArtDialogArgs(
                      type: ArtSweetAlertType.info,
                      onConfirm: () {
                        print('object');
                        Storage.remove(StorageKeys.id);
                        Navigator.pushNamedAndRemoveUntil(
                            context, "/", (route) => false);
                      },
                      showCancelBtn: true,
                      cancelButtonText: 'Non',
                      confirmButtonText: 'Oui',
                      title: "Déconnexion",
                      text: "Souhaitez-vous déconnecter ?"));
            },
          ),
        ],
        leading: backPage != null && backPage == true
            ? InkWell(
                onTap: (() {
                  Navigator.pop(context);
                }),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: ColorTheme.white,
                ),
              )
            : null);
  }
}
