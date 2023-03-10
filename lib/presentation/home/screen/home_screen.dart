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
          return body(size);
        });
  }

  body(Size size) {
    return Container(
        color: ColorTheme.grey,
        width: double.infinity,
        height: (size.height) - 25,
        padding: EdgeInsets.all(15),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      //set border radius more than 50% of height and width to make circle
                    ),
                    child: Container(
                      padding: EdgeInsets.all(25),
                      child: Column(
                        children: [
                          const Image(
                              width: 200,
                              height: 200,
                              image: AssetImage('assets/images/qr1.jpg')),
                          SizedBox(
                            height: 20,
                          ),
                          Text('Aligner le QR CODE dans le cadre pour scanner'),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  buttonScanner(),
                ],
              ),
            ],
          ),
        ));
  }

  Widget buttonScanner() {
    return TextButton.icon(
        onPressed: () {
          Navigator.pushNamed(context, '/scanner');
          // Navigator.pushNamed(context, '/inventaire', arguments: "INV0018");
        },
        style: TextButton.styleFrom(
          //<-- SEE HERE
          side: BorderSide(width: 1.5, color: ColorTheme.secondary),
        ),
        icon: Icon(
          Icons.qr_code_scanner_rounded,
          size: 25,
          color: ColorTheme.secondary,
        ),
        label: Text(
          "Scanner le Code QR",
          style: TextStyle(color: ColorTheme.secondary),
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
