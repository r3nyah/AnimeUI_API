import 'package:anime_ui_api/Src/Screens/Screens/Home/Controllers/HomeController.dart';
import 'package:anime_ui_api/Src/Screens/Screens/Home/Views/Widget/ItemGridView.dart';
import 'package:anime_ui_api/Src/Service/Route/AppPage.dart';
import 'package:anime_ui_api/Src/Screens/Widgets/Loading.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class HomeView extends GetView<HomeController>{
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ANIme",
          style: TextStyle(
            fontSize: 24,
            fontFamily: 'Imposible Fill',
          ),
        ),
        actions: [
          IconButton(
              onPressed: () => Get.toNamed(Routes.SEARCH),
              icon: const Icon(CupertinoIcons.search))
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Center(
              child: controller.obx(
                  (data){
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Trending',
                          style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'Imposible Fill',
                          ),
                        ),
                        GridView.builder(
                          shrinkWrap: true,
                          physics: const ScrollPhysics(),
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 3,
                            childAspectRatio: 1/2,
                          ),
                          itemCount: data!.data.length,
                          itemBuilder: (context,i){
                            return ItemGridWidget(animeModel: data.data[i]);
                          },
                        )
                      ],
                    );
                  },
                onLoading: const Loading(),
                onError: (error) {
                    return Text(
                      'Error : $error'
                    );
                }
              ),
            ),
          ),
        ),
      ),
    );
  }
}