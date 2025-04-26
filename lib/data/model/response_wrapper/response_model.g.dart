// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ResponseModel<T> _$ResponseModelFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _ResponseModel<T>(
      success: json['success'] as bool,
      results: fromJsonT(json['results']),
    );

Map<String, dynamic> _$ResponseModelToJson<T>(
  _ResponseModel<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'success': instance.success,
      'results': toJsonT(instance.results),
    };
