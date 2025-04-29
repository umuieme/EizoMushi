// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResponseModel<T> {
  bool get success;
  T get results;

  /// Create a copy of ResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResponseModelCopyWith<T, ResponseModel<T>> get copyWith =>
      _$ResponseModelCopyWithImpl<T, ResponseModel<T>>(
          this as ResponseModel<T>, _$identity);

  /// Serializes this ResponseModel to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResponseModel<T> &&
            (identical(other.success, success) || other.success == success) &&
            const DeepCollectionEquality().equals(other.results, results));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, success, const DeepCollectionEquality().hash(results));

  @override
  String toString() {
    return 'ResponseModel<$T>(success: $success, results: $results)';
  }
}

/// @nodoc
abstract mixin class $ResponseModelCopyWith<T, $Res> {
  factory $ResponseModelCopyWith(
          ResponseModel<T> value, $Res Function(ResponseModel<T>) _then) =
      _$ResponseModelCopyWithImpl;
  @useResult
  $Res call({bool success, T results});
}

/// @nodoc
class _$ResponseModelCopyWithImpl<T, $Res>
    implements $ResponseModelCopyWith<T, $Res> {
  _$ResponseModelCopyWithImpl(this._self, this._then);

  final ResponseModel<T> _self;
  final $Res Function(ResponseModel<T>) _then;

  /// Create a copy of ResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? results = freezed,
  }) {
    return _then(_self.copyWith(
      success: null == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      results: freezed == results
          ? _self.results
          : results // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _ResponseModel<T> implements ResponseModel<T> {
  _ResponseModel({required this.success, required this.results});
  factory _ResponseModel.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$ResponseModelFromJson(json, fromJsonT);

  @override
  final bool success;
  @override
  final T results;

  /// Create a copy of ResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ResponseModelCopyWith<T, _ResponseModel<T>> get copyWith =>
      __$ResponseModelCopyWithImpl<T, _ResponseModel<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$ResponseModelToJson<T>(this, toJsonT);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResponseModel<T> &&
            (identical(other.success, success) || other.success == success) &&
            const DeepCollectionEquality().equals(other.results, results));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, success, const DeepCollectionEquality().hash(results));

  @override
  String toString() {
    return 'ResponseModel<$T>(success: $success, results: $results)';
  }
}

/// @nodoc
abstract mixin class _$ResponseModelCopyWith<T, $Res>
    implements $ResponseModelCopyWith<T, $Res> {
  factory _$ResponseModelCopyWith(
          _ResponseModel<T> value, $Res Function(_ResponseModel<T>) _then) =
      __$ResponseModelCopyWithImpl;
  @override
  @useResult
  $Res call({bool success, T results});
}

/// @nodoc
class __$ResponseModelCopyWithImpl<T, $Res>
    implements _$ResponseModelCopyWith<T, $Res> {
  __$ResponseModelCopyWithImpl(this._self, this._then);

  final _ResponseModel<T> _self;
  final $Res Function(_ResponseModel<T>) _then;

  /// Create a copy of ResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? success = null,
    Object? results = freezed,
  }) {
    return _then(_ResponseModel<T>(
      success: null == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      results: freezed == results
          ? _self.results
          : results // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

// dart format on
