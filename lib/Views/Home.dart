import 'package:lojaVirtual/Components/DrawerItens.dart';
import 'package:lojaVirtual/Components/Logo.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 6, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffafafa),
      key: _scaffoldKey,
      drawer: Drawer(
        child: DrawerItens(),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.sort,
                      size: 28,
                    ),
                    onPressed: () => _scaffoldKey.currentState.openDrawer(),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.search,
                      size: 28,
                    ),
                    onPressed: () => _scaffoldKey.currentState.openDrawer(),
                  ),
                ],
              ),
              const SizedBox(
                height: 52,
              ),
              Logo(),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Explorar',
                      style: TextStyle(
                          fontSize: 30,
                          decoration: TextDecoration.none,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Roboto'),
                    ),
                    IconButton(
                      icon: Icon(
                        FeatherIcons.sliders,
                        size: 28,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Container(
                child: TabBar(
                  isScrollable: true,
                  unselectedLabelColor: Color(0xff333333),
                  indicatorColor: Color(0xfffafafa),
                  labelColor: Color(0xffF9796C),
                  tabs: [
                    Tab(text: 'Principais'),
                    Tab(text: 'Vitrine'),
                    Tab(text: 'Cosmeticos'),
                    Tab(text: 'Moda verão'),
                    Tab(text: 'Novidades'),
                    Tab(text: 'Outros'),
                  ],
                  controller: controller,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                //height: MediaQuery.of(context).size.width,
                child:TabBarView(
                  controller: controller,
                  children: [
                    Center( child: Text("Principais")),
                    Center( child: Text("Vitrine")),
                    Center( child: Text("Cosmeticos")),
                    Center( child: Text("Moda verão")),
                    Center( child: Text("Novidades")),
                    Center( child: Text("Outros")),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
