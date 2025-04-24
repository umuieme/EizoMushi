// ignore_for_file: lines_longer_than_80_chars

import 'package:eizo_mushi/data/model/anime_detail_model.dart';

class Dummy {
  Dummy._();

  static AnimeDetailModel getAnimeDetail() {
    return const AnimeDetailModel(
      adultContent: false,
      dataId: '100',
      id: 'one-piece-100',
      title: 'One Piece',
      japaneseTitle: 'One Piece',
      poster:
          'https://cdn.noitatnemucod.net/thumbnail/300x400/100/bcd84731a3eda4f4a306250769675065.jpg',
      showType: 'TV',
      animeInfo: AnimeInfoModel(
        overview:
            "Gold Roger was known as the \"Pirate King,\" the strongest and most infamous being to have sailed the Grand Line. The capture and execution of Roger by the World Government brought a change throughout the world. His last words before his death revealed the existence of the greatest treasure in the world, One Piece. It was this revelation that brought about the Grand Age of Pirates, men who dreamed of finding One Piece—which promises an unlimited amount of riches and fame—and quite possibly the pinnacle of glory and the title of the Pirate King.\n\nEnter Monkey Luffy, a 17-year-old boy who defies your standard definition of a pirate. Rather than the popular persona of a wicked, hardened, toothless pirate ransacking villages for fun, Luffy's reason for being a pirate is one of pure wonder: the thought of an exciting adventure that leads him to intriguing people and ultimately, the promised treasure. Following in the footsteps of his childhood hero, Luffy and his crew travel across the Grand Line, experiencing crazy adventures, unveiling dark mysteries and battling strong enemies, all in order to reach the most coveted of all fortunes—One Piece.\n\n[Written by MAL Rewrite]",
        japanese: 'ONE-PIECE',
        synonyms: 'OP',
        aired: 'Oct-20,-1999-to-?',
        premiered: 'Fall-1999',
        duration: '24m',
        status: 'Currently-Airing',
        malScore: '8.62',
        genres: [
          'Action',
          'Adventure',
          'Comedy',
          'Drama',
          'Fantasy',
          'Shounen',
          'Super-Power',
        ],
        studios: 'Toei-Animation',
        producers: [
          'Fuji-TV',
          'TAP',
          'Shueisha',
          'Toei-Animation',
          'Funimation',
          '4Kids-Entertainment',
        ],
        tvInfo: TvInfoModel(
          rating: 'PG-13',
          quality: 'HD',
          sub: '1126',
          dub: '1122',
          showType: 'TV',
          duration: '24m',
        ),
      ),
    );
  }
}
