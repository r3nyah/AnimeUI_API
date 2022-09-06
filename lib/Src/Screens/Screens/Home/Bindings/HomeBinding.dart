import 'package:anime_ui_api/Src/Screens/Screens/Home/Controllers/HomeController.dart';
import 'package:anime_ui_api/Src/Service/Data/Provider/AnimeProvider.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies(){
    Get.lazyPut<AnimeProvider>(() => AnimeProvider());
    Get.lazyPut<HomeController>(() => HomeController(animeProvider: Get.find<AnimeProvider>()));
  }
}