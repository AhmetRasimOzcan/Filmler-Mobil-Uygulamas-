import 'package:flutter/material.dart';
import 'package:tasarim_deneme/renkler.dart'; // Renkler dosyanızın yolunu düzenleyin

class yardim extends StatelessWidget {
  const yardim({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Yardım ve Destek",
          style: TextStyle(
            color: yaziRenk1,
            fontFamily: "Pacifico",
            fontSize: 22,
          ),
        ),
        backgroundColor: anaRenk,
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
      ),
      body: Container(
        color: yaziRenk1,
        padding: EdgeInsets.all(20),
        child: Center(
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 2), // Siyah çerçeve, biraz kalın
            ),
            child: Text.rich(
              TextSpan(
                text: 'Uygulama Hakkında bir sorun yaşıyorsanız ve Yardıma ihityacınız varsa ', // default text style
                style: TextStyle(fontStyle: FontStyle.italic, fontSize: 20),
                children: <TextSpan>[
                  TextSpan(
                    text: 'ahmetrasimozcan07@gmail.com', // Mail adresi
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  TextSpan(
                    text: ' adresinden bize ulaşın', // Bize ulaşın metni
                    style: TextStyle(fontStyle: FontStyle.italic, fontSize: 20),
                  ),
                ],
              ),
              textAlign: TextAlign.center, // Metni ortala
            ),
          ),
        ),
      ),
    );
  }
}
