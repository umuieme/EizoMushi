// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EpisodeModel _$EpisodeModelFromJson(Map<String, dynamic> json) =>
    _EpisodeModel(
      episodeNo: (json['episode_no'] as num).toInt(),
      id: json['id'] as String,
      title: json['title'] as String,
      japaneseTitle: json['japaneseTitle'] as String,
      filler: json['filler'] as bool,
    );

Map<String, dynamic> _$EpisodeModelToJson(_EpisodeModel instance) =>
    <String, dynamic>{
      'episode_no': instance.episodeNo,
      'id': instance.id,
      'title': instance.title,
      'japaneseTitle': instance.japaneseTitle,
      'filler': instance.filler,
    };
