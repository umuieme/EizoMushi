// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'anime_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AnimeDetailModel {
  bool get adultContent;
  String get dataId;
  String get id;
  String get title;
  String get japaneseTitle;
  String get poster;
  String get showType;
  AnimeInfoModel get animeInfo;

  /// Create a copy of AnimeDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AnimeDetailModelCopyWith<AnimeDetailModel> get copyWith =>
      _$AnimeDetailModelCopyWithImpl<AnimeDetailModel>(
          this as AnimeDetailModel, _$identity);

  /// Serializes this AnimeDetailModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AnimeDetailModel &&
            (identical(other.adultContent, adultContent) ||
                other.adultContent == adultContent) &&
            (identical(other.dataId, dataId) || other.dataId == dataId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.japaneseTitle, japaneseTitle) ||
                other.japaneseTitle == japaneseTitle) &&
            (identical(other.poster, poster) || other.poster == poster) &&
            (identical(other.showType, showType) ||
                other.showType == showType) &&
            (identical(other.animeInfo, animeInfo) ||
                other.animeInfo == animeInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, adultContent, dataId, id, title,
      japaneseTitle, poster, showType, animeInfo);

  @override
  String toString() {
    return 'AnimeDetailModel(adultContent: $adultContent, dataId: $dataId, id: $id, title: $title, japaneseTitle: $japaneseTitle, poster: $poster, showType: $showType, animeInfo: $animeInfo)';
  }
}

/// @nodoc
abstract mixin class $AnimeDetailModelCopyWith<$Res> {
  factory $AnimeDetailModelCopyWith(
          AnimeDetailModel value, $Res Function(AnimeDetailModel) _then) =
      _$AnimeDetailModelCopyWithImpl;
  @useResult
  $Res call(
      {bool adultContent,
      String dataId,
      String id,
      String title,
      String japaneseTitle,
      String poster,
      String showType,
      AnimeInfoModel animeInfo});

  $AnimeInfoModelCopyWith<$Res> get animeInfo;
}

