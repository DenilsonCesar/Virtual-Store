import 'package:lojaVirtual/Components/Logo.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/material.dart';

class Favorite extends StatefulWidget {
  @override
  _FavoriteState createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 30),
            Logo(),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Favoritos',
                    style: TextStyle(
                      fontSize: 30,
                      decoration: TextDecoration.none,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto'
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 64),
            Column(
              children: <Widget>[
                Image.asset(
                  'assets/vazio.png',
                  width: MediaQuery.of(context).size.width,
                  height: 250,
                ),
                const SizedBox(height: 32),
                Text('“Sem itens favoritado”',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}