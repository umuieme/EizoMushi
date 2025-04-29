// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'episode_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EpisodeListResponse {
  int get totalEpisodes;
  List<EpisodeModel> get episodes;

  /// Create a copy of EpisodeListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EpisodeListResponseCopyWith<EpisodeListResponse> get copyWith =>
      _$EpisodeListResponseCopyWithImpl<EpisodeListResponse>(
          this as EpisodeListResponse, _$identity);

  /// Serializes this EpisodeListResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EpisodeListResponse &&
            (identical(other.totalEpisodes, totalEpisodes) ||
                other.totalEpisodes == totalEpisodes) &&
            const DeepCollectionEquality().equals(other.episodes, episodes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, totalEpisodes,
      const DeepCollectionEquality().hash(episodes));

  @override
  String toString() {
    return 'EpisodeListResponse(totalEpisodes: $totalEpisodes, episodes: $episodes)';
  }
}

/// @nodoc
abstract mixin class $EpisodeListResponseCopyWith<$Res> {
  factory $EpisodeListResponseCopyWith(
          EpisodeListResponse value, $Res Function(EpisodeListResponse) _then) =
      _$EpisodeListResponseCopyWithImpl;
  @useResult
  $Res call({int totalEpisodes, List<EpisodeModel> episodes});
}

/// @nodoc
class _$EpisodeListResponseCopyWithImpl<$Res>
    implements $EpisodeListResponseCopyWith<$Res> {
  _$EpisodeListResponseCopyWithImpl(this._self, this._then);

  final EpisodeListResponse _self;
  final $Res Function(EpisodeListResponse) _then;

  /// Create a copy of EpisodeListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalEpisodes = null,
    Object? episodes = null,
  }) {
    return _then(_self.copyWith(
      totalEpisodes: null == totalEpisodes
          ? _self.totalEpisodes
          : totalEpisodes // ignore: cast_nullable_to_non_nullable
              as int,
      episodes: null == episodes
          ? _self.episodes
          : episodes // ignore: cast_nullable_to_non_nullable
              as List<EpisodeModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _EpisodeListResponse implements EpisodeListResponse {
  _EpisodeListResponse(
      {required this.totalEpisodes, required final List<EpisodeModel> episodes})
      : _episodes = episodes;
  factory _EpisodeListResponse.fromJson(Map<String, dynamic> json) =>
      _$EpisodeListResponseFromJson(json);

  @override
  final int totalEpisodes;
  final List<EpisodeModel> _episodes;
  @override
  List<EpisodeModel> get episodes {
    if (_episodes is EqualUnmodifiableListView) return _episodes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_episodes);
  }

  /// Create a copy of EpisodeListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EpisodeListResponseCopyWith<_EpisodeListResponse> get copyWith =>
      __$EpisodeListResponseCopyWithImpl<_EpisodeListResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$EpisodeListResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EpisodeListResponse &&
            (identical(other.totalEpisodes, totalEpisodes) ||
                other.totalEpisodes == totalEpisodes) &&
            const DeepCollectionEquality().equals(other._episodes, _episodes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, totalEpisodes,
      const DeepCollectionEquality().hash(_episodes));

  @override
  String toString() {
    return 'EpisodeListResponse(totalEpisodes: $totalEpisodes, episodes: $episodes)';
  }
}

/// @nodoc
abstract mixin class _$EpisodeListResponseCopyWith<$Res>
    implements $EpisodeListResponseCopyWith<$Res> {
  factory _$EpisodeListResponseCopyWith(_EpisodeListResponse value,
          $Res Function(_EpisodeListResponse) _then) =
      __$EpisodeListResponseCopyWithImpl;
  @override
  @useResult
  $Res call({int totalEpisodes, List<EpisodeModel> episodes});
}

/// @nodoc
class __$EpisodeListResponseCopyWithImpl<$Res>
    implements _$EpisodeListResponseCopyWith<$Res> {
  __$EpisodeListResponseCopyWithImpl(this._self, this._then);

  final _EpisodeListResponse _self;
  final $Res Function(_EpisodeListResponse) _then;

  /// Create a copy of EpisodeListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? totalEpisodes = null,
    Object? episodes = null,
  }) {
    return _then(_EpisodeListResponse(
      totalEpisodes: null == totalEpisodes
          ? _self.totalEpisodes
          : totalEpisodes // ignore: cast_nullable_to_non_nullable
              as int,
      episodes: null == episodes
          ? _self._episodes
          : episodes // ignore: cast_nullable_to_non_nullable
              as List<EpisodeModel>,
    ));
  }
}

