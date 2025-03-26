import 'package:freezed_annotation/freezed_annotation.dart';

part 'recieve_model.freezed.dart';
part 'recieve_model.g.dart';

@freezed
class RecieveModel with _$RecieveModel {
  const factory RecieveModel({
    String? jsonrpc,
// Id? id,
    Result? result,
  }) = _RecieveModel;

  factory RecieveModel.fromJson(Map<String, dynamic> json) => _$RecieveModelFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    int? status,
    List<PackingData>? packing_data,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class PackingData with _$PackingData {
  const factory PackingData({
    int? id,
    String? name,
    int? customer_id,
    String? customer_name,
    String? inbounding_type,
    String? inbounding_no,
    String? gate_in_date,
    Warehouse? warehouse,
  }) = _PackingData;

  factory PackingData.fromJson(Map<String, dynamic> json) => _$PackingDataFromJson(json);
}

@freezed
class Warehouse with _$Warehouse {
  const factory Warehouse({
    int? id,
    String? name,
  }) = _Warehouse;

  factory Warehouse.fromJson(Map<String, dynamic> json) => _$WarehouseFromJson(json);
}
