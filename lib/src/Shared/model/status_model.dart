import 'package:freezed_annotation/freezed_annotation.dart';

part 'status_model.freezed.dart';
part 'status_model.g.dart';

@freezed
class StatusModel with _$StatusModel {
  const factory StatusModel({
    String? jsonrpc,
    dynamic? id,
    Result? result,
  }) = _StatusModel;

  factory StatusModel.fromJson(Map<String, dynamic> json) => _$StatusModelFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    int? status,
    String? response,
    Message? message,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class Message with _$Message {
  const factory Message(
      {
      String? state,
      String? project,
      String? panel_name,
      String? work_sheet,
      String? message,
      String? qc_mould,
      String? qc_finish,
      int? dimension_height1,
      int? dimension_height2,
      int? dimension_width1,
      int? dimension_width2,
      String? delivery_type,
      String? pallet_number,
      String? shipment_number,
      String? container_number,
      String? name,
      String? code}) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) => _$MessageFromJson(json);
}
