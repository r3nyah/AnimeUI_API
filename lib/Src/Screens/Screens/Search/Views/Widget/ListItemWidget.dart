import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:anime_ui_api/Src/Service/Data/Model/AnimeModel.dart';
import 'package:anime_ui_api/Src/Service/Route/AppPage.dart';

class ListItemWidget extends StatelessWidget {
  final List<AnimeModel> animeData;
  const ListItemWidget({
    Key? key,
    required this.animeData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      child: ListView.separated(
        separatorBuilder: (context,index){
          return Divider(
            color: Theme.of(context).secondaryHeaderColor,
          );
        },
        itemCount: animeData.length,
        itemBuilder: (context, i){
          return GestureDetector(
            onTap: ((){
              Get.toNamed(Routes.DETAIL,arguments: animeData[i]);
            }),
            child: ListTile(
              leading: Image.network(
                animeData[i].attributes?.posterImage?.medium as String),
              title: Text(
              animeData[i].attributes?.canonicalTitle as String,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: Row(
                children: [
                  const Icon(
                    Icons.star_border,
                  ),
                  Text(
                    animeData[i].attributes?.averageRating?? "No Rating",
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
