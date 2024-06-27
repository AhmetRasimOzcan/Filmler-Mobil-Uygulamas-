import 'package:flutter/material.dart';
import 'package:tasarim_deneme/secenekler.dart';
import 'package:tasarim_deneme/renkler.dart';
import 'package:tasarim_deneme/ui/views/anasayfa.dart';
import 'package:tasarim_deneme/uygulamahakkinda.dart';
import 'package:tasarim_deneme/yardım.dart';

class Girisekrani extends StatefulWidget {
  const Girisekrani({Key? key}) : super(key: key);

  @override
  State<Girisekrani> createState() => _GirisekraniState();
}

class _GirisekraniState extends State<Girisekrani> {
  bool isActivated = false;

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
      ),
      body: SingleChildScrollView(
        child: Container(
          color: yaziRenk1,
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 80),
              // Hoşgeldiniz yazısının çerçevesini kaldırdık
              Text(
                "Hoşgeldiniz",
                style: TextStyle(
                  fontSize: 36,
                  color: yaziRenk2,
                  fontFamily: "MadimiOne",
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isActivated = !isActivated;
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 24,
                      height: 24,
                      margin: EdgeInsets.only(right: 8),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: isActivated ? Colors.green : Colors.transparent,
                        border: Border.all(color: yaziRenk2),
                      ),
                      child: isActivated
                          ? Icon(Icons.check, color: yaziRenk1)
                          : SizedBox.shrink(),
                    ),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 2), // Kalın siyah çerçeve
                            ),
                            padding: EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Merhaba AR Film Dünyasına Giriş yapabilmenin için",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: yaziRenk2,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  "18 Yaşından büyük ve Ruhsal bir probleminizin olmaması lazım.",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: yaziRenk2,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  "Filmlerimiz genellikle yetişkinler içindir  şartlarımız kabul ediyorsanız tik atarak devam edebilirsiniz.",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: yaziRenk2,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  "Eğer şartları sağlamıyorsanız AR Film Olarak Sorumluluk kabul etmemekteyiz.",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: yaziRenk2,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  "İlginiz için teşekkürler İyi Seyirler",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: yaziRenk2,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: isActivated
                      ? () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Secenekler()),
                    );
                  }
                      : null,
                  child: Text('Giriş', style: TextStyle(color: Colors.black)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: yaziRenk2,
                    padding: EdgeInsets.symmetric(horizontal: 40),
                  ),
                ),
              ),
              SizedBox(height: 40),
              Text(
                "Sizin İçin Burdayız",
                style: TextStyle(
                  fontSize: 16,
                  color: yaziRenk2,
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => uygulama()));
                    },
                    child: Text('Uygulama Hakkında', style: TextStyle(color: yaziRenk2)),
                  ),
                  SizedBox(width: 20),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => yardim()));
                    },
                    child: Text('Yardım', style: TextStyle(color: yaziRenk2)),
                  ),
                ],
              ),
              SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