/// @nodoc
class _$AnimeDetailModelCopyWithImpl<$Res>
    implements $AnimeDetailModelCopyWith<$Res> {
  _$AnimeDetailModelCopyWithImpl(this._self, this._then);

  final AnimeDetailModel _self;
  final $Res Function(AnimeDetailModel) _then;

  /// Create a copy of AnimeDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adultContent = null,
    Object? dataId = null,
    Object? id = null,
    Object? title = null,
    Object? japaneseTitle = null,
    Object? poster = null,
    Object? showType = null,
    Object? animeInfo = null,
  }) {
    return _then(_self.copyWith(
      adultContent: null == adultContent
          ? _self.adultContent
          : adultContent // ignore: cast_nullable_to_non_nullable
              as bool,
      dataId: null == dataId
          ? _self.dataId
          : dataId // ignore: cast_nullable_to_non_nullable
              as String,
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
      poster: null == poster
          ? _self.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as String,
      showType: null == showType
          ? _self.showType
          : showType // ignore: cast_nullable_to_non_nullable
              as String,
      animeInfo: null == animeInfo
          ? _self.animeInfo
          : animeInfo // ignore: cast_nullable_to_non_nullable
              as AnimeInfoModel,
    ));
  }

  /// Create a copy of AnimeDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AnimeInfoModelCopyWith<$Res> get animeInfo {
    return $AnimeInfoModelCopyWith<$Res>(_self.animeInfo, (value) {
      return _then(_self.copyWith(animeInfo: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _AnimeDetailModel implements AnimeDetailModel {
  const _AnimeDetailModel(
      {required this.adultContent,
      required this.dataId,
      required this.id,
      required this.title,
      required this.japaneseTitle,
      required this.poster,
      required this.showType,
      required this.animeInfo});
  factory _AnimeDetailModel.fromJson(Map<String, dynamic> json) =>
      _$AnimeDetailModelFromJson(json);

  @override
  final bool adultContent;
  @override
  final String dataId;
  @override
  final String id;
  @override
  final String title;
  @override
  final String japaneseTitle;
  @override
  final String poster;
  @override
  final String showType;
  @override
  final AnimeInfoModel animeInfo;

  /// Create a copy of AnimeDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AnimeDetailModelCopyWith<_AnimeDetailModel> get copyWith =>
      __$AnimeDetailModelCopyWithImpl<_AnimeDetailModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AnimeDetailModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AnimeDetailModel &&
            (identical(other.adultContent, adultContent) ||
                other.adultContent == adultContent) &&
            (identical(other.dataId, dataId) || other.dataId == dataId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.japaneseTitle, japaneseTitle) ||
                other.japaneseTitle == japaneseTitle) &&
            (identical(other.poster, poster) || other.poster == poster) &&
            (identical(other.showType, showType) ||
                other.showType == showType) &&
            (identical(other.animeInfo, animeInfo) ||
                other.animeInfo == animeInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, adultContent, dataId, id, title,
      japaneseTitle, poster, showType, animeInfo);

  @override
  String toString() {
    return 'AnimeDetailModel(adultContent: $adultContent, dataId: $dataId, id: $id, title: $title, japaneseTitle: $japaneseTitle, poster: $poster, showType: $showType, animeInfo: $animeInfo)';
  }
}

/// @nodoc
abstract mixin class _$AnimeDetailModelCopyWith<$Res>
    implements $AnimeDetailModelCopyWith<$Res> {
  factory _$AnimeDetailModelCopyWith(
          _AnimeDetailModel value, $Res Function(_AnimeDetailModel) _then) =
      __$AnimeDetailModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool adultContent,
      String dataId,
      String id,
      String title,
      String japaneseTitle,
      String poster,
      String showType,
      AnimeInfoModel animeInfo});

  @override
  $AnimeInfoModelCopyWith<$Res> get animeInfo;
}

/// @nodoc
class __$AnimeDetailModelCopyWithImpl<$Res>
    implements _$AnimeDetailModelCopyWith<$Res> {
  __$AnimeDetailModelCopyWithImpl(this._self, this._then);

  final _AnimeDetailModel _self;
  final $Res Function(_AnimeDetailModel) _then;

  /// Create a copy of AnimeDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? adultContent = null,
    Object? dataId = null,
    Object? id = null,
    Object? title = null,
    Object? japaneseTitle = null,
    Object? poster = null,
    Object? showType = null,
    Object? animeInfo = null,
  }) {
    return _then(_AnimeDetailModel(
      adultContent: null == adultContent
          ? _self.adultContent
          : adultContent // ignore: cast_nullable_to_non_nullable
              as bool,
      dataId: null == dataId
          ? _self.dataId
          : dataId // ignore: cast_nullable_to_non_nullable
              as String,
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
      poster: null == poster
          ? _self.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as String,
      showType: null == showType
          ? _self.showType
          : showType // ignore: cast_nullable_to_non_nullable
              as String,
      animeInfo: null == animeInfo
          ? _self.animeInfo
          : animeInfo // ignore: cast_nullable_to_non_nullable
              as AnimeInfoModel,
    ));
  }

  /// Create a copy of AnimeDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AnimeInfoModelCopyWith<$Res> get animeInfo {
    return $AnimeInfoModelCopyWith<$Res>(_self.animeInfo, (value) {
      return _then(_self.copyWith(animeInfo: value));
    });
  }
}

/// @nodoc
mixin _$AnimeInfoModel {
  @JsonKey(name: 'Overview')
  String get overview;
  @JsonKey(name: 'Japanese')
  String get japanese;
  @JsonKey(name: 'Synonyms')
  String get synonyms;
  @JsonKey(name: 'Aired')
  String get aired;
  @JsonKey(name: 'Premiered')
  String get premiered;
  @JsonKey(name: 'Duration')
  String get duration;
  @JsonKey(name: 'Status')
  String get status;
  @JsonKey(name: 'MAL Score')
  String get malScore;
  @JsonKey(name: 'Genres')
  List<String> get genres;
  @JsonKey(name: 'Studios')
  String get studios;
  @JsonKey(name: 'Producers')
  List<String> get producers;
  TvInfoModel get tvInfo;

  /// Create a copy of AnimeInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AnimeInfoModelCopyWith<AnimeInfoModel> get copyWith =>
      _$AnimeInfoModelCopyWithImpl<AnimeInfoModel>(
          this as AnimeInfoModel, _$identity);

  /// Serializes this AnimeInfoModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AnimeInfoModel &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.japanese, japanese) ||
                other.japanese == japanese) &&
            (identical(other.synonyms, synonyms) ||
                other.synonyms == synonyms) &&
            (identical(other.aired, aired) || other.aired == aired) &&
            (identical(other.premiered, premiered) ||
                other.premiered == premiered) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.malScore, malScore) ||
                other.malScore == malScore) &&
            const DeepCollectionEquality().equals(other.genres, genres) &&
            (identical(other.studios, studios) || other.studios == studios) &&
            const DeepCollectionEquality().equals(other.producers, producers) &&
            (identical(other.tvInfo, tvInfo) || other.tvInfo == tvInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      overview,
      japanese,
      synonyms,
      aired,
      premiered,
      duration,
      status,
      malScore,
      const DeepCollectionEquality().hash(genres),
      studios,
      const DeepCollectionEquality().hash(producers),
      tvInfo);

  @override
  String toString() {
    return 'AnimeInfoModel(overview: $overview, japanese: $japanese, synonyms: $synonyms, aired: $aired, premiered: $premiered, duration: $duration, status: $status, malScore: $malScore, genres: $genres, studios: $studios, producers: $producers, tvInfo: $tvInfo)';
  }
}

