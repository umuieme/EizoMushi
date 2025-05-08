// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeDataModel {
  List<AnimeInfoHomeModel> get spotlights;
  List<AnimeInfoHomeModel> get topAiring;
  List<AnimeInfoHomeModel> get latestEpisode;
  List<AnimeInfoHomeModel> get latestCompleted;
  List<AnimeInfoHomeModel> get recentlyAdded;

  /// Create a copy of HomeDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeDataModelCopyWith<HomeDataModel> get copyWith =>
      _$HomeDataModelCopyWithImpl<HomeDataModel>(
          this as HomeDataModel, _$identity);

  /// Serializes this HomeDataModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeDataModel &&
            const DeepCollectionEquality()
                .equals(other.spotlights, spotlights) &&
            const DeepCollectionEquality().equals(other.topAiring, topAiring) &&
            const DeepCollectionEquality()
                .equals(other.latestEpisode, latestEpisode) &&
            const DeepCollectionEquality()
                .equals(other.latestCompleted, latestCompleted) &&
            const DeepCollectionEquality()
                .equals(other.recentlyAdded, recentlyAdded));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(spotlights),
      const DeepCollectionEquality().hash(topAiring),
      const DeepCollectionEquality().hash(latestEpisode),
      const DeepCollectionEquality().hash(latestCompleted),
      const DeepCollectionEquality().hash(recentlyAdded));

  @override
  String toString() {
    return 'HomeDataModel(spotlights: $spotlights, topAiring: $topAiring, latestEpisode: $latestEpisode, latestCompleted: $latestCompleted, recentlyAdded: $recentlyAdded)';
  }
}

/// @nodoc
abstract mixin class $HomeDataModelCopyWith<$Res> {
  factory $HomeDataModelCopyWith(
          HomeDataModel value, $Res Function(HomeDataModel) _then) =
      _$HomeDataModelCopyWithImpl;
  @useResult
  $Res call(
      {List<AnimeInfoHomeModel> spotlights,
      List<AnimeInfoHomeModel> topAiring,
      List<AnimeInfoHomeModel> latestEpisode,
      List<AnimeInfoHomeModel> latestCompleted,
      List<AnimeInfoHomeModel> recentlyAdded});
}

