import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:training35_vki_app/sonuc_sayfasi.dart';
import 'hesap_card.dart';
import 'icon_content.dart';
import 'button_icon.dart';
import 'hesap_buton.dart';
import 'sonuc_sayfasi.dart';

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
  int boy = 180;
  int kilo = 30;
  int yas = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text(
            "VKI Hesapla",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(245, 224, 211, 1)),
          )),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "BOY",
                      style: TextStyle(
                          color: Color.fromRGBO(77, 59, 59, 1),
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(boy.toString(),
                            style: TextStyle(
                                color: Color.fromRGBO(77, 59, 59, 1),
                                fontSize: 50,
                                fontWeight: FontWeight.bold)),
                        Text("cm",
                            style: TextStyle(
                                color: Color.fromRGBO(77, 59, 59, 1),
                                fontSize: 40,
                                fontWeight: FontWeight.normal)),
                      ],
                    ),
                    Slider(
                      value: boy.toDouble(),
                      min: 50,
                      max: 250,
                      activeColor: Color.fromRGBO(77, 59, 59, 1),
                      inactiveColor: Color.fromRGBO(245, 224, 211, 1),
                      onChanged: (double yeniDeger) {
                        setState(() {
                          boy = yeniDeger.round();
                        });
                      },
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: HesapCard(
                      renk: Color.fromRGBO(255, 184, 140, 1),
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "KİLO",
                            style: TextStyle(
                                color: Color.fromRGBO(77, 59, 59, 1),
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(kilo.toString(),
                              style: TextStyle(
                                  color: Color.fromRGBO(77, 59, 59, 1),
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              IconButtonCustom(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    kilo--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              IconButtonCustom(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    kilo++;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: HesapCard(
                      renk: Color.fromRGBO(255, 184, 140, 1),
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "YAŞ",
                            style: TextStyle(
                                color: Color.fromRGBO(77, 59, 59, 1),
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(yas.toString(),
                              style: TextStyle(
                                  color: Color.fromRGBO(77, 59, 59, 1),
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              IconButtonCustom(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    yas--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              IconButtonCustom(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    yas++;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            HesapButon(
                onTab: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SonucSayfasi();
                  }));
                },
                baslik: "Hesapla")
          ],
        ));
  }
}
