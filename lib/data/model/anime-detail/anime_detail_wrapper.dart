import 'package:eizo_mushi/data/model/anime-detail/anime_detail_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'anime_detail_wrapper.freezed.dart';
part 'anime_detail_wrapper.g.dart';

@freezed
abstract class AnimeDetailResult with _$AnimeDetailResult {
  factory AnimeDetailResult({
    required AnimeDetailModel data,
  }) = _AnimeDetailResult;

  factory AnimeDetailResult.fromJson(Map<String, Object?> json) =>
      _$AnimeDetailResultFromJson(json);
}
