import 'package:get/get_connect/http/src/response/response.dart';
import 'package:anime_ui_api/Src/Service/Data/BaseProvider.dart';

abstract class IAnimeProvider {
  Future<Response> getAnimeTrending();
  Future<Response> getAnimeSearching(String q);
}

class AnimeProvider extends BaseProvider implements IAnimeProvider {
  @override
  Future<Response> getAnimeTrending(){
    return get('/trending/anime');
  }

  @override
  Future<Response> getAnimeSearching(String q){
    return get('/anime?filter[text]=$q');
  }
}