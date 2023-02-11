import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventaire_immobilier/shared/themes/ColorsTheme.dart';
// import 'package:inventaire_immobilier/presentation/home/screen/index.dart';

import '../logic/bloc/home_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    required HomeBloc homeBloc,
    Key? key,
  })  : _homeBloc = homeBloc,
        super(key: key);

  final HomeBloc _homeBloc;

  @override
  HomeScreenState createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  HomeScreenState();

  @override
  void initState() {
    super.initState();
    _load();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return BlocBuilder<HomeBloc, HomeState>(
        bloc: widget._homeBloc,
        builder: (
          BuildContext context,
          HomeState currentState,
        ) {
          if (currentState is UnHomeState) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (currentState is ErrorHomeState) {
            return Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Text(currentState.errorMessage ),
                Padding(
                  padding: const EdgeInsets.only(top: 32.0),
                  // child: RaisedButton(
                  //   color: Colors.blue,
                  //   child: Text('reload'),
                  //   onPressed: _load,
                  // ),
                ),
              ],
            ));
          }
          if (currentState is InHomeState) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Hello Home'),
                ],
              ),
            );
          }
          // return Center(
          //     child: CircularProgressIndicator(),
          // );
          return body(size);
        });
  }

  body(Size size) {
    return Container(
        color: ColorTheme.primary,
        width: double.infinity,
        height: (size.height - kToolbarHeight) - 25,
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                children: [
                  Card(
                    child: Container(
                      decoration: BoxDecoration(
                        color: ColorTheme.white,
                        borderRadius: BorderRadius.circular(8),
                        // border: Border.all(
                        //   color: ColorTheme.secondary,
                        //   width: 2,
                        // )
                      ),
                      child: ListTile(
                        leading: widgetLogo(),
                        title: Text('Fullname'),
                        subtitle: Text('Fonction'),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              // buttonSubmit(true),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/scanner');
                    },
                    splashColor: ColorTheme.primary,
                    child: Card(
                      child: Container(
                        padding: EdgeInsets.all(5),
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            color: ColorTheme.darkgreen,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: ColorTheme.secondary,
                              width: 2,
                            )),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.qr_code_scanner_rounded,
                              size: 50,
                              color: ColorTheme.primary,
                            ),
                            Text(
                              "Scanner",
                              style: TextStyle(color: ColorTheme.primary),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: ColorTheme.primary,
                    child: Card(
                      child: Container(
                        padding: EdgeInsets.all(5),
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            color: ColorTheme.darkgreen,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: ColorTheme.secondary,
                              width: 2,
                            )),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.document_scanner,
                              size: 50,
                              color: ColorTheme.primary,
                            ),
                            Text(
                              "Voir Mes Scanner",
                              style: TextStyle(
                                  color: ColorTheme.primary, fontSize: 10),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }

  buttonSubmit(bool disable) {
    return TextButton.icon(
      onPressed: disable
          ? null
          : (() {
              // Navigator.pushNamedAndRemoveUntil(
              //     context, "/home", (route) => false);
            }),
      style: TextButton.styleFrom(
        backgroundColor: ColorTheme.secondary,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(60))),
      ),
      icon: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Icon(
          Icons.qr_code_scanner,
          size: 40,
        ),
      ),
      label: Text(
        'Scanner',
        style: TextStyle(fontSize: 25),
      ),
    );
  }

  widgetLogo() {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
          color: ColorTheme.darkgreen,
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
            color: ColorTheme.secondary,
            width: 2,
          )),
    );
  }

  void _load() {
    widget._homeBloc.add(LoadHomeEvent());
  }
}
