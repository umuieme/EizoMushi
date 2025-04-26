import 'package:eizo_mushi/data/api/api_endpoints.dart';
import 'package:eizo_mushi/data/api/api_service.dart';
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
}
