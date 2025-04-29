// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'streaming_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StreamingInfoModel {
  StreamingLink get streamingLink;
  List<Server> get servers;

  /// Create a copy of StreamingInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StreamingInfoModelCopyWith<StreamingInfoModel> get copyWith =>
      _$StreamingInfoModelCopyWithImpl<StreamingInfoModel>(
          this as StreamingInfoModel, _$identity);

  /// Serializes this StreamingInfoModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StreamingInfoModel &&
            (identical(other.streamingLink, streamingLink) ||
                other.streamingLink == streamingLink) &&
            const DeepCollectionEquality().equals(other.servers, servers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, streamingLink, const DeepCollectionEquality().hash(servers));

  @override
  String toString() {
    return 'StreamingInfoModel(streamingLink: $streamingLink, servers: $servers)';
  }
}

/// @nodoc
abstract mixin class $StreamingInfoModelCopyWith<$Res> {
  factory $StreamingInfoModelCopyWith(
          StreamingInfoModel value, $Res Function(StreamingInfoModel) _then) =
      _$StreamingInfoModelCopyWithImpl;
  @useResult
  $Res call({StreamingLink streamingLink, List<Server> servers});

  $StreamingLinkCopyWith<$Res> get streamingLink;
}

/// @nodoc
class _$StreamingInfoModelCopyWithImpl<$Res>
    implements $StreamingInfoModelCopyWith<$Res> {
  _$StreamingInfoModelCopyWithImpl(this._self, this._then);

  final StreamingInfoModel _self;
  final $Res Function(StreamingInfoModel) _then;

  /// Create a copy of StreamingInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? streamingLink = null,
    Object? servers = null,
  }) {
    return _then(_self.copyWith(
      streamingLink: null == streamingLink
          ? _self.streamingLink
          : streamingLink // ignore: cast_nullable_to_non_nullable
              as StreamingLink,
      servers: null == servers
          ? _self.servers
          : servers // ignore: cast_nullable_to_non_nullable
              as List<Server>,
    ));
  }

  /// Create a copy of StreamingInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StreamingLinkCopyWith<$Res> get streamingLink {
    return $StreamingLinkCopyWith<$Res>(_self.streamingLink, (value) {
      return _then(_self.copyWith(streamingLink: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _StreamingInfoModel implements StreamingInfoModel {
  const _StreamingInfoModel(
      {required this.streamingLink, required final List<Server> servers})
      : _servers = servers;
  factory _StreamingInfoModel.fromJson(Map<String, dynamic> json) =>
      _$StreamingInfoModelFromJson(json);

  @override
  final StreamingLink streamingLink;
  final List<Server> _servers;
  @override
  List<Server> get servers {
    if (_servers is EqualUnmodifiableListView) return _servers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_servers);
  }

  /// Create a copy of StreamingInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StreamingInfoModelCopyWith<_StreamingInfoModel> get copyWith =>
      __$StreamingInfoModelCopyWithImpl<_StreamingInfoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StreamingInfoModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StreamingInfoModel &&
            (identical(other.streamingLink, streamingLink) ||
                other.streamingLink == streamingLink) &&
            const DeepCollectionEquality().equals(other._servers, _servers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, streamingLink,
      const DeepCollectionEquality().hash(_servers));

  @override
  String toString() {
    return 'StreamingInfoModel(streamingLink: $streamingLink, servers: $servers)';
  }
}

/// @nodoc
abstract mixin class _$StreamingInfoModelCopyWith<$Res>
    implements $StreamingInfoModelCopyWith<$Res> {
  factory _$StreamingInfoModelCopyWith(
          _StreamingInfoModel value, $Res Function(_StreamingInfoModel) _then) =
      __$StreamingInfoModelCopyWithImpl;
  @override
  @useResult
  $Res call({StreamingLink streamingLink, List<Server> servers});

  @override
  $StreamingLinkCopyWith<$Res> get streamingLink;
}

/// @nodoc
class __$StreamingInfoModelCopyWithImpl<$Res>
    implements _$StreamingInfoModelCopyWith<$Res> {
  __$StreamingInfoModelCopyWithImpl(this._self, this._then);

  final _StreamingInfoModel _self;
  final $Res Function(_StreamingInfoModel) _then;

  /// Create a copy of StreamingInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? streamingLink = null,
    Object? servers = null,
  }) {
    return _then(_StreamingInfoModel(
      streamingLink: null == streamingLink
          ? _self.streamingLink
          : streamingLink // ignore: cast_nullable_to_non_nullable
              as StreamingLink,
      servers: null == servers
          ? _self._servers
          : servers // ignore: cast_nullable_to_non_nullable
              as List<Server>,
    ));
  }

  /// Create a copy of StreamingInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StreamingLinkCopyWith<$Res> get streamingLink {
    return $StreamingLinkCopyWith<$Res>(_self.streamingLink, (value) {
      return _then(_self.copyWith(streamingLink: value));
    });
  }
}

