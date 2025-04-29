// ignore_for_file: lines_longer_than_80_chars

import 'package:eizo_mushi/data/model/anime-detail/anime_detail_model.dart';
import 'package:eizo_mushi/data/model/streaming_info/streaming_info_model.dart';

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

  static StreamingInfoModel getStreamingInfo() {
    return const StreamingInfoModel(
      streamingLink: StreamingLink(
        id: '574667',
        type: 'sub',
        link: Link(
          file:
              'https://ec.netmagcdn.com:2228/hls-playback/11fe694df4653a65e15d6e3579b4a07c74304cbedc237a0ba17be171702b9abb58b171f6520eb40f230e4bdb05a71817a9cf073473f58e045390b97238742b4582254aafd1fe0409af5bf7a834a64758abbe240abbd3a1ba20eadcb923dbf55d83cb483e50dd759172f7f2f66fcbc04da03922fd9db05d032e53e092711671048c52812e66b203e720a6f75bb305a708/master.m3u8',
          type: 'hls',
        ),
        tracks: [
          Track(
            file:
                'https://s.megastatics.com/subtitle/73fd2e74257659a8ef9b9cdd004623a5/eng-2.vtt',
            label: 'English',
            kind: 'captions',
            isDefault: true,
          ),
          Track(
            file:
                'https://s.megastatics.com/thumbnails/76c7d19582984c21fb4c9962b812820a/thumbnails.vtt',
            kind: 'thumbnails',
            isDefault: false,
          ),
        ],
        intro: TimeRange(start: 31, end: 111),
        outro: TimeRange(start: 1376, end: 1447),
        server: 'hd-1',
        iframe: 'https://megacloud.blog/embed-2/e-1/YeMoMfOrEUq6?k=1',
      ),
      servers: [
        Server(
          type: 'sub',
          dataId: '574667',
          serverId: '4',
          serverName: 'HD-1',
        ),
        Server(
          type: 'sub',
          dataId: '410640',
          serverId: '1',
          serverName: 'HD-2',
        ),
        Server(
          type: 'dub',
          dataId: '583679',
          serverId: '4',
          serverName: 'HD-1',
        ),
        Server(type: 'dub', dataId: '4145', serverId: '1', serverName: 'HD-2'),
      ],
    );
  }
}
