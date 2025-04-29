// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EpisodeListResponse _$EpisodeListResponseFromJson(Map<String, dynamic> json) =>
    _EpisodeListResponse(
      totalEpisodes: (json['totalEpisodes'] as num).toInt(),
      episodes: (json['episodes'] as List<dynamic>)
          .map((e) => EpisodeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$EpisodeListResponseToJson(
        _EpisodeListResponse instance) =>
    <String, dynamic>{
      'totalEpisodes': instance.totalEpisodes,
      'episodes': instance.episodes,
    };

_EpisodeModel _$EpisodeModelFromJson(Map<String, dynamic> json) =>
    _EpisodeModel(
      episodeNo: (json['episode_no'] as num).toInt(),
      id: json['id'] as String,
      title: json['title'] as String,
      japaneseTitle: json['japanese_title'] as String,
      filler: json['filler'] as bool,
    );

Map<String, dynamic> _$EpisodeModelToJson(_EpisodeModel instance) =>
    <String, dynamic>{
      'episode_no': instance.episodeNo,
      'id': instance.id,
      'title': instance.title,
      'japanese_title': instance.japaneseTitle,
      'filler': instance.filler,
    };