/// @nodoc
mixin _$StreamingLink {
  String get id;
  String get type;
  Link get link;
  List<Track> get tracks;
  TimeRange get intro;
  TimeRange get outro;
  String get server;
  String get iframe;

  /// Create a copy of StreamingLink
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StreamingLinkCopyWith<StreamingLink> get copyWith =>
      _$StreamingLinkCopyWithImpl<StreamingLink>(
          this as StreamingLink, _$identity);

  /// Serializes this StreamingLink to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StreamingLink &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.link, link) || other.link == link) &&
            const DeepCollectionEquality().equals(other.tracks, tracks) &&
            (identical(other.intro, intro) || other.intro == intro) &&
            (identical(other.outro, outro) || other.outro == outro) &&
            (identical(other.server, server) || other.server == server) &&
            (identical(other.iframe, iframe) || other.iframe == iframe));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      type,
      link,
      const DeepCollectionEquality().hash(tracks),
      intro,
      outro,
      server,
      iframe);

  @override
  String toString() {
    return 'StreamingLink(id: $id, type: $type, link: $link, tracks: $tracks, intro: $intro, outro: $outro, server: $server, iframe: $iframe)';
  }
}

/// @nodoc
abstract mixin class $StreamingLinkCopyWith<$Res> {
  factory $StreamingLinkCopyWith(
          StreamingLink value, $Res Function(StreamingLink) _then) =
      _$StreamingLinkCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String type,
      Link link,
      List<Track> tracks,
      TimeRange intro,
      TimeRange outro,
      String server,
      String iframe});

  $LinkCopyWith<$Res> get link;
  $TimeRangeCopyWith<$Res> get intro;
  $TimeRangeCopyWith<$Res> get outro;
}

