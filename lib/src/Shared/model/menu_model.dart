import 'package:freezed_annotation/freezed_annotation.dart';

part 'menu_model.freezed.dart';
part 'menu_model.g.dart';

@freezed
class MenuModel with _$MenuModel {
  const factory MenuModel({
// String? jsonrpc,

    Result? result,
  }) = _MenuModel;

  factory MenuModel.fromJson(Map<String, dynamic> json) => _$MenuModelFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
// int? status,
// String? response,
    int? receive_list,
    int? put_away,
    int? delivery_orders,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}