/// @nodoc
class _$HomeDataModelCopyWithImpl<$Res>
    implements $HomeDataModelCopyWith<$Res> {
  _$HomeDataModelCopyWithImpl(this._self, this._then);

  final HomeDataModel _self;
  final $Res Function(HomeDataModel) _then;

  /// Create a copy of HomeDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spotlights = null,
    Object? topAiring = null,
    Object? latestEpisode = null,
    Object? latestCompleted = null,
    Object? recentlyAdded = null,
  }) {
    return _then(_self.copyWith(
      spotlights: null == spotlights
          ? _self.spotlights
          : spotlights // ignore: cast_nullable_to_non_nullable
              as List<AnimeInfoHomeModel>,
      topAiring: null == topAiring
          ? _self.topAiring
          : topAiring // ignore: cast_nullable_to_non_nullable
              as List<AnimeInfoHomeModel>,
      latestEpisode: null == latestEpisode
          ? _self.latestEpisode
          : latestEpisode // ignore: cast_nullable_to_non_nullable
              as List<AnimeInfoHomeModel>,
      latestCompleted: null == latestCompleted
          ? _self.latestCompleted
          : latestCompleted // ignore: cast_nullable_to_non_nullable
              as List<AnimeInfoHomeModel>,
      recentlyAdded: null == recentlyAdded
          ? _self.recentlyAdded
          : recentlyAdded // ignore: cast_nullable_to_non_nullable
              as List<AnimeInfoHomeModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _HomeDataModel implements HomeDataModel {
  _HomeDataModel(
      {required final List<AnimeInfoHomeModel> spotlights,
      required final List<AnimeInfoHomeModel> topAiring,
      required final List<AnimeInfoHomeModel> latestEpisode,
      required final List<AnimeInfoHomeModel> latestCompleted,
      required final List<AnimeInfoHomeModel> recentlyAdded})
      : _spotlights = spotlights,
        _topAiring = topAiring,
        _latestEpisode = latestEpisode,
        _latestCompleted = latestCompleted,
        _recentlyAdded = recentlyAdded;
  factory _HomeDataModel.fromJson(Map<String, dynamic> json) =>
      _$HomeDataModelFromJson(json);

  final List<AnimeInfoHomeModel> _spotlights;
  @override
  List<AnimeInfoHomeModel> get spotlights {
    if (_spotlights is EqualUnmodifiableListView) return _spotlights;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_spotlights);
  }

  final List<AnimeInfoHomeModel> _topAiring;
  @override
  List<AnimeInfoHomeModel> get topAiring {
    if (_topAiring is EqualUnmodifiableListView) return _topAiring;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topAiring);
  }

  final List<AnimeInfoHomeModel> _latestEpisode;
  @override
  List<AnimeInfoHomeModel> get latestEpisode {
    if (_latestEpisode is EqualUnmodifiableListView) return _latestEpisode;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_latestEpisode);
  }

  final List<AnimeInfoHomeModel> _latestCompleted;
  @override
  List<AnimeInfoHomeModel> get latestCompleted {
    if (_latestCompleted is EqualUnmodifiableListView) return _latestCompleted;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_latestCompleted);
  }

  final List<AnimeInfoHomeModel> _recentlyAdded;
  @override
  List<AnimeInfoHomeModel> get recentlyAdded {
    if (_recentlyAdded is EqualUnmodifiableListView) return _recentlyAdded;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recentlyAdded);
  }

  /// Create a copy of HomeDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$HomeDataModelCopyWith<_HomeDataModel> get copyWith =>
      __$HomeDataModelCopyWithImpl<_HomeDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$HomeDataModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeDataModel &&
            const DeepCollectionEquality()
                .equals(other._spotlights, _spotlights) &&
            const DeepCollectionEquality()
                .equals(other._topAiring, _topAiring) &&
            const DeepCollectionEquality()
                .equals(other._latestEpisode, _latestEpisode) &&
            const DeepCollectionEquality()
                .equals(other._latestCompleted, _latestCompleted) &&
            const DeepCollectionEquality()
                .equals(other._recentlyAdded, _recentlyAdded));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_spotlights),
      const DeepCollectionEquality().hash(_topAiring),
      const DeepCollectionEquality().hash(_latestEpisode),
      const DeepCollectionEquality().hash(_latestCompleted),
      const DeepCollectionEquality().hash(_recentlyAdded));

  @override
  String toString() {
    return 'HomeDataModel(spotlights: $spotlights, topAiring: $topAiring, latestEpisode: $latestEpisode, latestCompleted: $latestCompleted, recentlyAdded: $recentlyAdded)';
  }
}

/// @nodoc
abstract mixin class _$HomeDataModelCopyWith<$Res>
    implements $HomeDataModelCopyWith<$Res> {
  factory _$HomeDataModelCopyWith(
          _HomeDataModel value, $Res Function(_HomeDataModel) _then) =
      __$HomeDataModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<AnimeInfoHomeModel> spotlights,
      List<AnimeInfoHomeModel> topAiring,
      List<AnimeInfoHomeModel> latestEpisode,
      List<AnimeInfoHomeModel> latestCompleted,
      List<AnimeInfoHomeModel> recentlyAdded});
}

/// @nodoc
class __$HomeDataModelCopyWithImpl<$Res>
    implements _$HomeDataModelCopyWith<$Res> {
  __$HomeDataModelCopyWithImpl(this._self, this._then);

  final _HomeDataModel _self;
  final $Res Function(_HomeDataModel) _then;

  /// Create a copy of HomeDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? spotlights = null,
    Object? topAiring = null,
    Object? latestEpisode = null,
    Object? latestCompleted = null,
    Object? recentlyAdded = null,
  }) {
    return _then(_HomeDataModel(
      spotlights: null == spotlights
          ? _self._spotlights
          : spotlights // ignore: cast_nullable_to_non_nullable
              as List<AnimeInfoHomeModel>,
      topAiring: null == topAiring
          ? _self._topAiring
          : topAiring // ignore: cast_nullable_to_non_nullable
              as List<AnimeInfoHomeModel>,
      latestEpisode: null == latestEpisode
          ? _self._latestEpisode
          : latestEpisode // ignore: cast_nullable_to_non_nullable
              as List<AnimeInfoHomeModel>,
      latestCompleted: null == latestCompleted
          ? _self._latestCompleted
          : latestCompleted // ignore: cast_nullable_to_non_nullable
              as List<AnimeInfoHomeModel>,
      recentlyAdded: null == recentlyAdded
          ? _self._recentlyAdded
          : recentlyAdded // ignore: cast_nullable_to_non_nullable
              as List<AnimeInfoHomeModel>,
    ));
  }
}

