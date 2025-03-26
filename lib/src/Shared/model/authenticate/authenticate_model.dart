import 'package:freezed_annotation/freezed_annotation.dart';

part 'authenticate_model.freezed.dart';
part 'authenticate_model.g.dart';

@freezed
class AuthenticateModel with _$AuthenticateModel {
  const factory AuthenticateModel({
    String? jsonrpc,
    dynamic id,
    Result? result,
  }) = _AuthenticateModel;

  factory AuthenticateModel.fromJson(Map<String, dynamic> json) => _$AuthenticateModelFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    String? session_id,
    int? uid,
    bool? is_admin,
    String? db,
    String? name,
    String? username,
    String? partner_display_name,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