/// @nodoc
class _$StreamingLinkCopyWithImpl<$Res>
    implements $StreamingLinkCopyWith<$Res> {
  _$StreamingLinkCopyWithImpl(this._self, this._then);

  final StreamingLink _self;
  final $Res Function(StreamingLink) _then;

  /// Create a copy of StreamingLink
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? link = null,
    Object? tracks = null,
    Object? intro = null,
    Object? outro = null,
    Object? server = null,
    Object? iframe = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _self.link
          : link // ignore: cast_nullable_to_non_nullable
              as Link,
      tracks: null == tracks
          ? _self.tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as List<Track>,
      intro: null == intro
          ? _self.intro
          : intro // ignore: cast_nullable_to_non_nullable
              as TimeRange,
      outro: null == outro
          ? _self.outro
          : outro // ignore: cast_nullable_to_non_nullable
              as TimeRange,
      server: null == server
          ? _self.server
          : server // ignore: cast_nullable_to_non_nullable
              as String,
      iframe: null == iframe
          ? _self.iframe
          : iframe // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of StreamingLink
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LinkCopyWith<$Res> get link {
    return $LinkCopyWith<$Res>(_self.link, (value) {
      return _then(_self.copyWith(link: value));
    });
  }

  /// Create a copy of StreamingLink
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TimeRangeCopyWith<$Res> get intro {
    return $TimeRangeCopyWith<$Res>(_self.intro, (value) {
      return _then(_self.copyWith(intro: value));
    });
  }

  /// Create a copy of StreamingLink
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TimeRangeCopyWith<$Res> get outro {
    return $TimeRangeCopyWith<$Res>(_self.outro, (value) {
      return _then(_self.copyWith(outro: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _StreamingLink implements StreamingLink {
  const _StreamingLink(
      {required this.id,
      required this.type,
      required this.link,
      required final List<Track> tracks,
      required this.intro,
      required this.outro,
      required this.server,
      required this.iframe})
      : _tracks = tracks;
  factory _StreamingLink.fromJson(Map<String, dynamic> json) =>
      _$StreamingLinkFromJson(json);

  @override
  final String id;
  @override
  final String type;
  @override
  final Link link;
  final List<Track> _tracks;
  @override
  List<Track> get tracks {
    if (_tracks is EqualUnmodifiableListView) return _tracks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tracks);
  }

  @override
  final TimeRange intro;
  @override
  final TimeRange outro;
  @override
  final String server;
  @override
  final String iframe;

  /// Create a copy of StreamingLink
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StreamingLinkCopyWith<_StreamingLink> get copyWith =>
      __$StreamingLinkCopyWithImpl<_StreamingLink>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StreamingLinkToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StreamingLink &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.link, link) || other.link == link) &&
            const DeepCollectionEquality().equals(other._tracks, _tracks) &&
            (identical(other.intro, intro) || other.intro == intro) &&
            (identical(other.outro, outro) || other.outro == outro) &&
            (identical(other.server, server) || other.server == server) &&
            (identical(other.iframe, iframe) || other.iframe == iframe));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      type,
      link,
      const DeepCollectionEquality().hash(_tracks),
      intro,
      outro,
      server,
      iframe);

  @override
  String toString() {
    return 'StreamingLink(id: $id, type: $type, link: $link, tracks: $tracks, intro: $intro, outro: $outro, server: $server, iframe: $iframe)';
  }
}

/// @nodoc
abstract mixin class _$StreamingLinkCopyWith<$Res>
    implements $StreamingLinkCopyWith<$Res> {
  factory _$StreamingLinkCopyWith(
          _StreamingLink value, $Res Function(_StreamingLink) _then) =
      __$StreamingLinkCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String type,
      Link link,
      List<Track> tracks,
      TimeRange intro,
      TimeRange outro,
      String server,
      String iframe});

  @override
  $LinkCopyWith<$Res> get link;
  @override
  $TimeRangeCopyWith<$Res> get intro;
  @override
  $TimeRangeCopyWith<$Res> get outro;
}

