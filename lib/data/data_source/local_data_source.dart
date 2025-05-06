import 'package:eizo_mushi/data/hive/objects/favorite_anime.dart';
import 'package:eizo_mushi/data/model/home/home_model.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hive_ce/hive.dart';

class LocalDataSource {
  final String _favorite = 'favorite';
  final String watched = 'watched';
  late final Box<FavoriteAnime> favoriteBox;
  late final Box<String> watchedBox;
  Future<void> init() async {
    favoriteBox = await Hive.openBox<FavoriteAnime>(_favorite);
    watchedBox = await Hive.openBox<String>(watched);
  }

  Future<void> saveAnime(AnimeInfoHomeModel anime) {
    return favoriteBox.put(anime.id, FavoriteAnime.fromModel(anime));
  }

  Future<void> removeAnime(String id) {
    return favoriteBox.delete(id);
  }

  Map<dynamic, AnimeInfoHomeModel> getAllFavoriteAnime() {
    return favoriteBox.toMap().mapValue(
          (value) => AnimeInfoHomeModel(
            id: value.id,
            dataId: value.dataId,
            title: value.title,
            japaneseTitle: value.japaneseTitle,
            poster: value.poster,
            description: value.description,
          ),
        );
  }

  Future<void> saveWatched(String id) {
    return watchedBox.put(id, id);
  }

  Future<void> removeWatched(String id) {
    return watchedBox.delete(id);
  }

  Map<dynamic, AnimeInfoHomeModel> getAllWatched() {
    return favoriteBox.toMap().mapValue(
          (value) => AnimeInfoHomeModel(
            id: value.id,
            dataId: value.dataId,
            title: value.title,
            japaneseTitle: value.japaneseTitle,
            poster: value.poster,
            description: value.description,
          ),
        );
  }
}
