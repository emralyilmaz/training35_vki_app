import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'hesap_card.dart';
import 'icon_content.dart';

class HesaplamaSayfasi extends StatefulWidget {
  @override
  _HesaplamaSayfasiState createState() => _HesaplamaSayfasiState();
}

class _HesaplamaSayfasiState extends State<HesaplamaSayfasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("VKI Hesapla")),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: HesapCard(
                      renk: Color.fromRGBO(255, 208, 179, 1),
                      cardChild: IconContent(
                          icon: FontAwesomeIcons.mars, text: "ERKEK"),
                    ),
                  ),
                  Expanded(
                    child: HesapCard(
                      renk: Color.fromRGBO(255, 208, 179, 1),
                      cardChild: IconContent(
                          icon: FontAwesomeIcons.venus, text: "KADIN"),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: HesapCard(
                renk: Color.fromRGBO(255, 208, 179, 1),
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: HesapCard(
                      renk: Color.fromRGBO(255, 208, 179, 1),
                    ),
                  ),
                  Expanded(
                    child: HesapCard(
                      renk: Color.fromRGBO(255, 208, 179, 1),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
