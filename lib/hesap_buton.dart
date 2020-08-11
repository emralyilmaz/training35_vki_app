import 'package:flutter/material.dart';

class HesapButon extends StatelessWidget {
  final Function onTab;
  final String baslik;

  HesapButon({@required this.onTab, @required this.baslik});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
        child: Center(
          child: Text(
            baslik,
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(245, 224, 211, 1)),
          ),
        ),
        color: Color.fromRGBO(77, 59, 59, 1),
        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        width: double.infinity,
      ),
    );
  }
}