/// @nodoc
mixin _$AnimeInfoHomeModel {
  String get id;
  @JsonKey(name: 'data_id')
  String get dataId;
  String get poster;
  String get title;
  @JsonKey(name: 'japanese_title')
  String get japaneseTitle;
  String get description;
  TvInfoModel? get tvInfo;

  /// Create a copy of AnimeInfoHomeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AnimeInfoHomeModelCopyWith<AnimeInfoHomeModel> get copyWith =>
      _$AnimeInfoHomeModelCopyWithImpl<AnimeInfoHomeModel>(
          this as AnimeInfoHomeModel, _$identity);

  /// Serializes this AnimeInfoHomeModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AnimeInfoHomeModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.dataId, dataId) || other.dataId == dataId) &&
            (identical(other.poster, poster) || other.poster == poster) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.japaneseTitle, japaneseTitle) ||
                other.japaneseTitle == japaneseTitle) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.tvInfo, tvInfo) || other.tvInfo == tvInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, dataId, poster, title,
      japaneseTitle, description, tvInfo);

  @override
  String toString() {
    return 'AnimeInfoHomeModel(id: $id, dataId: $dataId, poster: $poster, title: $title, japaneseTitle: $japaneseTitle, description: $description, tvInfo: $tvInfo)';
  }
}

/// @nodoc
abstract mixin class $AnimeInfoHomeModelCopyWith<$Res> {
  factory $AnimeInfoHomeModelCopyWith(
          AnimeInfoHomeModel value, $Res Function(AnimeInfoHomeModel) _then) =
      _$AnimeInfoHomeModelCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'data_id') String dataId,
      String poster,
      String title,
      @JsonKey(name: 'japanese_title') String japaneseTitle,
      String description,
      TvInfoModel? tvInfo});

  $TvInfoModelCopyWith<$Res>? get tvInfo;
}

/// @nodoc
class _$AnimeInfoHomeModelCopyWithImpl<$Res>
    implements $AnimeInfoHomeModelCopyWith<$Res> {
  _$AnimeInfoHomeModelCopyWithImpl(this._self, this._then);

  final AnimeInfoHomeModel _self;
  final $Res Function(AnimeInfoHomeModel) _then;

  /// Create a copy of AnimeInfoHomeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? dataId = null,
    Object? poster = null,
    Object? title = null,
    Object? japaneseTitle = null,
    Object? description = null,
    Object? tvInfo = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      dataId: null == dataId
          ? _self.dataId
          : dataId // ignore: cast_nullable_to_non_nullable
              as String,
      poster: null == poster
          ? _self.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      japaneseTitle: null == japaneseTitle
          ? _self.japaneseTitle
          : japaneseTitle // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      tvInfo: freezed == tvInfo
          ? _self.tvInfo
          : tvInfo // ignore: cast_nullable_to_non_nullable
              as TvInfoModel?,
    ));
  }

  /// Create a copy of AnimeInfoHomeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TvInfoModelCopyWith<$Res>? get tvInfo {
    if (_self.tvInfo == null) {
      return null;
    }

    return $TvInfoModelCopyWith<$Res>(_self.tvInfo!, (value) {
      return _then(_self.copyWith(tvInfo: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _AnimeInfoHomeModel implements AnimeInfoHomeModel {
  const _AnimeInfoHomeModel(
      {required this.id,
      @JsonKey(name: 'data_id') required this.dataId,
      required this.poster,
      required this.title,
      @JsonKey(name: 'japanese_title') required this.japaneseTitle,
      required this.description,
      this.tvInfo});
  factory _AnimeInfoHomeModel.fromJson(Map<String, dynamic> json) =>
      _$AnimeInfoHomeModelFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'data_id')
  final String dataId;
  @override
  final String poster;
  @override
  final String title;
  @override
  @JsonKey(name: 'japanese_title')
  final String japaneseTitle;
  @override
  final String description;
  @override
  final TvInfoModel? tvInfo;

  /// Create a copy of AnimeInfoHomeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AnimeInfoHomeModelCopyWith<_AnimeInfoHomeModel> get copyWith =>
      __$AnimeInfoHomeModelCopyWithImpl<_AnimeInfoHomeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AnimeInfoHomeModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AnimeInfoHomeModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.dataId, dataId) || other.dataId == dataId) &&
            (identical(other.poster, poster) || other.poster == poster) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.japaneseTitle, japaneseTitle) ||
                other.japaneseTitle == japaneseTitle) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.tvInfo, tvInfo) || other.tvInfo == tvInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, dataId, poster, title,
      japaneseTitle, description, tvInfo);

  @override
  String toString() {
    return 'AnimeInfoHomeModel(id: $id, dataId: $dataId, poster: $poster, title: $title, japaneseTitle: $japaneseTitle, description: $description, tvInfo: $tvInfo)';
  }
}

