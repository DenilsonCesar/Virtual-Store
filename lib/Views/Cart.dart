import 'package:lojaVirtual/Components/Logo.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 30),
            Logo(),
            Padding(padding: EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Carrinho',
                    style: TextStyle(
                      fontSize: 30,
                      decoration: TextDecoration.none,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto'
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 150,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Color(0xffF9796C),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 3,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.only(
                        topLeft: const Radius.circular(40.0),
                        bottomLeft: const Radius.circular(40.0),
                      )
                    ),
                    child: Text('R\$ 0,00',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w600
                      ),
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
                Text('“Sem itens no carrinho”',
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

