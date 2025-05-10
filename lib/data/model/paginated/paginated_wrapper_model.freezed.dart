// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_wrapper_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaginatedWrapperModel<T> {
  int get totalPage;
  List<T> get data;

  /// Create a copy of PaginatedWrapperModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PaginatedWrapperModelCopyWith<T, PaginatedWrapperModel<T>> get copyWith =>
      _$PaginatedWrapperModelCopyWithImpl<T, PaginatedWrapperModel<T>>(
          this as PaginatedWrapperModel<T>, _$identity);

  /// Serializes this PaginatedWrapperModel to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PaginatedWrapperModel<T> &&
            (identical(other.totalPage, totalPage) ||
                other.totalPage == totalPage) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, totalPage, const DeepCollectionEquality().hash(data));

  @override
  String toString() {
    return 'PaginatedWrapperModel<$T>(totalPage: $totalPage, data: $data)';
  }
}

/// @nodoc
abstract mixin class $PaginatedWrapperModelCopyWith<T, $Res> {
  factory $PaginatedWrapperModelCopyWith(PaginatedWrapperModel<T> value,
          $Res Function(PaginatedWrapperModel<T>) _then) =
      _$PaginatedWrapperModelCopyWithImpl;
  @useResult
  $Res call({int totalPage, List<T> data});
}

/// @nodoc
class _$PaginatedWrapperModelCopyWithImpl<T, $Res>
    implements $PaginatedWrapperModelCopyWith<T, $Res> {
  _$PaginatedWrapperModelCopyWithImpl(this._self, this._then);

  final PaginatedWrapperModel<T> _self;
  final $Res Function(PaginatedWrapperModel<T>) _then;

  /// Create a copy of PaginatedWrapperModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalPage = null,
    Object? data = null,
  }) {
    return _then(_self.copyWith(
      totalPage: null == totalPage
          ? _self.totalPage
          : totalPage // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _PaginatedWrapperModel<T> implements PaginatedWrapperModel<T> {
  _PaginatedWrapperModel({required this.totalPage, required final List<T> data})
      : _data = data;
  factory _PaginatedWrapperModel.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$PaginatedWrapperModelFromJson(json, fromJsonT);

  @override
  final int totalPage;
  final List<T> _data;
  @override
  List<T> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  /// Create a copy of PaginatedWrapperModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PaginatedWrapperModelCopyWith<T, _PaginatedWrapperModel<T>> get copyWith =>
      __$PaginatedWrapperModelCopyWithImpl<T, _PaginatedWrapperModel<T>>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$PaginatedWrapperModelToJson<T>(this, toJsonT);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PaginatedWrapperModel<T> &&
            (identical(other.totalPage, totalPage) ||
                other.totalPage == totalPage) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, totalPage, const DeepCollectionEquality().hash(_data));

  @override
  String toString() {
    return 'PaginatedWrapperModel<$T>(totalPage: $totalPage, data: $data)';
  }
}

/// @nodoc
abstract mixin class _$PaginatedWrapperModelCopyWith<T, $Res>
    implements $PaginatedWrapperModelCopyWith<T, $Res> {
  factory _$PaginatedWrapperModelCopyWith(_PaginatedWrapperModel<T> value,
          $Res Function(_PaginatedWrapperModel<T>) _then) =
      __$PaginatedWrapperModelCopyWithImpl;
  @override
  @useResult
  $Res call({int totalPage, List<T> data});
}

/// @nodoc
class __$PaginatedWrapperModelCopyWithImpl<T, $Res>
    implements _$PaginatedWrapperModelCopyWith<T, $Res> {
  __$PaginatedWrapperModelCopyWithImpl(this._self, this._then);

  final _PaginatedWrapperModel<T> _self;
  final $Res Function(_PaginatedWrapperModel<T>) _then;

  /// Create a copy of PaginatedWrapperModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? totalPage = null,
    Object? data = null,
  }) {
    return _then(_PaginatedWrapperModel<T>(
      totalPage: null == totalPage
          ? _self.totalPage
          : totalPage // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _self._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ));
  }
}

// dart format on
