import 'package:lojaVirtual/Components/Logo.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:package_info/package_info.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool isSwitched = true;
  String version = '';

  _vesion(){
    PackageInfo.fromPlatform().then((PackageInfo packageInfo) {
      setState(() {
        version = packageInfo.version;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _vesion();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                    Text(
                      'Ajustes',
                      style: TextStyle(
                          fontSize: 30,
                          decoration: TextDecoration.none,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Roboto'),
                    ),
                    PopupMenuButton<int>(
                      itemBuilder: (context) => [
                        PopupMenuItem(
                          value: 1,
                          child: Text("Editar"),
                        ),
                        PopupMenuItem(
                          value: 2,
                          child: Text("Deslogar"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(10, 20, 10, 30),
                  child: Row(
                    children: <Widget>[
                      ClipOval(
                          child: Image.asset(
                        'assets/placeholder.png',
                        width: 60,
                        height: 60,
                      )),
                      Padding(
                        padding: EdgeInsets.fromLTRB(15, 20, 10, 20),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Denilson Cesar Felix de Oliveira',
                                style: TextStyle(
                                    fontSize: 16,
                                    decoration: TextDecoration.none,
                                    color: Color(0xff4D4D4D),
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Roboto'),
                              ),
                              Text(
                                'denilson456987@gmail.com',
                                style: TextStyle(
                                    fontSize: 16,
                                    decoration: TextDecoration.none,
                                    color: Color(0xffA6A6A6),
                                    fontWeight: FontWeight.normal,
                                    fontFamily: 'Roboto'),
                              ),
                            ]),
                      ),
                    ],
                  )),
              Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Dados para entrega',
                    style: TextStyle(
                        fontSize: 20,
                        decoration: TextDecoration.none,
                        color: Color(0xff333333),
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Roboto'),
                  )),
              const SizedBox(height: 16),
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Endereço',
                      style: TextStyle(
                        fontSize: 16,
                        decoration: TextDecoration.none,
                        color: Color(0xff333333),
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Roboto',
                      ),
                    ),
                    Text(
                      'Rua sem saida 3000 Casa',
                      style: TextStyle(
                        fontSize: 16,
                        decoration: TextDecoration.none,
                        color: Color(0xffF9796C),
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Roboto',
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Bairro',
                              style: TextStyle(
                                fontSize: 16,
                                decoration: TextDecoration.none,
                                color: Color(0xff333333),
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Roboto',
                              ),
                            ),
                            Text(
                              'Centro da cidade',
                              style: TextStyle(
                                fontSize: 16,
                                decoration: TextDecoration.none,
                                color: Color(0xffF9796C),
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Roboto',
                              ),
                            ),
                          ],
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Cep',
                                style: TextStyle(
                                  fontSize: 16,
                                  decoration: TextDecoration.none,
                                  color: Color(0xff333333),
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Roboto',
                                ),
                              ),
                              Text(
                                '00000-000',
                                style: TextStyle(
                                  fontSize: 16,
                                  decoration: TextDecoration.none,
                                  color: Color(0xffF9796C),
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Roboto',
                                ),
                              ),
                            ]),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Cidade/Uf',
                      style: TextStyle(
                        fontSize: 16,
                        decoration: TextDecoration.none,
                        color: Color(0xff333333),
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Roboto',
                      ),
                    ),
                    Text(
                      'Fortaleza - CE',
                      style: TextStyle(
                        fontSize: 16,
                        decoration: TextDecoration.none,
                        color: Color(0xffF9796C),
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Roboto',
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Whatsapp',
                      style: TextStyle(
                        fontSize: 16,
                        decoration: TextDecoration.none,
                        color: Color(0xff333333),
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Roboto',
                      ),
                    ),
                    Text(
                      '(85) 98000-0000',
                      style: TextStyle(
                        fontSize: 16,
                        decoration: TextDecoration.none,
                        color: Color(0xffF9796C),
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Roboto',
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Configurações',
                    style: TextStyle(
                      fontSize: 20,
                      decoration: TextDecoration.none,
                      color: Color(0xff333333),
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Roboto',
                    ),
                  )),
              const SizedBox(height: 16),
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Notificações',
                      style: TextStyle(
                        fontSize: 18,
                        decoration: TextDecoration.none,
                        color: Color(0xff333333),
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Roboto',
                      ),
                    ),
                    Switch(
                      value: isSwitched,
                      onChanged: (value) {
                        setState(() {
                          isSwitched = value;
                          print(isSwitched);
                        });
                      },
                      activeTrackColor: Color(0xffF9887D),
                      activeColor: Color(0xffF9796C),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              InkWell(
                onTap: (){},
                child: Padding(
                  padding: EdgeInsets.only(left: 10, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Fale Conosco',
                        style: TextStyle(
                          fontSize: 18,
                          decoration: TextDecoration.none,
                          color: Color(0xff333333),
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Roboto',
                        ),
                      ),
                      Icon(FeatherIcons.chevronRight)
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 25),
              Padding(
                padding: EdgeInsets.only(left: 10, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Versão do app',
                      style: TextStyle(
                        fontSize: 18,
                        decoration: TextDecoration.none,
                        color: Color(0xff333333),
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Roboto',
                      ),
                    ),
                    Text(version)
                  ],
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
