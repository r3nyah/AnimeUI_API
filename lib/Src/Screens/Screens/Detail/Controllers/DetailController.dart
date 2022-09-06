import 'package:get/get.dart';
import 'package:anime_ui_api/Src/Service/Data/Model/AnimeModel.dart';

class DetailController extends GetxController with StateMixin<AnimeModel>{
  @override
  void onInit(){
    super.onInit();
  }

  detailAnimeData()async{
    await Future.delayed(const Duration(seconds: 1));
    try{
      AnimeModel data = Get.arguments;
      change(data,status: RxStatus.success());
    }catch(e){
      change(null,status: RxStatus.error(e.toString()));
    }
  }
}