import 'package:lojaVirtual/Views/Cart.dart';
import 'package:lojaVirtual/Views/Favorite.dart';
import 'package:lojaVirtual/Views/Home.dart';
import 'package:lojaVirtual/Views/Settings.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/material.dart';

class Router extends StatefulWidget {
  @override
  _RouterState createState() => _RouterState();
}

class _RouterState extends State<Router> {
  int _currentIndex = 0;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: <Widget>[
            Home(),
            Cart(),
            Favorite(),
            Settings(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            title: Text('LOJA'),
            icon: Icon(FeatherIcons.shoppingBag),
            activeColor: Color(0xffF9796C),
            inactiveColor: Color(0xffA6A6A6),
          ),
          BottomNavyBarItem(
            title: Text('CARRINHO'),
            icon: Icon(FeatherIcons.shoppingCart),
            activeColor: Color(0xffF9796C),
            inactiveColor: Color(0xffA6A6A6)
          ),
          BottomNavyBarItem(
            title: Text('FAVORITOS'),
            icon: Icon(FeatherIcons.heart),
            activeColor: Color(0xffF9796C),
            inactiveColor: Color(0xffA6A6A6)
          ),
          BottomNavyBarItem(
            title: Text('AJUSTES'),
            icon: Icon(FeatherIcons.list),
            activeColor: Color(0xffF9796C),
            inactiveColor: Color(0xffA6A6A6)
          ),
        ],
      ),
    );
  }
}