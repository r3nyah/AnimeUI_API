import 'dart:async';

import 'package:get/get.dart';
import 'package:anime_ui_api/Src/Service/Route/AppPage.dart';


class SplashscreenController extends GetxController {
  @override
  void onInit() {
    startSplashScreen();
    super.onInit();
  }

  startSplashScreen() {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Get.offNamed(Routes.HOME);
    });
  }
}