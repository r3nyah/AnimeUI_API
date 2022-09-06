import 'package:anime_ui_api/Src/Screens/Screens/Detail/Controllers/DetailController.dart';
import 'package:get/get.dart';

class DetailBinding extends Bindings{
  @override
  void dependencies(){
    Get.lazyPut<DetailController>(() => DetailController());
  }
}