/// @nodoc
abstract mixin class _$AnimeInfoHomeModelCopyWith<$Res>
    implements $AnimeInfoHomeModelCopyWith<$Res> {
  factory _$AnimeInfoHomeModelCopyWith(
          _AnimeInfoHomeModel value, $Res Function(_AnimeInfoHomeModel) _then) =
      __$AnimeInfoHomeModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'data_id') String dataId,
      String poster,
      String title,
      @JsonKey(name: 'japanese_title') String japaneseTitle,
      String description,
      TvInfoModel? tvInfo});

  @override
  $TvInfoModelCopyWith<$Res>? get tvInfo;
}

/// @nodoc
class __$AnimeInfoHomeModelCopyWithImpl<$Res>
    implements _$AnimeInfoHomeModelCopyWith<$Res> {
  __$AnimeInfoHomeModelCopyWithImpl(this._self, this._then);

  final _AnimeInfoHomeModel _self;
  final $Res Function(_AnimeInfoHomeModel) _then;

  /// Create a copy of AnimeInfoHomeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? dataId = null,
    Object? poster = null,
    Object? title = null,
    Object? japaneseTitle = null,
    Object? description = null,
    Object? tvInfo = freezed,
  }) {
    return _then(_AnimeInfoHomeModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      dataId: null == dataId
          ? _self.dataId
          : dataId // ignore: cast_nullable_to_non_nullable
              as String,
      poster: null == poster
          ? _self.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      japaneseTitle: null == japaneseTitle
          ? _self.japaneseTitle
          : japaneseTitle // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      tvInfo: freezed == tvInfo
          ? _self.tvInfo
          : tvInfo // ignore: cast_nullable_to_non_nullable
              as TvInfoModel?,
    ));
  }

  /// Create a copy of AnimeInfoHomeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TvInfoModelCopyWith<$Res>? get tvInfo {
    if (_self.tvInfo == null) {
      return null;
    }

    return $TvInfoModelCopyWith<$Res>(_self.tvInfo!, (value) {
      return _then(_self.copyWith(tvInfo: value));
    });
  }
}

/// @nodoc
mixin _$TvInfoModel {
  String get showType;
  String get duration;
  String? get releaseDate;
  String? get quality;
  EpisodeInfoModel? get episodeInfo;
  String? get sub;
  String? get dub;

  /// Create a copy of TvInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TvInfoModelCopyWith<TvInfoModel> get copyWith =>
      _$TvInfoModelCopyWithImpl<TvInfoModel>(this as TvInfoModel, _$identity);

  /// Serializes this TvInfoModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TvInfoModel &&
            (identical(other.showType, showType) ||
                other.showType == showType) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.quality, quality) || other.quality == quality) &&
            (identical(other.episodeInfo, episodeInfo) ||
                other.episodeInfo == episodeInfo) &&
            (identical(other.sub, sub) || other.sub == sub) &&
            (identical(other.dub, dub) || other.dub == dub));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, showType, duration, releaseDate,
      quality, episodeInfo, sub, dub);

  @override
  String toString() {
    return 'TvInfoModel(showType: $showType, duration: $duration, releaseDate: $releaseDate, quality: $quality, episodeInfo: $episodeInfo, sub: $sub, dub: $dub)';
  }
}

/// @nodoc
abstract mixin class $TvInfoModelCopyWith<$Res> {
  factory $TvInfoModelCopyWith(
          TvInfoModel value, $Res Function(TvInfoModel) _then) =
      _$TvInfoModelCopyWithImpl;
  @useResult
  $Res call(
      {String showType,
      String duration,
      String? releaseDate,
      String? quality,
      EpisodeInfoModel? episodeInfo,
      String? sub,
      String? dub});

  $EpisodeInfoModelCopyWith<$Res>? get episodeInfo;
}

