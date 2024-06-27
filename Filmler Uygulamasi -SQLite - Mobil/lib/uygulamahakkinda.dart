import 'package:flutter/material.dart';
import 'package:tasarim_deneme/renkler.dart';

class uygulama extends StatelessWidget {
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Image.asset(
                'resimler/images.png',
                width: 150,
                height: 150,
                alignment: Alignment.center,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: yaziRenk2,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Text(
                'İstanbul Topkapı Üniversitesi\'nden Ahmet Rasim Özcan\'ın geliştirdiği bu uygulamada, film sayfasında film detayına bakıp filmi sepete eklediğinizde, Google Play veya App Store\'dan kayıtlı kartınızdan otomatik olarak ödeme yapılmaktadır ve Mail yada Video Uygulamanıza Filmin Videosu otomatik olarak düşer.Bize destek ve öneri lerinizi  iletmeke için yardım sayfasındakı mail ile iletişime geçebilirsiniz.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
