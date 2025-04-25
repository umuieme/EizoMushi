// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'streaming_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StreamingInfo _$StreamingInfoFromJson(Map<String, dynamic> json) =>
    _StreamingInfo(
      streamingLink:
          StreamingLink.fromJson(json['streamingLink'] as Map<String, dynamic>),
      servers: (json['servers'] as List<dynamic>)
          .map((e) => Server.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$StreamingInfoToJson(_StreamingInfo instance) =>
    <String, dynamic>{
      'streamingLink': instance.streamingLink,
      'servers': instance.servers,
    };

_StreamingLink _$StreamingLinkFromJson(Map<String, dynamic> json) =>
    _StreamingLink(
      id: json['id'] as String,
      type: json['type'] as String,
      link: Link.fromJson(json['link'] as Map<String, dynamic>),
      tracks: (json['tracks'] as List<dynamic>)
          .map((e) => Track.fromJson(e as Map<String, dynamic>))
          .toList(),
      intro: TimeRange.fromJson(json['intro'] as Map<String, dynamic>),
      outro: TimeRange.fromJson(json['outro'] as Map<String, dynamic>),
      server: json['server'] as String,
      iframe: json['iframe'] as String,
    );

Map<String, dynamic> _$StreamingLinkToJson(_StreamingLink instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'link': instance.link,
      'tracks': instance.tracks,
      'intro': instance.intro,
      'outro': instance.outro,
      'server': instance.server,
      'iframe': instance.iframe,
    };

_Link _$LinkFromJson(Map<String, dynamic> json) => _Link(
      file: json['file'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$LinkToJson(_Link instance) => <String, dynamic>{
      'file': instance.file,
      'type': instance.type,
    };

_Track _$TrackFromJson(Map<String, dynamic> json) => _Track(
      file: json['file'] as String,
      label: json['label'] as String?,
      kind: json['kind'] as String,
      isDefault: json['default'] as bool,
    );

Map<String, dynamic> _$TrackToJson(_Track instance) => <String, dynamic>{
      'file': instance.file,
      'label': instance.label,
      'kind': instance.kind,
      'default': instance.isDefault,
    };

_TimeRange _$TimeRangeFromJson(Map<String, dynamic> json) => _TimeRange(
      start: (json['start'] as num).toInt(),
      end: (json['end'] as num).toInt(),
    );

Map<String, dynamic> _$TimeRangeToJson(_TimeRange instance) =>
    <String, dynamic>{
      'start': instance.start,
      'end': instance.end,
    };

_Server _$ServerFromJson(Map<String, dynamic> json) => _Server(
      type: json['type'] as String,
      dataId: json['data_id'] as String,
      serverId: json['server_id'] as String,
      serverName: json['serverName'] as String,
    );

Map<String, dynamic> _$ServerToJson(_Server instance) => <String, dynamic>{
      'type': instance.type,
      'data_id': instance.dataId,
      'server_id': instance.serverId,
      'serverName': instance.serverName,
    };
