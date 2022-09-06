import 'package:anime_ui_api/Src/Service/Data/Model/AnimeModel.dart';
import 'package:anime_ui_api/Src/Service/Route/AppPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemGridWidget extends StatelessWidget {
  final AnimeModel animeModel;
  const ItemGridWidget({
    Key? key,
    required this.animeModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(Routes.DETAIL, arguments: animeModel),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            child: Stack(
              children: [
                Image.network(
                  animeModel?.attributes?.posterImage?.medium as String,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 0.0,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.amber,
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.star_border),
                        Text(animeModel.attributes?.averageRating as String),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              animeModel.attributes?.canonicalTitle as String,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}
