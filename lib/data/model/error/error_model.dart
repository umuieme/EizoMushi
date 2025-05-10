import 'package:json_annotation/json_annotation.dart';
part 'error_model.g.dart';

@JsonSerializable()
class ErrorResponse {
  ErrorResponse({
    required this.message,
    this.status,
    this.code,
    this.error,
  });

  ErrorResponse.withMessage(this.message)
      : status = 'error',
        code = 'invalid_response',
        error = null;

  factory ErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$ErrorResponseFromJson(json);

  final String? status;
  final String message;
  final String? code;
  final Map<String, dynamic>? error;

  Map<String, dynamic> toJson() => _$ErrorResponseToJson(this);
}
