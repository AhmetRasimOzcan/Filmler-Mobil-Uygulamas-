import 'package:flutter/material.dart';
import 'package:tasarim_deneme/secenekler.dart';
import 'package:tasarim_deneme/girisekrani.dart';
import 'package:tasarim_deneme/renkler.dart';
import 'package:tasarim_deneme/ui/views/anasayfa.dart';
import 'package:tasarim_deneme/uygulamahakkinda.dart';
import 'package:tasarim_deneme/yardım.dart';
import 'package:tasarim_deneme/hakkimizda.dart';

class Secenekler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "AR Film",
          style: TextStyle(
            color: yaziRenk1,
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
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Anasayfa()), // Anasayfa sayfasına yönlendirme yapılıyor
              );
            },
            child: Card(
              child: ListTile(
                title: Text("Filmler"),
                subtitle: Text("Film koleksiyonumuzu keşfedin"),
                leading: Icon(Icons.movie),
                trailing: Icon(Icons.arrow_forward),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Hakkimizda()), // Hakkimizda sayfasına yönlendirme yapılıyor
              );
            },
            child: Card(
              child: ListTile(
                title: Text("Hakkımızda"),
                subtitle: Text("Firmamız hakkında bilgi alın"),
                leading: Icon(Icons.info),
                trailing: Icon(Icons.arrow_forward),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
