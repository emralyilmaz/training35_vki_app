import 'package:flutter/material.dart';
import 'hesap_sayfasi.dart';

void main() => runApp(VKIHesapla());

class VKIHesapla extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color.fromRGBO(77, 59, 59, 1),
        accentColor: Color.fromRGBO(245, 224, 211, 1),
        scaffoldBackgroundColor: Color.fromRGBO(222, 98, 98, 1),
      ),
      home: HesaplamaSayfasi(),
    );
  }
}
