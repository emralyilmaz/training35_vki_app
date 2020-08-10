import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'hesap_card.dart';
import 'icon_content.dart';

const aktifCardRenk = Color.fromRGBO(245, 224, 211, 1);
const inaktifCardRenk = Color.fromRGBO(255, 184, 140, 1);

enum Cinsiyet { erkek, kadin }

class HesaplamaSayfasi extends StatefulWidget {
  @override
  _HesaplamaSayfasiState createState() => _HesaplamaSayfasiState();
}

class _HesaplamaSayfasiState extends State<HesaplamaSayfasi> {
  Color erkekCardRenk = inaktifCardRenk;
  Color kadinCardRenk = inaktifCardRenk;

  Cinsiyet secilmisCinsiyet;
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
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          secilmisCinsiyet = Cinsiyet.erkek;
                        });
                      },
                      child: HesapCard(
                        renk: secilmisCinsiyet == Cinsiyet.erkek
                            ? aktifCardRenk
                            : inaktifCardRenk,
                        cardChild: IconContent(
                            icon: FontAwesomeIcons.mars, text: "ERKEK"),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          secilmisCinsiyet = Cinsiyet.kadin;
                        });
                      },
                      child: HesapCard(
                        renk: secilmisCinsiyet == Cinsiyet.kadin
                            ? aktifCardRenk
                            : inaktifCardRenk,
                        cardChild: IconContent(
                            icon: FontAwesomeIcons.venus, text: "KADIN"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: HesapCard(
                renk: Color.fromRGBO(255, 184, 140, 1),
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: HesapCard(
                      renk: Color.fromRGBO(255, 184, 140, 1),
                    ),
                  ),
                  Expanded(
                    child: HesapCard(
                      renk: Color.fromRGBO(255, 184, 140, 1),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
