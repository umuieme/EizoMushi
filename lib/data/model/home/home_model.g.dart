// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HomeDataModel _$HomeDataModelFromJson(Map<String, dynamic> json) =>
    _HomeDataModel(
      spotlights: (json['spotlights'] as List<dynamic>)
          .map((e) => AnimeInfoHomeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      topAiring: (json['topAiring'] as List<dynamic>)
          .map((e) => AnimeInfoHomeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      latestEpisode: (json['latestEpisode'] as List<dynamic>)
          .map((e) => AnimeInfoHomeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      latestCompleted: (json['latestCompleted'] as List<dynamic>)
          .map((e) => AnimeInfoHomeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      recentlyAdded: (json['recentlyAdded'] as List<dynamic>)
          .map((e) => AnimeInfoHomeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HomeDataModelToJson(_HomeDataModel instance) =>
    <String, dynamic>{
      'spotlights': instance.spotlights,
      'topAiring': instance.topAiring,
      'latestEpisode': instance.latestEpisode,
      'latestCompleted': instance.latestCompleted,
      'recentlyAdded': instance.recentlyAdded,
    };

_AnimeInfoHomeModel _$AnimeInfoHomeModelFromJson(Map<String, dynamic> json) =>
    _AnimeInfoHomeModel(
      id: json['id'] as String,
      dataId: json['data_id'] as String,
      poster: json['poster'] as String,
      title: json['title'] as String,
      japaneseTitle: json['japanese_title'] as String,
      description: json['description'] as String,
      tvInfo: json['tvInfo'] == null
          ? null
          : TvInfoModel.fromJson(json['tvInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AnimeInfoHomeModelToJson(_AnimeInfoHomeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'data_id': instance.dataId,
      'poster': instance.poster,
      'title': instance.title,
      'japanese_title': instance.japaneseTitle,
      'description': instance.description,
      'tvInfo': instance.tvInfo,
    };

_TvInfoModel _$TvInfoModelFromJson(Map<String, dynamic> json) => _TvInfoModel(
      showType: json['showType'] as String,
      duration: json['duration'] as String,
      releaseDate: json['releaseDate'] as String?,
      quality: json['quality'] as String?,
      episodeInfo: json['episodeInfo'] == null
          ? null
          : EpisodeInfoModel.fromJson(
              json['episodeInfo'] as Map<String, dynamic>),
      sub: json['sub'] as String?,
      dub: json['dub'] as String?,
    );

Map<String, dynamic> _$TvInfoModelToJson(_TvInfoModel instance) =>
    <String, dynamic>{
      'showType': instance.showType,
      'duration': instance.duration,
      'releaseDate': instance.releaseDate,
      'quality': instance.quality,
      'episodeInfo': instance.episodeInfo,
      'sub': instance.sub,
      'dub': instance.dub,
    };

_EpisodeInfoModel _$EpisodeInfoModelFromJson(Map<String, dynamic> json) =>
    _EpisodeInfoModel(
      sub: json['sub'] as String,
      dub: json['dub'] as String,
    );

Map<String, dynamic> _$EpisodeInfoModelToJson(_EpisodeInfoModel instance) =>
    <String, dynamic>{
      'sub': instance.sub,
      'dub': instance.dub,
    };
