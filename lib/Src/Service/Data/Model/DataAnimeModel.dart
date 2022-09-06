import 'AnimeModel.dart';

class DataAnimeModel{
  List<AnimeModel> data;

  DataAnimeModel({
    required this.data,
});

  factory DataAnimeModel.fromJson(Map<String, dynamic> json){
    return DataAnimeModel(
      data: List<AnimeModel>.from(
        json['data'].map((e){
          return AnimeModel.fromJson((e));
        })
      )
    );
  }
}