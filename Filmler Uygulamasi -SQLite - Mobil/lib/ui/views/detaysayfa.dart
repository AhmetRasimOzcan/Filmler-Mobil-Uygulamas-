import 'package:flutter/material.dart';
import 'package:tasarim_deneme/data/entity/filmler.dart';
import 'package:tasarim_deneme/renkler.dart';

class DetaySayfa extends StatefulWidget {
  DetaySayfa({super.key, required this.film});
  late Filmler film;


  @override
  State<DetaySayfa> createState() => _DetaySayfaState();
}

class _DetaySayfaState extends State<DetaySayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: yaziRenk2,
      appBar: AppBar(title: Text(widget.film.ad , style: TextStyle(
        color: yaziRenk1,
        fontFamily: "Pacifico",
        fontSize: 22,
      ),),backgroundColor: anaRenk,iconTheme: const IconThemeData(color: Colors.white),),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("resimler/${widget.film.resim}"),
            Text("${widget.film.fiyat} ₺",style: const TextStyle(fontSize: 50,color: Colors.white),),
          ],
        ),
      ),
    );
  }
}
