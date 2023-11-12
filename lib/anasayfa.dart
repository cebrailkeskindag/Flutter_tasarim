import 'package:flutter/material.dart';
import 'package:flutter_tasarim/renkler.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;

    var d = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pizza",
          style: TextStyle(
              color: yaziRenk1,
              fontSize: ekranGenisligi / 18,
              fontFamily: "Roboto"),
        ),
        backgroundColor: anaRenk,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: ekranGenisligi / 43),
            child: Text(d!.pizzaBaslik,
                style: TextStyle(
                    fontSize: ekranGenisligi / 11,
                    color: anaRenk,
                    fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: EdgeInsets.only(top: ekranGenisligi / 43),
            child: Image.asset("resimler/pizza.png"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Chip(icerik: d!.peynirYazi),
                Chip(icerik: d!.sucukYazi),
                Chip(icerik: d!.zeytinYazi),
                Chip(icerik: d!.biberYazi),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(ekranGenisligi / 35),
            child: Column(
              children: [
                Text(
                  d!.teslimatSure,
                  style: TextStyle(
                      fontSize: ekranGenisligi / 20,
                      color: yaziRenk2,
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.all(ekranGenisligi / 35),
                  child: Text(
                    d!.teslimatBaslik,
                    style: TextStyle(
                        fontSize: ekranGenisligi / 20,
                        color: anaRenk,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  d!.pizzaAciklama,
                  style: TextStyle(
                    fontSize: ekranGenisligi / 19,
                    color: yaziRenk2,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  d!.fiyat,
                  style: TextStyle(
                      fontSize: ekranGenisligi / 10,
                      color: anaRenk,
                      fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                SizedBox(
                  width: ekranGenisligi / 2,
                  height: ekranYuksekligi / 17,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      d!.butonYazi,
                      style: TextStyle(
                          fontSize: ekranGenisligi / 20, color: yaziRenk1),
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: anaRenk,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Chip extends StatelessWidget {
  String icerik;
  Chip({required this.icerik});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        icerik,
        style: TextStyle(color: yaziRenk1),
      ),
      style: TextButton.styleFrom(backgroundColor: anaRenk),
    );
  }
}

