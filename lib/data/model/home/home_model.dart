import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_model.freezed.dart';
part 'home_model.g.dart';

@freezed
abstract class HomeDataModel with _$HomeDataModel {
  factory HomeDataModel({
    required List<AnimeInfoHomeModel> spotlights,
    required List<AnimeInfoHomeModel> topAiring,
  }) = _HomeDataModel;

  factory HomeDataModel.fromJson(Map<String, Object?> json) =>
      _$HomeDataModelFromJson(json);
}

@freezed
abstract class AnimeInfoHomeModel with _$AnimeInfoHomeModel {
  const factory AnimeInfoHomeModel({
    required String id,
    @JsonKey(name: 'data_id') required String dataId,
    required String poster,
    required String title,
    @JsonKey(name: 'japanese_title') required String japaneseTitle,
    required String description,
    TvInfoModel? tvInfo,
  }) = _AnimeInfoHomeModel;

  factory AnimeInfoHomeModel.fromJson(Map<String, dynamic> json) =>
      _$AnimeInfoHomeModelFromJson(json);
}

@freezed
abstract class TvInfoModel with _$TvInfoModel {
  const factory TvInfoModel({
    required String showType,
    required String duration,
    required String? releaseDate,
    required String? quality,
    required EpisodeInfoModel? episodeInfo,
  }) = _TvInfoModel;

  factory TvInfoModel.fromJson(Map<String, dynamic> json) =>
      _$TvInfoModelFromJson(json);
}

@freezed
abstract class EpisodeInfoModel with _$EpisodeInfoModel {
  const factory EpisodeInfoModel({
    required String sub,
    required String dub,
  }) = _EpisodeInfoModel;

  factory EpisodeInfoModel.fromJson(Map<String, dynamic> json) =>
      _$EpisodeInfoModelFromJson(json);
}