/// @nodoc
abstract mixin class $AnimeInfoModelCopyWith<$Res> {
  factory $AnimeInfoModelCopyWith(
          AnimeInfoModel value, $Res Function(AnimeInfoModel) _then) =
      _$AnimeInfoModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'Overview') String overview,
      @JsonKey(name: 'Japanese') String japanese,
      @JsonKey(name: 'Synonyms') String synonyms,
      @JsonKey(name: 'Aired') String aired,
      @JsonKey(name: 'Premiered') String premiered,
      @JsonKey(name: 'Duration') String duration,
      @JsonKey(name: 'Status') String status,
      @JsonKey(name: 'MAL Score') String malScore,
      @JsonKey(name: 'Genres') List<String> genres,
      @JsonKey(name: 'Studios') String studios,
      @JsonKey(name: 'Producers') List<String> producers,
      TvInfoModel tvInfo});

  $TvInfoModelCopyWith<$Res> get tvInfo;
}

/// @nodoc
class _$AnimeInfoModelCopyWithImpl<$Res>
    implements $AnimeInfoModelCopyWith<$Res> {
  _$AnimeInfoModelCopyWithImpl(this._self, this._then);

  final AnimeInfoModel _self;
  final $Res Function(AnimeInfoModel) _then;

  /// Create a copy of AnimeInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? overview = null,
    Object? japanese = null,
    Object? synonyms = null,
    Object? aired = null,
    Object? premiered = null,
    Object? duration = null,
    Object? status = null,
    Object? malScore = null,
    Object? genres = null,
    Object? studios = null,
    Object? producers = null,
    Object? tvInfo = null,
  }) {
    return _then(_self.copyWith(
      overview: null == overview
          ? _self.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      japanese: null == japanese
          ? _self.japanese
          : japanese // ignore: cast_nullable_to_non_nullable
              as String,
      synonyms: null == synonyms
          ? _self.synonyms
          : synonyms // ignore: cast_nullable_to_non_nullable
              as String,
      aired: null == aired
          ? _self.aired
          : aired // ignore: cast_nullable_to_non_nullable
              as String,
      premiered: null == premiered
          ? _self.premiered
          : premiered // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _self.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      malScore: null == malScore
          ? _self.malScore
          : malScore // ignore: cast_nullable_to_non_nullable
              as String,
      genres: null == genres
          ? _self.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>,
      studios: null == studios
          ? _self.studios
          : studios // ignore: cast_nullable_to_non_nullable
              as String,
      producers: null == producers
          ? _self.producers
          : producers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      tvInfo: null == tvInfo
          ? _self.tvInfo
          : tvInfo // ignore: cast_nullable_to_non_nullable
              as TvInfoModel,
    ));
  }

  /// Create a copy of AnimeInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TvInfoModelCopyWith<$Res> get tvInfo {
    return $TvInfoModelCopyWith<$Res>(_self.tvInfo, (value) {
      return _then(_self.copyWith(tvInfo: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _AnimeInfoModel implements AnimeInfoModel {
  const _AnimeInfoModel(
      {@JsonKey(name: 'Overview') required this.overview,
      @JsonKey(name: 'Japanese') required this.japanese,
      @JsonKey(name: 'Synonyms') required this.synonyms,
      @JsonKey(name: 'Aired') required this.aired,
      @JsonKey(name: 'Premiered') required this.premiered,
      @JsonKey(name: 'Duration') required this.duration,
      @JsonKey(name: 'Status') required this.status,
      @JsonKey(name: 'MAL Score') required this.malScore,
      @JsonKey(name: 'Genres') required final List<String> genres,
      @JsonKey(name: 'Studios') required this.studios,
      @JsonKey(name: 'Producers') required final List<String> producers,
      required this.tvInfo})
      : _genres = genres,
        _producers = producers;
  factory _AnimeInfoModel.fromJson(Map<String, dynamic> json) =>
      _$AnimeInfoModelFromJson(json);

  @override
  @JsonKey(name: 'Overview')
  final String overview;
  @override
  @JsonKey(name: 'Japanese')
  final String japanese;
  @override
  @JsonKey(name: 'Synonyms')
  final String synonyms;
  @override
  @JsonKey(name: 'Aired')
  final String aired;
  @override
  @JsonKey(name: 'Premiered')
  final String premiered;
  @override
  @JsonKey(name: 'Duration')
  final String duration;
  @override
  @JsonKey(name: 'Status')
  final String status;
  @override
  @JsonKey(name: 'MAL Score')
  final String malScore;
  final List<String> _genres;
  @override
  @JsonKey(name: 'Genres')
  List<String> get genres {
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  @override
  @JsonKey(name: 'Studios')
  final String studios;
  final List<String> _producers;
  @override
  @JsonKey(name: 'Producers')
  List<String> get producers {
    if (_producers is EqualUnmodifiableListView) return _producers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_producers);
  }

  @override
  final TvInfoModel tvInfo;

  /// Create a copy of AnimeInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AnimeInfoModelCopyWith<_AnimeInfoModel> get copyWith =>
      __$AnimeInfoModelCopyWithImpl<_AnimeInfoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AnimeInfoModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AnimeInfoModel &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.japanese, japanese) ||
                other.japanese == japanese) &&
            (identical(other.synonyms, synonyms) ||
                other.synonyms == synonyms) &&
            (identical(other.aired, aired) || other.aired == aired) &&
            (identical(other.premiered, premiered) ||
                other.premiered == premiered) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.malScore, malScore) ||
                other.malScore == malScore) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            (identical(other.studios, studios) || other.studios == studios) &&
            const DeepCollectionEquality()
                .equals(other._producers, _producers) &&
            (identical(other.tvInfo, tvInfo) || other.tvInfo == tvInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      overview,
      japanese,
      synonyms,
      aired,
      premiered,
      duration,
      status,
      malScore,
      const DeepCollectionEquality().hash(_genres),
      studios,
      const DeepCollectionEquality().hash(_producers),
      tvInfo);

  @override
  String toString() {
    return 'AnimeInfoModel(overview: $overview, japanese: $japanese, synonyms: $synonyms, aired: $aired, premiered: $premiered, duration: $duration, status: $status, malScore: $malScore, genres: $genres, studios: $studios, producers: $producers, tvInfo: $tvInfo)';
  }
}

