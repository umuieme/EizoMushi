import 'package:freezed_annotation/freezed_annotation.dart';

part 'paginated_wrapper_model.freezed.dart';
part 'paginated_wrapper_model.g.dart';

@Freezed(genericArgumentFactories: true)
abstract class PaginatedWrapperModel<T> with _$PaginatedWrapperModel<T> {
  factory PaginatedWrapperModel({
    required int totalPage,
    required List<T> data,
  }) = _PaginatedWrapperModel;

  factory PaginatedWrapperModel.fromJson(
    Map<String, Object?> json,
    T Function(Object?) fromJsonT,
  ) =>
      _$PaginatedWrapperModelFromJson(json, fromJsonT);
}
