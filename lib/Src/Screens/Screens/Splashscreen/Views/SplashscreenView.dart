import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Controllers/SplashscreenController.dart';

class SplashscreenView extends GetView<SplashscreenController>{
  const SplashscreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Welcome to ',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Text(
                'ANIme',
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Imposible Fill',
                ),
              )
            ],
          ),
          const CircularProgressIndicator(),
        ],
      ),
    );
  }
  
}