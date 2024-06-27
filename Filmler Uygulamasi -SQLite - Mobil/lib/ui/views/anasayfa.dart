import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasarim_deneme/renkler.dart';
import 'package:tasarim_deneme/ui/cubit/anasayfa_cubit.dart';

import '../../data/entity/filmler.dart';
import 'detaysayfa.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {


  void initState()
  {
    super.initState();
    context.read<AnasayfaCubit>().filmleriYukle();
  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  Text("Filmler", style: TextStyle(
        color: yaziRenk1,
        fontFamily: "Pacifico",
        fontSize: 22,
      ),),backgroundColor: anaRenk,iconTheme: const IconThemeData(color: Colors.white),
      ),
      backgroundColor: yaziRenk1,
      body: BlocBuilder<AnasayfaCubit,List<Filmler>>(

        builder: (context,filmlerListesi){
          if(filmlerListesi.isNotEmpty){

            return GridView.builder(
              itemCount: filmlerListesi!.length,//6
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,childAspectRatio: 1 / 1.8
              ),
              itemBuilder: (context,indeks){//0,1,2,3,4,5
                var film = filmlerListesi[indeks];
                return GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DetaySayfa(film: film)));
                  },
                  child: Card(
                    color: yaziRenk2,
                    child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset("resimler/${film.resim}"),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("${film.fiyat} ₺",style:  TextStyle(fontSize: 24,color: Colors.white),),
                            ElevatedButton(
                              style: TextButton.styleFrom(backgroundColor: yaziRenk3),
                              onPressed: (){
                              print("${film.ad}  satın alındı");
                            }, child: const Text("Hızlı Alış", style: TextStyle(color: Colors.black),),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            );
          }else{
            return const Center();
          }
        },
      ),
    );
  }
}
