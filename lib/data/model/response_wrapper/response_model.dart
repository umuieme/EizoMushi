import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_model.freezed.dart';
part 'response_model.g.dart';

@Freezed(genericArgumentFactories: true)
abstract class ResponseModel<T> with _$ResponseModel<T> {
  factory ResponseModel({
    required bool success,
    required T results,
  }) = _ResponseModel;

  factory ResponseModel.fromJson(
    Map<String, Object?> json,
    T Function(Object?) fromJsonT,
  ) =>
      _$ResponseModelFromJson(json, fromJsonT);
}
