// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AnimeDetailModel _$AnimeDetailModelFromJson(Map<String, dynamic> json) =>
    _AnimeDetailModel(
      adultContent: json['adultContent'] as bool,
      dataId: json['data_id'] as String,
      id: json['id'] as String,
      title: json['title'] as String,
      japaneseTitle: json['japanese_title'] as String,
      poster: json['poster'] as String,
      showType: json['showType'] as String,
      animeInfo:
          AnimeInfoModel.fromJson(json['animeInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AnimeDetailModelToJson(_AnimeDetailModel instance) =>
    <String, dynamic>{
      'adultContent': instance.adultContent,
      'data_id': instance.dataId,
      'id': instance.id,
      'title': instance.title,
      'japanese_title': instance.japaneseTitle,
      'poster': instance.poster,
      'showType': instance.showType,
      'animeInfo': instance.animeInfo,
    };

_AnimeInfoModel _$AnimeInfoModelFromJson(Map<String, dynamic> json) =>
    _AnimeInfoModel(
      overview: json['Overview'] as String,
      japanese: json['Japanese'] as String,
      synonyms: json['Synonyms'] as String?,
      aired: json['Aired'] as String?,
      premiered: json['Premiered'] as String?,
      duration: json['Duration'] as String?,
      status: json['Status'] as String?,
      malScore: json['MAL Score'] as String?,
      genres:
          (json['Genres'] as List<dynamic>?)?.map((e) => e as String).toList(),
      studios: json['Studios'] as String?,
      producers: (json['Producers'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      tvInfo: TvInfoModel.fromJson(json['tvInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AnimeInfoModelToJson(_AnimeInfoModel instance) =>
    <String, dynamic>{
      'Overview': instance.overview,
      'Japanese': instance.japanese,
      'Synonyms': instance.synonyms,
      'Aired': instance.aired,
      'Premiered': instance.premiered,
      'Duration': instance.duration,
      'Status': instance.status,
      'MAL Score': instance.malScore,
      'Genres': instance.genres,
      'Studios': instance.studios,
      'Producers': instance.producers,
      'tvInfo': instance.tvInfo,
    };

_TvInfoModel _$TvInfoModelFromJson(Map<String, dynamic> json) => _TvInfoModel(
      rating: json['rating'] as String,
      quality: json['quality'] as String,
      sub: json['sub'] as String,
      dub: json['dub'] as String,
      showType: json['showType'] as String,
      duration: json['duration'] as String,
    );

Map<String, dynamic> _$TvInfoModelToJson(_TvInfoModel instance) =>
    <String, dynamic>{
      'rating': instance.rating,
      'quality': instance.quality,
      'sub': instance.sub,
      'dub': instance.dub,
      'showType': instance.showType,
      'duration': instance.duration,
    };
