import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:anime_ui_api/Src/Service/Route/AppPage.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ANIme',
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}
