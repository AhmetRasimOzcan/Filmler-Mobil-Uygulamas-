import 'package:flutter/material.dart';
import 'package:tasarim_deneme/renkler.dart';

class Hakkimizda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "AR Film",
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Pacifico",
            fontSize: 22,
          ),
        ),
        backgroundColor: anaRenk,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      backgroundColor: yaziRenk1,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          // Logo resmi
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Image.asset(
              'resimler/Logomuz.png',
              width: 150, // İsteğinize göre boyutları ayarlayabilirsiniz
              height: 150,
              alignment: Alignment.center,
            ),
          ),
          // AR Film hakkında bilgi metni
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: yaziRenk2, // Siyah arka plan rengi
              borderRadius: BorderRadius.circular(10.0), // Kenar yuvarlaklığı
            ),
            child: Text(
              'AR Film, sinema endüstrisinde lider konumda olan bir film prodüksiyon şirketidir. Yaratıcı ve deneyimli ekibiyle, çeşitli türlerde ve kapsamlı projelerde üstün kalitede eserler sunmaktadır. Sinema dünyasında kalıcı bir iz bırakmayı amaçlayan AR Film, sanatsal ve ticari başarıyı bir arada hedeflemektedir. Aynı zamanda, izleyicilere ilham vermek ve toplumsal duyarlılık oluşturmak için güçlü ve etkileyici hikayeler anlatmayı vizyon edinmektedir.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}