/// @nodoc
class _$TvInfoModelCopyWithImpl<$Res> implements $TvInfoModelCopyWith<$Res> {
  _$TvInfoModelCopyWithImpl(this._self, this._then);

  final TvInfoModel _self;
  final $Res Function(TvInfoModel) _then;

  /// Create a copy of TvInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showType = null,
    Object? duration = null,
    Object? releaseDate = freezed,
    Object? quality = freezed,
    Object? episodeInfo = freezed,
    Object? sub = freezed,
    Object? dub = freezed,
  }) {
    return _then(_self.copyWith(
      showType: null == showType
          ? _self.showType
          : showType // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _self.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: freezed == releaseDate
          ? _self.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      quality: freezed == quality
          ? _self.quality
          : quality // ignore: cast_nullable_to_non_nullable
              as String?,
      episodeInfo: freezed == episodeInfo
          ? _self.episodeInfo
          : episodeInfo // ignore: cast_nullable_to_non_nullable
              as EpisodeInfoModel?,
      sub: freezed == sub
          ? _self.sub
          : sub // ignore: cast_nullable_to_non_nullable
              as String?,
      dub: freezed == dub
          ? _self.dub
          : dub // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of TvInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EpisodeInfoModelCopyWith<$Res>? get episodeInfo {
    if (_self.episodeInfo == null) {
      return null;
    }

    return $EpisodeInfoModelCopyWith<$Res>(_self.episodeInfo!, (value) {
      return _then(_self.copyWith(episodeInfo: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _TvInfoModel extends TvInfoModel {
  const _TvInfoModel(
      {required this.showType,
      required this.duration,
      required this.releaseDate,
      required this.quality,
      required this.episodeInfo,
      this.sub,
      this.dub})
      : super._();
  factory _TvInfoModel.fromJson(Map<String, dynamic> json) =>
      _$TvInfoModelFromJson(json);

  @override
  final String showType;
  @override
  final String duration;
  @override
  final String? releaseDate;
  @override
  final String? quality;
  @override
  final EpisodeInfoModel? episodeInfo;
  @override
  final String? sub;
  @override
  final String? dub;

  /// Create a copy of TvInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TvInfoModelCopyWith<_TvInfoModel> get copyWith =>
      __$TvInfoModelCopyWithImpl<_TvInfoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TvInfoModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TvInfoModel &&
            (identical(other.showType, showType) ||
                other.showType == showType) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.quality, quality) || other.quality == quality) &&
            (identical(other.episodeInfo, episodeInfo) ||
                other.episodeInfo == episodeInfo) &&
            (identical(other.sub, sub) || other.sub == sub) &&
            (identical(other.dub, dub) || other.dub == dub));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, showType, duration, releaseDate,
      quality, episodeInfo, sub, dub);

  @override
  String toString() {
    return 'TvInfoModel(showType: $showType, duration: $duration, releaseDate: $releaseDate, quality: $quality, episodeInfo: $episodeInfo, sub: $sub, dub: $dub)';
  }
}

/// @nodoc
abstract mixin class _$TvInfoModelCopyWith<$Res>
    implements $TvInfoModelCopyWith<$Res> {
  factory _$TvInfoModelCopyWith(
          _TvInfoModel value, $Res Function(_TvInfoModel) _then) =
      __$TvInfoModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String showType,
      String duration,
      String? releaseDate,
      String? quality,
      EpisodeInfoModel? episodeInfo,
      String? sub,
      String? dub});

  @override
  $EpisodeInfoModelCopyWith<$Res>? get episodeInfo;
}

/// @nodoc
class __$TvInfoModelCopyWithImpl<$Res> implements _$TvInfoModelCopyWith<$Res> {
  __$TvInfoModelCopyWithImpl(this._self, this._then);

  final _TvInfoModel _self;
  final $Res Function(_TvInfoModel) _then;

  /// Create a copy of TvInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? showType = null,
    Object? duration = null,
    Object? releaseDate = freezed,
    Object? quality = freezed,
    Object? episodeInfo = freezed,
    Object? sub = freezed,
    Object? dub = freezed,
  }) {
    return _then(_TvInfoModel(
      showType: null == showType
          ? _self.showType
          : showType // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _self.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: freezed == releaseDate
          ? _self.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      quality: freezed == quality
          ? _self.quality
          : quality // ignore: cast_nullable_to_non_nullable
              as String?,
      episodeInfo: freezed == episodeInfo
          ? _self.episodeInfo
          : episodeInfo // ignore: cast_nullable_to_non_nullable
              as EpisodeInfoModel?,
      sub: freezed == sub
          ? _self.sub
          : sub // ignore: cast_nullable_to_non_nullable
              as String?,
      dub: freezed == dub
          ? _self.dub
          : dub // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of TvInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EpisodeInfoModelCopyWith<$Res>? get episodeInfo {
    if (_self.episodeInfo == null) {
      return null;
    }

    return $EpisodeInfoModelCopyWith<$Res>(_self.episodeInfo!, (value) {
      return _then(_self.copyWith(episodeInfo: value));
    });
  }
}

/// @nodoc
mixin _$EpisodeInfoModel {
  String get sub;
  String get dub;

  /// Create a copy of EpisodeInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EpisodeInfoModelCopyWith<EpisodeInfoModel> get copyWith =>
      _$EpisodeInfoModelCopyWithImpl<EpisodeInfoModel>(
          this as EpisodeInfoModel, _$identity);

  /// Serializes this EpisodeInfoModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EpisodeInfoModel &&
            (identical(other.sub, sub) || other.sub == sub) &&
            (identical(other.dub, dub) || other.dub == dub));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sub, dub);

  @override
  String toString() {
    return 'EpisodeInfoModel(sub: $sub, dub: $dub)';
  }
}