/// @nodoc
abstract mixin class _$AnimeInfoModelCopyWith<$Res>
    implements $AnimeInfoModelCopyWith<$Res> {
  factory _$AnimeInfoModelCopyWith(
          _AnimeInfoModel value, $Res Function(_AnimeInfoModel) _then) =
      __$AnimeInfoModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Overview') String overview,
      @JsonKey(name: 'Japanese') String japanese,
      @JsonKey(name: 'Synonyms') String synonyms,
      @JsonKey(name: 'Aired') String aired,
      @JsonKey(name: 'Premiered') String premiered,
      @JsonKey(name: 'Duration') String duration,
      @JsonKey(name: 'Status') String status,
      @JsonKey(name: 'MAL Score') String malScore,
      @JsonKey(name: 'Genres') List<String> genres,
      @JsonKey(name: 'Studios') String studios,
      @JsonKey(name: 'Producers') List<String> producers,
      TvInfoModel tvInfo});

  @override
  $TvInfoModelCopyWith<$Res> get tvInfo;
}

/// @nodoc
class __$AnimeInfoModelCopyWithImpl<$Res>
    implements _$AnimeInfoModelCopyWith<$Res> {
  __$AnimeInfoModelCopyWithImpl(this._self, this._then);

  final _AnimeInfoModel _self;
  final $Res Function(_AnimeInfoModel) _then;

  /// Create a copy of AnimeInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? overview = null,
    Object? japanese = null,
    Object? synonyms = null,
    Object? aired = null,
    Object? premiered = null,
    Object? duration = null,
    Object? status = null,
    Object? malScore = null,
    Object? genres = null,
    Object? studios = null,
    Object? producers = null,
    Object? tvInfo = null,
  }) {
    return _then(_AnimeInfoModel(
      overview: null == overview
          ? _self.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      japanese: null == japanese
          ? _self.japanese
          : japanese // ignore: cast_nullable_to_non_nullable
              as String,
      synonyms: null == synonyms
          ? _self.synonyms
          : synonyms // ignore: cast_nullable_to_non_nullable
              as String,
      aired: null == aired
          ? _self.aired
          : aired // ignore: cast_nullable_to_non_nullable
              as String,
      premiered: null == premiered
          ? _self.premiered
          : premiered // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _self.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      malScore: null == malScore
          ? _self.malScore
          : malScore // ignore: cast_nullable_to_non_nullable
              as String,
      genres: null == genres
          ? _self._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>,
      studios: null == studios
          ? _self.studios
          : studios // ignore: cast_nullable_to_non_nullable
              as String,
      producers: null == producers
          ? _self._producers
          : producers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      tvInfo: null == tvInfo
          ? _self.tvInfo
          : tvInfo // ignore: cast_nullable_to_non_nullable
              as TvInfoModel,
    ));
  }

  /// Create a copy of AnimeInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TvInfoModelCopyWith<$Res> get tvInfo {
    return $TvInfoModelCopyWith<$Res>(_self.tvInfo, (value) {
      return _then(_self.copyWith(tvInfo: value));
    });
  }
}