/// @nodoc
class __$StreamingLinkCopyWithImpl<$Res>
    implements _$StreamingLinkCopyWith<$Res> {
  __$StreamingLinkCopyWithImpl(this._self, this._then);

  final _StreamingLink _self;
  final $Res Function(_StreamingLink) _then;

  /// Create a copy of StreamingLink
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? link = null,
    Object? tracks = null,
    Object? intro = null,
    Object? outro = null,
    Object? server = null,
    Object? iframe = null,
  }) {
    return _then(_StreamingLink(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _self.link
          : link // ignore: cast_nullable_to_non_nullable
              as Link,
      tracks: null == tracks
          ? _self._tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as List<Track>,
      intro: null == intro
          ? _self.intro
          : intro // ignore: cast_nullable_to_non_nullable
              as TimeRange,
      outro: null == outro
          ? _self.outro
          : outro // ignore: cast_nullable_to_non_nullable
              as TimeRange,
      server: null == server
          ? _self.server
          : server // ignore: cast_nullable_to_non_nullable
              as String,
      iframe: null == iframe
          ? _self.iframe
          : iframe // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of StreamingLink
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LinkCopyWith<$Res> get link {
    return $LinkCopyWith<$Res>(_self.link, (value) {
      return _then(_self.copyWith(link: value));
    });
  }

  /// Create a copy of StreamingLink
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TimeRangeCopyWith<$Res> get intro {
    return $TimeRangeCopyWith<$Res>(_self.intro, (value) {
      return _then(_self.copyWith(intro: value));
    });
  }

  /// Create a copy of StreamingLink
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TimeRangeCopyWith<$Res> get outro {
    return $TimeRangeCopyWith<$Res>(_self.outro, (value) {
      return _then(_self.copyWith(outro: value));
    });
  }
}

/// @nodoc
mixin _$Link {
  String get file;
  String get type;

  /// Create a copy of Link
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LinkCopyWith<Link> get copyWith =>
      _$LinkCopyWithImpl<Link>(this as Link, _$identity);

  /// Serializes this Link to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Link &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, file, type);

  @override
  String toString() {
    return 'Link(file: $file, type: $type)';
  }
}

/// @nodoc
abstract mixin class $LinkCopyWith<$Res> {
  factory $LinkCopyWith(Link value, $Res Function(Link) _then) =
      _$LinkCopyWithImpl;
  @useResult
  $Res call({String file, String type});
}

/// @nodoc
class _$LinkCopyWithImpl<$Res> implements $LinkCopyWith<$Res> {
  _$LinkCopyWithImpl(this._self, this._then);

  final Link _self;
  final $Res Function(Link) _then;

  /// Create a copy of Link
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
    Object? type = null,
  }) {
    return _then(_self.copyWith(
      file: null == file
          ? _self.file
          : file // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Link implements Link {
  const _Link({required this.file, required this.type});
  factory _Link.fromJson(Map<String, dynamic> json) => _$LinkFromJson(json);

  @override
  final String file;
  @override
  final String type;

  /// Create a copy of Link
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LinkCopyWith<_Link> get copyWith =>
      __$LinkCopyWithImpl<_Link>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LinkToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Link &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, file, type);

  @override
  String toString() {
    return 'Link(file: $file, type: $type)';
  }
}

/// @nodoc
abstract mixin class _$LinkCopyWith<$Res> implements $LinkCopyWith<$Res> {
  factory _$LinkCopyWith(_Link value, $Res Function(_Link) _then) =
      __$LinkCopyWithImpl;
  @override
  @useResult
  $Res call({String file, String type});
}

/// @nodoc
class __$LinkCopyWithImpl<$Res> implements _$LinkCopyWith<$Res> {
  __$LinkCopyWithImpl(this._self, this._then);

  final _Link _self;
  final $Res Function(_Link) _then;

  /// Create a copy of Link
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? file = null,
    Object? type = null,
  }) {
    return _then(_Link(
      file: null == file
          ? _self.file
          : file // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$Track {
  String get file;
  String get kind;
  @JsonKey(name: 'default')
  bool? get isDefault;
  String? get label;

  /// Create a copy of Track
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TrackCopyWith<Track> get copyWith =>
      _$TrackCopyWithImpl<Track>(this as Track, _$identity);

  /// Serializes this Track to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Track &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault) &&
            (identical(other.label, label) || other.label == label));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, file, kind, isDefault, label);

  @override
  String toString() {
    return 'Track(file: $file, kind: $kind, isDefault: $isDefault, label: $label)';
  }
}

/// @nodoc
abstract mixin class $TrackCopyWith<$Res> {
  factory $TrackCopyWith(Track value, $Res Function(Track) _then) =
      _$TrackCopyWithImpl;
  @useResult
  $Res call(
      {String file,
      String kind,
      @JsonKey(name: 'default') bool? isDefault,
      String? label});
}

/// @nodoc
class _$TrackCopyWithImpl<$Res> implements $TrackCopyWith<$Res> {
  _$TrackCopyWithImpl(this._self, this._then);

  final Track _self;
  final $Res Function(Track) _then;

  /// Create a copy of Track
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
    Object? kind = null,
    Object? isDefault = freezed,
    Object? label = freezed,
  }) {
    return _then(_self.copyWith(
      file: null == file
          ? _self.file
          : file // ignore: cast_nullable_to_non_nullable
              as String,
      kind: null == kind
          ? _self.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      isDefault: freezed == isDefault
          ? _self.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool?,
      label: freezed == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Track implements Track {
  const _Track(
      {required this.file,
      required this.kind,
      @JsonKey(name: 'default') this.isDefault,
      this.label});
  factory _Track.fromJson(Map<String, dynamic> json) => _$TrackFromJson(json);

  @override
  final String file;
  @override
  final String kind;
  @override
  @JsonKey(name: 'default')
  final bool? isDefault;
  @override
  final String? label;

  /// Create a copy of Track
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TrackCopyWith<_Track> get copyWith =>
      __$TrackCopyWithImpl<_Track>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TrackToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Track &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault) &&
            (identical(other.label, label) || other.label == label));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, file, kind, isDefault, label);

  @override
  String toString() {
    return 'Track(file: $file, kind: $kind, isDefault: $isDefault, label: $label)';
  }
}

