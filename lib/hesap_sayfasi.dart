import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(FontAwesomeIcons.mars, size: 80.0),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "ERKEK",
                            style: TextStyle(
                                color: Color.fromRGBO(77, 59, 59, 1),
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
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

class HesapCard extends StatelessWidget {
  HesapCard(
      {@required this.renk,
      this.cardChild}); // @required demekle renki zorunlu olarak sormasını sağlamak
  final Color renk;

  final Widget cardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: renk,
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: EdgeInsets.all(15),
      child: cardChild,
    );
  }
}
