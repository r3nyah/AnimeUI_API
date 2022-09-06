import 'package:get/get.dart';

import 'package:anime_ui_api/Src/Screens/Screens/Detail/Bindings/DetailBinding.dart';
import 'package:anime_ui_api/Src/Screens/Screens/Detail/Views/DetailView.dart';
import 'package:anime_ui_api/Src/Screens/Screens/Home/Bindings/HomeBinding.dart';
import 'package:anime_ui_api/Src/Screens/Screens/HOme/Views/HomeView.dart';
import 'package:anime_ui_api/Src/Screens/Screens/Search/Bindings/SearchBinding.dart';
import 'package:anime_ui_api/Src/Screens/Screens/Search/Views/SearchView.dart';
import 'package:anime_ui_api/Src/Screens/Screens/Splashscreen/Bindings/SplashscreenBinding.dart';
import 'package:anime_ui_api/Src/Screens/Screens/Splashscreen/Views/SplashscreenView.dart';

part 'AppRoute.dart';

class AppPages {
  AppPages._();

  // ignore: constant_identifier_names
  static const INITIAL = Routes.SPLASHSCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASHSCREEN,
      page: () => const SplashscreenView(),
      binding: SplashscreenBinding(),
    ),
    GetPage(
        name: _Paths.DETAIL,
        page: () => const DetailView(),
        binding: DetailBinding(),
        transition: Transition.circularReveal),
    GetPage(
      name: _Paths.SEARCH,
      page: () => const SearchView(),
      binding: SearchBinding(),
    ),
  ];
}