/// @nodoc
abstract mixin class _$TrackCopyWith<$Res> implements $TrackCopyWith<$Res> {
  factory _$TrackCopyWith(_Track value, $Res Function(_Track) _then) =
      __$TrackCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String file,
      String kind,
      @JsonKey(name: 'default') bool? isDefault,
      String? label});
}

/// @nodoc
class __$TrackCopyWithImpl<$Res> implements _$TrackCopyWith<$Res> {
  __$TrackCopyWithImpl(this._self, this._then);

  final _Track _self;
  final $Res Function(_Track) _then;

  /// Create a copy of Track
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? file = null,
    Object? kind = null,
    Object? isDefault = freezed,
    Object? label = freezed,
  }) {
    return _then(_Track(
      file: null == file
          ? _self.file
          : file // ignore: cast_nullable_to_non_nullable
              as String,
      kind: null == kind
          ? _self.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      isDefault: freezed == isDefault
          ? _self.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool?,
      label: freezed == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$TimeRange {
  int get start;
  int get end;

  /// Create a copy of TimeRange
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TimeRangeCopyWith<TimeRange> get copyWith =>
      _$TimeRangeCopyWithImpl<TimeRange>(this as TimeRange, _$identity);

  /// Serializes this TimeRange to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TimeRange &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, start, end);

  @override
  String toString() {
    return 'TimeRange(start: $start, end: $end)';
  }
}

/// @nodoc
abstract mixin class $TimeRangeCopyWith<$Res> {
  factory $TimeRangeCopyWith(TimeRange value, $Res Function(TimeRange) _then) =
      _$TimeRangeCopyWithImpl;
  @useResult
  $Res call({int start, int end});
}

/// @nodoc
class _$TimeRangeCopyWithImpl<$Res> implements $TimeRangeCopyWith<$Res> {
  _$TimeRangeCopyWithImpl(this._self, this._then);

  final TimeRange _self;
  final $Res Function(TimeRange) _then;

  /// Create a copy of TimeRange
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_self.copyWith(
      start: null == start
          ? _self.start
          : start // ignore: cast_nullable_to_non_nullable
              as int,
      end: null == end
          ? _self.end
          : end // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _TimeRange implements TimeRange {
  const _TimeRange({required this.start, required this.end});
  factory _TimeRange.fromJson(Map<String, dynamic> json) =>
      _$TimeRangeFromJson(json);

  @override
  final int start;
  @override
  final int end;

  /// Create a copy of TimeRange
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TimeRangeCopyWith<_TimeRange> get copyWith =>
      __$TimeRangeCopyWithImpl<_TimeRange>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TimeRangeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TimeRange &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, start, end);

  @override
  String toString() {
    return 'TimeRange(start: $start, end: $end)';
  }
}

/// @nodoc
abstract mixin class _$TimeRangeCopyWith<$Res>
    implements $TimeRangeCopyWith<$Res> {
  factory _$TimeRangeCopyWith(
          _TimeRange value, $Res Function(_TimeRange) _then) =
      __$TimeRangeCopyWithImpl;
  @override
  @useResult
  $Res call({int start, int end});
}

/// @nodoc
class __$TimeRangeCopyWithImpl<$Res> implements _$TimeRangeCopyWith<$Res> {
  __$TimeRangeCopyWithImpl(this._self, this._then);

  final _TimeRange _self;
  final $Res Function(_TimeRange) _then;

  /// Create a copy of TimeRange
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_TimeRange(
      start: null == start
          ? _self.start
          : start // ignore: cast_nullable_to_non_nullable
              as int,
      end: null == end
          ? _self.end
          : end // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$Server {
  String get type;
  @JsonKey(name: 'data_id')
  String get dataId;
  @JsonKey(name: 'server_id')
  String get serverId;
  String get serverName;

  /// Create a copy of Server
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ServerCopyWith<Server> get copyWith =>
      _$ServerCopyWithImpl<Server>(this as Server, _$identity);

  /// Serializes this Server to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Server &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.dataId, dataId) || other.dataId == dataId) &&
            (identical(other.serverId, serverId) ||
                other.serverId == serverId) &&
            (identical(other.serverName, serverName) ||
                other.serverName == serverName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, type, dataId, serverId, serverName);

  @override
  String toString() {
    return 'Server(type: $type, dataId: $dataId, serverId: $serverId, serverName: $serverName)';
  }
}

/// @nodoc
abstract mixin class $ServerCopyWith<$Res> {
  factory $ServerCopyWith(Server value, $Res Function(Server) _then) =
      _$ServerCopyWithImpl;
  @useResult
  $Res call(
      {String type,
      @JsonKey(name: 'data_id') String dataId,
      @JsonKey(name: 'server_id') String serverId,
      String serverName});
}

/// @nodoc
class _$ServerCopyWithImpl<$Res> implements $ServerCopyWith<$Res> {
  _$ServerCopyWithImpl(this._self, this._then);

  final Server _self;
  final $Res Function(Server) _then;

  /// Create a copy of Server
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? dataId = null,
    Object? serverId = null,
    Object? serverName = null,
  }) {
    return _then(_self.copyWith(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      dataId: null == dataId
          ? _self.dataId
          : dataId // ignore: cast_nullable_to_non_nullable
              as String,
      serverId: null == serverId
          ? _self.serverId
          : serverId // ignore: cast_nullable_to_non_nullable
              as String,
      serverName: null == serverName
          ? _self.serverName
          : serverName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Server implements Server {
  const _Server(
      {required this.type,
      @JsonKey(name: 'data_id') required this.dataId,
      @JsonKey(name: 'server_id') required this.serverId,
      required this.serverName});
  factory _Server.fromJson(Map<String, dynamic> json) => _$ServerFromJson(json);

  @override
  final String type;
  @override
  @JsonKey(name: 'data_id')
  final String dataId;
  @override
  @JsonKey(name: 'server_id')
  final String serverId;
  @override
  final String serverName;

  /// Create a copy of Server
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ServerCopyWith<_Server> get copyWith =>
      __$ServerCopyWithImpl<_Server>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ServerToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Server &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.dataId, dataId) || other.dataId == dataId) &&
            (identical(other.serverId, serverId) ||
                other.serverId == serverId) &&
            (identical(other.serverName, serverName) ||
                other.serverName == serverName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, type, dataId, serverId, serverName);

  @override
  String toString() {
    return 'Server(type: $type, dataId: $dataId, serverId: $serverId, serverName: $serverName)';
  }
}

/// @nodoc
abstract mixin class _$ServerCopyWith<$Res> implements $ServerCopyWith<$Res> {
  factory _$ServerCopyWith(_Server value, $Res Function(_Server) _then) =
      __$ServerCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String type,
      @JsonKey(name: 'data_id') String dataId,
      @JsonKey(name: 'server_id') String serverId,
      String serverName});
}

/// @nodoc
class __$ServerCopyWithImpl<$Res> implements _$ServerCopyWith<$Res> {
  __$ServerCopyWithImpl(this._self, this._then);

  final _Server _self;
  final $Res Function(_Server) _then;

  /// Create a copy of Server
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? dataId = null,
    Object? serverId = null,
    Object? serverName = null,
  }) {
    return _then(_Server(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      dataId: null == dataId
          ? _self.dataId
          : dataId // ignore: cast_nullable_to_non_nullable
              as String,
      serverId: null == serverId
          ? _self.serverId
          : serverId // ignore: cast_nullable_to_non_nullable
              as String,
      serverName: null == serverName
          ? _self.serverName
          : serverName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
