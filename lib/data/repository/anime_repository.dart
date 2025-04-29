import 'package:eizo_mushi/data/api/api_endpoints.dart';
import 'package:eizo_mushi/data/api/api_service.dart';
import 'package:eizo_mushi/data/model/anime-detail/anime_detail_wrapper.dart';
import 'package:eizo_mushi/data/model/episode/episode_model.dart';
import 'package:eizo_mushi/data/model/error/error_model.dart';
import 'package:eizo_mushi/data/model/home/home_model.dart';
import 'package:eizo_mushi/data/model/streaming_info/streaming_info_model.dart';
import 'package:fpdart/fpdart.dart';

class AnimeRepository {
  AnimeRepository(this._apiService);
  final ApiService _apiService;

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
}
