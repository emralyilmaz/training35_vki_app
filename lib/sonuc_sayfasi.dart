import 'package:flutter/material.dart';
import 'hesap_card.dart';
import 'hesap_buton.dart';

class SonucSayfasi extends StatelessWidget {
  SonucSayfasi({this.sonuc, this.sonucText, this.sonucYorum});
  final String sonuc;
  final String sonucText;
  final String sonucYorum;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("VKI Hesaplama Sonuçları"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Center(
            child: Expanded(
                child: Center(
              child: Container(
                child: Text(
                  "Sonucunuz:",
                  style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(245, 224, 211, 1)),
                ),
              ),
            )),
          ),
          Expanded(
              flex: 5,
              child: HesapCard(
                renk: Color.fromRGBO(255, 184, 140, 1),
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      sonucText,
                      style: TextStyle(
                          fontSize: 25.0,
                          color: Color.fromRGBO(77, 59, 59, 1),
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      sonuc,
                      style: TextStyle(
                          fontSize: 100.0,
                          color: Color.fromRGBO(77, 59, 59, 1)),
                    ),
                    Text(
                      sonucYorum,
                      style: TextStyle(
                          fontSize: 20.0, color: Color.fromRGBO(77, 59, 59, 1)),
                    ),
                  ],
                ),
              )),
          HesapButon(
              onTab: () {
                Navigator.pop(context);
              },
              baslik: "Yeniden Hesapla")
        ],
      ),
    );
  }
}
