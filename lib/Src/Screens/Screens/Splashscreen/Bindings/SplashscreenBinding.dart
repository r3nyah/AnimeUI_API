import 'package:get/get.dart';
import '../Controllers/SplashscreenController.dart';

class SplashscreenBinding extends Bindings{
  @override
  void dependencies() {
    Get.put<SplashscreenController>(
      SplashscreenController(),
    );
  }
}