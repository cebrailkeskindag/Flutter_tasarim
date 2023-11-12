import 'package:flutter/material.dart';
import 'package:flutter_tasarim/anasayfa.dart';
import 'package:flutter_tasarim/renkler.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Product Details",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.favorite,
            color: Color(0xFDff6000),
          ),
        ),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Image.network(
            'https://picsum.photos/250?image=6',
            width: 250,
            height: 200,
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Text(
                "Macbook Air",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            const Spacer(),
            Text(
              "\$1599",
              style: TextStyle(
                  fontSize: 25, color: odev3, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Divider(
            color: const Color.fromARGB(221, 133, 114, 114),
          ),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 290),
              child: Text(
                "Descriptions",
                style: TextStyle(fontSize: 20, color: odevBaslik3),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                "Güçlü Performans – Profesyonel kalitede video kurgulamadan aksiyonla dolu oyunlara kadar her şeyin üstesinden kolayca gelin. 8 çekirdekli CPU’ya sahip Apple M1 çip, önceki nesle göre 3,5 kata kadar daha hızlı performans sunarken çok daha az güç harcıyor.",
                style: TextStyle(color: odevAciklama3),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 307),
              child: Text(
                "Select Size",
                style: TextStyle(fontSize: 20, color: odevBaslik3),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  "13.3",
                  style: TextStyle(color: yaziRenk1),
                ),
                style: TextButton.styleFrom(
                    backgroundColor: odev3,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)))),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "13.6",
                  style: TextStyle(color: yaziRenk1),
                ),
                style: TextButton.styleFrom(
                    backgroundColor: odev3,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)))),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "14.2",
                  style: TextStyle(color: yaziRenk1),
                ),
                style: TextButton.styleFrom(
                    backgroundColor: odev3,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)))),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "15.3",
                  style: TextStyle(color: yaziRenk1),
                ),
                style: TextButton.styleFrom(
                    backgroundColor: odev3,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)))),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "16.2",
                  style: TextStyle(color: yaziRenk1),
                ),
                style: TextButton.styleFrom(
                    backgroundColor: odev3,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)))),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: ElevatedButton(
            onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const Anasayfa())),
            child: Text(
              "Add to Chart",
              style: TextStyle(color: yaziRenk1),
            ),
            style: TextButton.styleFrom(
                backgroundColor: odev3,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                textStyle: TextStyle(fontSize: 25, letterSpacing: 2)),
          ),
        ),
      ]),
    );
  }
}
