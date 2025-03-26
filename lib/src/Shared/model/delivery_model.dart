import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_model.freezed.dart';
part 'delivery_model.g.dart';

@freezed
class DeliveryModel with _$DeliveryModel {
  const factory DeliveryModel({
    String? jsonrpc,
    // Id? id,
    Result? result,
  }) = _DeliveryModel;

  factory DeliveryModel.fromJson(Map<String, dynamic> json) =>
      _$DeliveryModelFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({int? status, List<DeliveryData>? delivery_data}) =
      _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class DeliveryData with _$DeliveryData {
  const factory DeliveryData({
    int? id,
    String? name,
    int? customer_id,
    String? customer_name,
    String? consignee_name,
    Warehouse? warehouse,
  }) = _DeliveryData;

  factory DeliveryData.fromJson(Map<String, dynamic> json) =>
      _$DeliveryDataFromJson(json);
}

@freezed
class Warehouse with _$Warehouse {
  const factory Warehouse({int? id, String? name}) = _Warehouse;

  factory Warehouse.fromJson(Map<String, dynamic> json) =>
      _$WarehouseFromJson(json);
}
