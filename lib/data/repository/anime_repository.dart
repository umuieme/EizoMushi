import 'dart:developer';

import 'package:eizo_mushi/data/api/api_endpoints.dart';
import 'package:eizo_mushi/data/api/api_service.dart';
import 'package:eizo_mushi/data/data_source/local_data_source.dart';
import 'package:eizo_mushi/data/model/anime-detail/anime_detail_wrapper.dart';
import 'package:eizo_mushi/data/model/episode/episode_model.dart';
import 'package:eizo_mushi/data/model/error/error_model.dart';
import 'package:eizo_mushi/data/model/home/home_model.dart';
import 'package:eizo_mushi/data/model/streaming_info/streaming_info_model.dart';
import 'package:fpdart/fpdart.dart';

class AnimeRepository {
  AnimeRepository(this._apiService, this._localDataSource);
  final ApiService _apiService;
  final LocalDataSource _localDataSource;

  Future<Either<ErrorResponse, HomeDataModel>> fetchHomeData() {
    return _apiService.get(
      endpoint: Api.homePage,
      fromJson: HomeDataModel.fromJson,
    );
  }

  Future<Either<ErrorResponse, AnimeDetailResult>> fetchAnimeInfo(String id) {
    return _apiService.get(
      endpoint: Api.animeInfo,
      queryParams: {
        'id': id,
      },
      fromJson: AnimeDetailResult.fromJson,
    );
  }

  Future<Either<ErrorResponse, EpisodeListResponse>> fetchEpisodeList(
    String episodeId,
  ) {
    return _apiService.get(
      endpoint: Api.episodeList,
      fromJson: EpisodeListResponse.fromJson,
      pathParams: {
        'id': episodeId,
      },
    );
  }

  Future<Either<ErrorResponse, StreamingInfoModel>> fetchStreamingInfo({
    required String animeId,
    required String episodeId,
    String server = 'hd-2',
    String type = 'sub',
  }) {
    return _apiService.get(
      endpoint: Api.streamingInfo,
      fromJson: StreamingInfoModel.fromJson,
      queryParams: {
        'id': episodeId,
        'ep': episodeId,
        'server': server,
        'type': type,
      },
    );
  }

  Future<Either<ErrorResponse, Map<dynamic, AnimeInfoHomeModel>>>
      fetchFavorite() async {
    try {
      final result = _localDataSource.getAllFavoriteAnime();
      return right(result);
    } on Exception catch (e) {
      log(e.toString());
      return left(ErrorResponse.withMessage('Could not fetch favorite'));
    }
  }

  Future<Either<ErrorResponse, void>> addTofavorite(
    AnimeInfoHomeModel anime,
  ) async {
    try {
      await _localDataSource.saveAnime(anime);
      return right(null);
    } on Exception catch (e) {
      log(e.toString());
      return left(ErrorResponse.withMessage('Could not add to favorite'));
    }
  }

  Future<Either<ErrorResponse, void>> removeFavorite(String animeId) async {
    try {
      await _localDataSource.removeAnime(animeId);
      return right(null);
    } on Exception catch (e) {
      log(e.toString());
      return left(ErrorResponse.withMessage('Could not add to favorite'));
    }
  }

  Future<Either<ErrorResponse, Map<dynamic, AnimeInfoHomeModel>>>
      fetchWatched() async {
    try {
      final result = _localDataSource.getAllWatched();
      return right(result);
    } on Exception catch (e) {
      log(e.toString());
      return left(ErrorResponse.withMessage('Could not fetch watched'));
    }
  }

  Future<Either<ErrorResponse, void>> addToWatched(String animeId) async {
    try {
      await _localDataSource.saveWatched(animeId);
      return right(null);
    } on Exception catch (e) {
      log(e.toString());
      return left(ErrorResponse.withMessage('Could not add to watched'));
    }
  }

  Future<Either<ErrorResponse, void>> removeWatched(String animeId) async {
    try {
      await _localDataSource.removeWatched(animeId);
      return right(null);
    } on Exception catch (e) {
      log(e.toString());
      return left(ErrorResponse.withMessage('Could not remove watched'));
    }
  }
}
