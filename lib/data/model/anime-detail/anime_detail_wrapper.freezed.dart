// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'anime_detail_wrapper.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AnimeDetailResult {
  AnimeDetailModel get data;

  /// Create a copy of AnimeDetailResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AnimeDetailResultCopyWith<AnimeDetailResult> get copyWith =>
      _$AnimeDetailResultCopyWithImpl<AnimeDetailResult>(
          this as AnimeDetailResult, _$identity);

  /// Serializes this AnimeDetailResult to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AnimeDetailResult &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @override
  String toString() {
    return 'AnimeDetailResult(data: $data)';
  }
}

/// @nodoc
abstract mixin class $AnimeDetailResultCopyWith<$Res> {
  factory $AnimeDetailResultCopyWith(
          AnimeDetailResult value, $Res Function(AnimeDetailResult) _then) =
      _$AnimeDetailResultCopyWithImpl;
  @useResult
  $Res call({AnimeDetailModel data});

  $AnimeDetailModelCopyWith<$Res> get data;
}

/// @nodoc
class _$AnimeDetailResultCopyWithImpl<$Res>
    implements $AnimeDetailResultCopyWith<$Res> {
  _$AnimeDetailResultCopyWithImpl(this._self, this._then);

  final AnimeDetailResult _self;
  final $Res Function(AnimeDetailResult) _then;

  /// Create a copy of AnimeDetailResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_self.copyWith(
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as AnimeDetailModel,
    ));
  }

  /// Create a copy of AnimeDetailResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AnimeDetailModelCopyWith<$Res> get data {
    return $AnimeDetailModelCopyWith<$Res>(_self.data, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _AnimeDetailResult implements AnimeDetailResult {
  _AnimeDetailResult({required this.data});
  factory _AnimeDetailResult.fromJson(Map<String, dynamic> json) =>
      _$AnimeDetailResultFromJson(json);

  @override
  final AnimeDetailModel data;

  /// Create a copy of AnimeDetailResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AnimeDetailResultCopyWith<_AnimeDetailResult> get copyWith =>
      __$AnimeDetailResultCopyWithImpl<_AnimeDetailResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AnimeDetailResultToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AnimeDetailResult &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @override
  String toString() {
    return 'AnimeDetailResult(data: $data)';
  }
}

/// @nodoc
abstract mixin class _$AnimeDetailResultCopyWith<$Res>
    implements $AnimeDetailResultCopyWith<$Res> {
  factory _$AnimeDetailResultCopyWith(
          _AnimeDetailResult value, $Res Function(_AnimeDetailResult) _then) =
      __$AnimeDetailResultCopyWithImpl;
  @override
  @useResult
  $Res call({AnimeDetailModel data});

  @override
  $AnimeDetailModelCopyWith<$Res> get data;
}

/// @nodoc
class __$AnimeDetailResultCopyWithImpl<$Res>
    implements _$AnimeDetailResultCopyWith<$Res> {
  __$AnimeDetailResultCopyWithImpl(this._self, this._then);

  final _AnimeDetailResult _self;
  final $Res Function(_AnimeDetailResult) _then;

  /// Create a copy of AnimeDetailResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
  }) {
    return _then(_AnimeDetailResult(
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as AnimeDetailModel,
    ));
  }

  /// Create a copy of AnimeDetailResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AnimeDetailModelCopyWith<$Res> get data {
    return $AnimeDetailModelCopyWith<$Res>(_self.data, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

// dart format on