/// @nodoc
abstract mixin class $EpisodeInfoModelCopyWith<$Res> {
  factory $EpisodeInfoModelCopyWith(
          EpisodeInfoModel value, $Res Function(EpisodeInfoModel) _then) =
      _$EpisodeInfoModelCopyWithImpl;
  @useResult
  $Res call({String sub, String dub});
}

/// @nodoc
class _$EpisodeInfoModelCopyWithImpl<$Res>
    implements $EpisodeInfoModelCopyWith<$Res> {
  _$EpisodeInfoModelCopyWithImpl(this._self, this._then);

  final EpisodeInfoModel _self;
  final $Res Function(EpisodeInfoModel) _then;

  /// Create a copy of EpisodeInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sub = null,
    Object? dub = null,
  }) {
    return _then(_self.copyWith(
      sub: null == sub
          ? _self.sub
          : sub // ignore: cast_nullable_to_non_nullable
              as String,
      dub: null == dub
          ? _self.dub
          : dub // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _EpisodeInfoModel implements EpisodeInfoModel {
  const _EpisodeInfoModel({required this.sub, required this.dub});
  factory _EpisodeInfoModel.fromJson(Map<String, dynamic> json) =>
      _$EpisodeInfoModelFromJson(json);

  @override
  final String sub;
  @override
  final String dub;

  /// Create a copy of EpisodeInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EpisodeInfoModelCopyWith<_EpisodeInfoModel> get copyWith =>
      __$EpisodeInfoModelCopyWithImpl<_EpisodeInfoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$EpisodeInfoModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EpisodeInfoModel &&
            (identical(other.sub, sub) || other.sub == sub) &&
            (identical(other.dub, dub) || other.dub == dub));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sub, dub);

  @override
  String toString() {
    return 'EpisodeInfoModel(sub: $sub, dub: $dub)';
  }
}

/// @nodoc
abstract mixin class _$EpisodeInfoModelCopyWith<$Res>
    implements $EpisodeInfoModelCopyWith<$Res> {
  factory _$EpisodeInfoModelCopyWith(
          _EpisodeInfoModel value, $Res Function(_EpisodeInfoModel) _then) =
      __$EpisodeInfoModelCopyWithImpl;
  @override
  @useResult
  $Res call({String sub, String dub});
}

/// @nodoc
class __$EpisodeInfoModelCopyWithImpl<$Res>
    implements _$EpisodeInfoModelCopyWith<$Res> {
  __$EpisodeInfoModelCopyWithImpl(this._self, this._then);

  final _EpisodeInfoModel _self;
  final $Res Function(_EpisodeInfoModel) _then;

  /// Create a copy of EpisodeInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? sub = null,
    Object? dub = null,
  }) {
    return _then(_EpisodeInfoModel(
      sub: null == sub
          ? _self.sub
          : sub // ignore: cast_nullable_to_non_nullable
              as String,
      dub: null == dub
          ? _self.dub
          : dub // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
