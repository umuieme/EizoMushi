import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_model.freezed.dart';
part 'home_model.g.dart';

@freezed
abstract class HomeDataModel with _$HomeDataModel {
  factory HomeDataModel({
    required List<AnimeInfoHomeModel> spotlights,
    required List<AnimeInfoHomeModel> topAiring,
    required List<AnimeInfoHomeModel> latestEpisode,
    required List<AnimeInfoHomeModel> latestCompleted,
    required List<AnimeInfoHomeModel> recentlyAdded,
  }) = _HomeDataModel;

  factory HomeDataModel.fromJson(Map<String, Object?> json) =>
      _$HomeDataModelFromJson(json);
}

@freezed
abstract class AnimeInfoHomeModel with _$AnimeInfoHomeModel {
  const factory AnimeInfoHomeModel({
    required String id,
    required String poster,
    required String title,
    @JsonKey(name: 'japanese_title') String? japaneseTitle,
    String? description,
    @JsonKey(name: 'data_id') String? dataId,
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
    String? sub,
    String? dub,
  }) = _TvInfoModel;
  const TvInfoModel._();

  factory TvInfoModel.fromJson(Map<String, dynamic> json) =>
      _$TvInfoModelFromJson(json);

  String? get totalSub => sub ?? episodeInfo?.sub;
  String? get totalDub => dub ?? episodeInfo?.dub;
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
