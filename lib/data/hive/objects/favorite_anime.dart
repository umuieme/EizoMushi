import 'package:eizo_mushi/data/model/home/home_model.dart';
import 'package:hive_ce/hive.dart';

class FavoriteAnime extends HiveObject {
  FavoriteAnime({
    required this.id,
    required this.title,
    required this.poster,
    this.dataId,
    this.japaneseTitle,
    this.description,
  });

  FavoriteAnime.fromModel(AnimeInfoHomeModel model)
      : id = model.id,
        dataId = model.dataId,
        title = model.title,
        japaneseTitle = model.japaneseTitle,
        poster = model.poster,
        description = model.description;

  String id;
  String? dataId;
  String title;
  String? japaneseTitle;
  String poster;
  String? description;
}
