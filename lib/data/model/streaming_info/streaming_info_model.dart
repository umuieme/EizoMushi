import 'package:freezed_annotation/freezed_annotation.dart';
part 'streaming_info_model.g.dart';
part 'streaming_info_model.freezed.dart';

/// The actual streaming info under `results`.
@freezed
abstract class StreamingInfo with _$StreamingInfo {
  const factory StreamingInfo({
    required StreamingLink streamingLink,
    required List<Server> servers,
  }) = _StreamingInfo;

  factory StreamingInfo.fromJson(Map<String, dynamic> json) =>
      _$StreamingInfoFromJson(json);
}

@freezed
abstract class StreamingLink with _$StreamingLink {
  const factory StreamingLink({
    required String id,
    required String type,
    required Link link,
    required List<Track> tracks,
    required TimeRange intro,
    required TimeRange outro,
    required String server,
    required String iframe,
  }) = _StreamingLink;

  factory StreamingLink.fromJson(Map<String, dynamic> json) =>
      _$StreamingLinkFromJson(json);
}

@freezed
abstract class Link with _$Link {
  const factory Link({
    required String file,
    required String type,
  }) = _Link;

  factory Link.fromJson(Map<String, dynamic> json) => _$LinkFromJson(json);
}

@freezed
abstract class Track with _$Track {
  const factory Track({
    required String file,
    required String kind,
    @JsonKey(name: 'default') required bool isDefault,
    String? label,
  }) = _Track;

  factory Track.fromJson(Map<String, dynamic> json) => _$TrackFromJson(json);
}

@freezed
abstract class TimeRange with _$TimeRange {
  const factory TimeRange({
    required int start,
    required int end,
  }) = _TimeRange;

  factory TimeRange.fromJson(Map<String, dynamic> json) =>
      _$TimeRangeFromJson(json);
}

@freezed
abstract class Server with _$Server {
  const factory Server({
    required String type,
    @JsonKey(name: 'data_id') required String dataId,
    @JsonKey(name: 'server_id') required String serverId,
    required String serverName,
  }) = _Server;

  factory Server.fromJson(Map<String, dynamic> json) => _$ServerFromJson(json);
}
