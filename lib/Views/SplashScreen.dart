import 'package:lojaVirtual/Views/Home.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
    children: <Widget>[
      SplashScreen(
        seconds: 3,
        backgroundColor: Colors.white,
        navigateAfterSeconds: Home(),
        loaderColor: Colors.transparent,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Loja Virtual',
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.w600,
              decoration: TextDecoration.none,
              color: Color(0xffF9796C),
              fontFamily: 'Roboto'
            ),
          ),
          Text('Melhor preço é aqui!',
            style: TextStyle(
              fontSize: 16,
              decoration: TextDecoration.none,
              color: Color(0xff333333),
              fontFamily: 'Roboto',
              fontWeight: FontWeight.normal
            ),
          ),
        ],
      ),
    ],
  );
  }
}