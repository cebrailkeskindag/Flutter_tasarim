import 'package:flutter/material.dart';
import 'package:flutter_tasarim/renkler.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Lahmacun",
          style:
              TextStyle(color: yaziRenk1, fontSize: 22, fontFamily: "Roboto"),
        ),
        backgroundColor: anaRenk,
        centerTitle: true,
      ),
      body: const Center(),
    );
  }
}
