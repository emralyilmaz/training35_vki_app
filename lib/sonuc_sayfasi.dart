import 'package:flutter/material.dart';
import 'hesap_card.dart';

class SonucSayfasi extends StatelessWidget {
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
                child: Container(
              child: Text(
                "Sonucunuz:",
                style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
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
                      "Normal",
                      style: TextStyle(
                          fontSize: 25.0,
                          color: Color.fromRGBO(77, 59, 59, 1),
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "15",
                      style: TextStyle(
                          fontSize: 100.0,
                          color: Color.fromRGBO(77, 59, 59, 1)),
                    ),
                    Text(
                      "Yorum",
                      style: TextStyle(
                          fontSize: 20.0, color: Color.fromRGBO(77, 59, 59, 1)),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
