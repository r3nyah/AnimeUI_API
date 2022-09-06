import 'package:get/get.dart';

class BaseProvider extends GetConnect {
  @override
  void onInit(){
    httpClient.baseUrl = 'https://kitsu.io/api/edge';

    httpClient.addResponseModifier((request, response) {
      return response;
    });
  }
}