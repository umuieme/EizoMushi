class Api {
  Api._();

  static const String baseUrl = 'http://192.168.2.178:4444/';
  static const homePage = '/api';
  static const animeInfo = '/api/info';
  static const episodeList = '/api/episodes/:id';
  static const streamingInfo =
      '/api/stream'; //stream?id=one-piece-100?ep=1&server=hd-2&type=sub
}
