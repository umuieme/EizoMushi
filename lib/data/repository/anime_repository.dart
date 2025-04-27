import 'package:eizo_mushi/data/api/api_endpoints.dart';
import 'package:eizo_mushi/data/api/api_service.dart';
import 'package:eizo_mushi/data/model/anime-detail/anime_detail_wrapper.dart';
import 'package:eizo_mushi/data/model/error/error_model.dart';
import 'package:eizo_mushi/data/model/home/home_model.dart';
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
}
