import 'package:get/get.dart';
import 'package:anime_ui_api/Src/Service/Data/Provider/AnimeProvider.dart';

import '../Controllers/SearchController.dart';

class SearchBinding extends Bindings{
  @override
  void dependencies(){
    Get.lazyPut<AnimeProvider>(() {
      return AnimeProvider();
    });

    Get.lazyPut<SearchController>(() {
      return SearchController(animeProvider: Get.find<AnimeProvider>());
    });
  }
}