/// @nodoc
mixin _$EpisodeModel {
  @JsonKey(name: 'episode_no')
  int get episodeNo;
  String get id;
  String get title;
  @JsonKey(name: 'japanese_title')
  String get japaneseTitle;
  bool get filler;

  /// Create a copy of EpisodeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EpisodeModelCopyWith<EpisodeModel> get copyWith =>
      _$EpisodeModelCopyWithImpl<EpisodeModel>(
          this as EpisodeModel, _$identity);

  /// Serializes this EpisodeModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EpisodeModel &&
            (identical(other.episodeNo, episodeNo) ||
                other.episodeNo == episodeNo) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.japaneseTitle, japaneseTitle) ||
                other.japaneseTitle == japaneseTitle) &&
            (identical(other.filler, filler) || other.filler == filler));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, episodeNo, id, title, japaneseTitle, filler);

  @override
  String toString() {
    return 'EpisodeModel(episodeNo: $episodeNo, id: $id, title: $title, japaneseTitle: $japaneseTitle, filler: $filler)';
  }
}

/// @nodoc
abstract mixin class $EpisodeModelCopyWith<$Res> {
  factory $EpisodeModelCopyWith(
          EpisodeModel value, $Res Function(EpisodeModel) _then) =
      _$EpisodeModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'episode_no') int episodeNo,
      String id,
      String title,
      @JsonKey(name: 'japanese_title') String japaneseTitle,
      bool filler});
}

/// @nodoc
class _$EpisodeModelCopyWithImpl<$Res> implements $EpisodeModelCopyWith<$Res> {
  _$EpisodeModelCopyWithImpl(this._self, this._then);

  final EpisodeModel _self;
  final $Res Function(EpisodeModel) _then;

  /// Create a copy of EpisodeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? episodeNo = null,
    Object? id = null,
    Object? title = null,
    Object? japaneseTitle = null,
    Object? filler = null,
  }) {
    return _then(_self.copyWith(
      episodeNo: null == episodeNo
          ? _self.episodeNo
          : episodeNo // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      japaneseTitle: null == japaneseTitle
          ? _self.japaneseTitle
          : japaneseTitle // ignore: cast_nullable_to_non_nullable
              as String,
      filler: null == filler
          ? _self.filler
          : filler // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _EpisodeModel implements EpisodeModel {
  _EpisodeModel(
      {@JsonKey(name: 'episode_no') required this.episodeNo,
      required this.id,
      required this.title,
      @JsonKey(name: 'japanese_title') required this.japaneseTitle,
      required this.filler});
  factory _EpisodeModel.fromJson(Map<String, dynamic> json) =>
      _$EpisodeModelFromJson(json);

  @override
  @JsonKey(name: 'episode_no')
  final int episodeNo;
  @override
  final String id;
  @override
  final String title;
  @override
  @JsonKey(name: 'japanese_title')
  final String japaneseTitle;
  @override
  final bool filler;

  /// Create a copy of EpisodeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EpisodeModelCopyWith<_EpisodeModel> get copyWith =>
      __$EpisodeModelCopyWithImpl<_EpisodeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$EpisodeModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EpisodeModel &&
            (identical(other.episodeNo, episodeNo) ||
                other.episodeNo == episodeNo) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.japaneseTitle, japaneseTitle) ||
                other.japaneseTitle == japaneseTitle) &&
            (identical(other.filler, filler) || other.filler == filler));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, episodeNo, id, title, japaneseTitle, filler);

  @override
  String toString() {
    return 'EpisodeModel(episodeNo: $episodeNo, id: $id, title: $title, japaneseTitle: $japaneseTitle, filler: $filler)';
  }
}

/// @nodoc
abstract mixin class _$EpisodeModelCopyWith<$Res>
    implements $EpisodeModelCopyWith<$Res> {
  factory _$EpisodeModelCopyWith(
          _EpisodeModel value, $Res Function(_EpisodeModel) _then) =
      __$EpisodeModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'episode_no') int episodeNo,
      String id,
      String title,
      @JsonKey(name: 'japanese_title') String japaneseTitle,
      bool filler});
}

/// @nodoc
class __$EpisodeModelCopyWithImpl<$Res>
    implements _$EpisodeModelCopyWith<$Res> {
  __$EpisodeModelCopyWithImpl(this._self, this._then);

  final _EpisodeModel _self;
  final $Res Function(_EpisodeModel) _then;

  /// Create a copy of EpisodeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? episodeNo = null,
    Object? id = null,
    Object? title = null,
    Object? japaneseTitle = null,
    Object? filler = null,
  }) {
    return _then(_EpisodeModel(
      episodeNo: null == episodeNo
          ? _self.episodeNo
          : episodeNo // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      japaneseTitle: null == japaneseTitle
          ? _self.japaneseTitle
          : japaneseTitle // ignore: cast_nullable_to_non_nullable
              as String,
      filler: null == filler
          ? _self.filler
          : filler // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
