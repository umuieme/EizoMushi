import 'package:freezed_annotation/freezed_annotation.dart';

part 'episode_model.freezed.dart';
part 'episode_model.g.dart';

@freezed
abstract class EpisodeListResponse with _$EpisodeListResponse {
  factory EpisodeListResponse({
    required int totalEpisodes,
    required List<EpisodeModel> episodes,
  }) = _EpisodeListResponse;
  factory EpisodeListResponse.fromJson(Map<String, Object?> json) =>
      _$EpisodeListResponseFromJson(json);
}

@freezed
abstract class EpisodeModel with _$EpisodeModel {
  factory EpisodeModel({
    @JsonKey(name: 'episode_no') required int episodeNo,
    required String id,
    required String title,
    @JsonKey(name: 'japanese_title') required String japaneseTitle,
    required bool filler,
  }) = _EpisodeModel;

  factory EpisodeModel.fromJson(Map<String, Object?> json) =>
      _$EpisodeModelFromJson(json);
}
