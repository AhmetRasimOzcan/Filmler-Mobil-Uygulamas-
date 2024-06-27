import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasarim_deneme/data/entity/filmler.dart';
import 'package:tasarim_deneme/data/repo/filmlerdao_respository.dart';

class AnasayfaCubit extends Cubit<List<Filmler>> {
  AnasayfaCubit():super(<Filmler>[]);
  var frepo = FilmlerDaoRepository();

  Future<void> filmleriYukle() async {
    var liste = await frepo.filmleriYukle();
    emit(liste);
  }


}