// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_wrapper_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaginatedWrapperModel<T> _$PaginatedWrapperModelFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _PaginatedWrapperModel<T>(
      totalPage: (json['totalPage'] as num).toInt(),
      data: (json['data'] as List<dynamic>).map(fromJsonT).toList(),
    );

Map<String, dynamic> _$PaginatedWrapperModelToJson<T>(
  _PaginatedWrapperModel<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'totalPage': instance.totalPage,
      'data': instance.data.map(toJsonT).toList(),
    };