/// @nodoc
mixin _$TvInfoModel {
  String get rating;
  String get quality;
  String get sub;
  String get dub;
  String get showType;
  String get duration;

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
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.quality, quality) || other.quality == quality) &&
            (identical(other.sub, sub) || other.sub == sub) &&
            (identical(other.dub, dub) || other.dub == dub) &&
            (identical(other.showType, showType) ||
                other.showType == showType) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, rating, quality, sub, dub, showType, duration);

  @override
  String toString() {
    return 'TvInfoModel(rating: $rating, quality: $quality, sub: $sub, dub: $dub, showType: $showType, duration: $duration)';
  }
}

/// @nodoc
abstract mixin class $TvInfoModelCopyWith<$Res> {
  factory $TvInfoModelCopyWith(
          TvInfoModel value, $Res Function(TvInfoModel) _then) =
      _$TvInfoModelCopyWithImpl;
  @useResult
  $Res call(
      {String rating,
      String quality,
      String sub,
      String dub,
      String showType,
      String duration});
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
    Object? rating = null,
    Object? quality = null,
    Object? sub = null,
    Object? dub = null,
    Object? showType = null,
    Object? duration = null,
  }) {
    return _then(_self.copyWith(
      rating: null == rating
          ? _self.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String,
      quality: null == quality
          ? _self.quality
          : quality // ignore: cast_nullable_to_non_nullable
              as String,
      sub: null == sub
          ? _self.sub
          : sub // ignore: cast_nullable_to_non_nullable
              as String,
      dub: null == dub
          ? _self.dub
          : dub // ignore: cast_nullable_to_non_nullable
              as String,
      showType: null == showType
          ? _self.showType
          : showType // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _self.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _TvInfoModel implements TvInfoModel {
  const _TvInfoModel(
      {required this.rating,
      required this.quality,
      required this.sub,
      required this.dub,
      required this.showType,
      required this.duration});
  factory _TvInfoModel.fromJson(Map<String, dynamic> json) =>
      _$TvInfoModelFromJson(json);

  @override
  final String rating;
  @override
  final String quality;
  @override
  final String sub;
  @override
  final String dub;
  @override
  final String showType;
  @override
  final String duration;

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
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.quality, quality) || other.quality == quality) &&
            (identical(other.sub, sub) || other.sub == sub) &&
            (identical(other.dub, dub) || other.dub == dub) &&
            (identical(other.showType, showType) ||
                other.showType == showType) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, rating, quality, sub, dub, showType, duration);

  @override
  String toString() {
    return 'TvInfoModel(rating: $rating, quality: $quality, sub: $sub, dub: $dub, showType: $showType, duration: $duration)';
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
      {String rating,
      String quality,
      String sub,
      String dub,
      String showType,
      String duration});
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
    Object? rating = null,
    Object? quality = null,
    Object? sub = null,
    Object? dub = null,
    Object? showType = null,
    Object? duration = null,
  }) {
    return _then(_TvInfoModel(
      rating: null == rating
          ? _self.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String,
      quality: null == quality
          ? _self.quality
          : quality // ignore: cast_nullable_to_non_nullable
              as String,
      sub: null == sub
          ? _self.sub
          : sub // ignore: cast_nullable_to_non_nullable
              as String,
      dub: null == dub
          ? _self.dub
          : dub // ignore: cast_nullable_to_non_nullable
              as String,
      showType: null == showType
          ? _self.showType
          : showType // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _self.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
