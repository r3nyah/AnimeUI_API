import 'dart:convert';

import 'package:anime_ui_api/Src/Service/Data/Model/DataAnimeModel.dart';
import 'package:get/get.dart';
import 'package:anime_ui_api/Src/Service/Data/Provider/AnimeProvider.dart';

class HomeController extends GetxController with StateMixin<DataAnimeModel>{
  final AnimeProvider animeProvider;

  HomeController({
    required this.animeProvider,
});

  @override
  void onInit(){
    getAnimeTrending();
    super.onInit();
  }

  void getAnimeTrending() async{
    try{
      final value = await animeProvider.getAnimeTrending();
      Map<String,dynamic> res = jsonDecode(value.body);
      DataAnimeModel data = DataAnimeModel.fromJson(res);
      change(data,status: RxStatus.success());
    }catch(e){
      change(null,status: RxStatus.error(e.toString()));
    }
  }
}