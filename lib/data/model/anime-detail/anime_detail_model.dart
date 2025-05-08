import 'package:freezed_annotation/freezed_annotation.dart';

part 'anime_detail_model.freezed.dart';
part 'anime_detail_model.g.dart';

@freezed
abstract class AnimeDetailModel with _$AnimeDetailModel {
  const factory AnimeDetailModel({
    required bool adultContent,
    @JsonKey(name: 'data_id') required String dataId,
    required String id,
    required String title,
    @JsonKey(name: 'japanese_title') required String japaneseTitle,
    required String poster,
    required String showType,
    required AnimeInfoModel animeInfo,
  }) = _AnimeDetailModel;

  factory AnimeDetailModel.fromJson(Map<String, dynamic> json) =>
      _$AnimeDetailModelFromJson(json);
}

@freezed
abstract class AnimeInfoModel with _$AnimeInfoModel {
  const factory AnimeInfoModel({
    @JsonKey(name: 'Overview') required String overview,
    @JsonKey(name: 'Japanese') required String japanese,
    @JsonKey(name: 'Synonyms') required String? synonyms,
    @JsonKey(name: 'Aired') required String? aired,
    @JsonKey(name: 'Premiered') required String? premiered,
    @JsonKey(name: 'Duration') required String? duration,
    @JsonKey(name: 'Status') required String? status,
    @JsonKey(name: 'MAL Score') required String? malScore,
    @JsonKey(name: 'Genres') required List<String>? genres,
    @JsonKey(name: 'Studios') required String? studios,
    @JsonKey(name: 'Producers') required List<String>? producers,
    required TvInfoModel tvInfo,
  }) = _AnimeInfoModel;

  factory AnimeInfoModel.fromJson(Map<String, dynamic> json) =>
      _$AnimeInfoModelFromJson(json);
}

@freezed
abstract class TvInfoModel with _$TvInfoModel {
  const factory TvInfoModel({
    required String? rating,
    required String? quality,
    required String? sub,
    required String? dub,
    required String? showType,
    required String? duration,
  }) = _TvInfoModel;

  factory TvInfoModel.fromJson(Map<String, dynamic> json) =>
      _$TvInfoModelFromJson(json);
}
