import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_single_model.freezed.dart';
part 'delivery_single_model.g.dart';

@freezed
class DeliverySingleModel with _$DeliverySingleModel {
  const factory DeliverySingleModel({
    String? jsonrpc,
// Id? id,
    Result? result,
  }) = _DeliverySingleModel;

  factory DeliverySingleModel.fromJson(Map<String, dynamic> json) => _$DeliverySingleModelFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    int? status,
    List<DeliveryOrderData>? delivery_order_data,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class DeliveryOrderData with _$DeliveryOrderData {
  const factory DeliveryOrderData({
    int? picking_id,
    String? picking_name,
    String? grn_name,
    String? delivery_name,
    String? status,
  }) = _DeliveryOrderData;

  factory DeliveryOrderData.fromJson(Map<String, dynamic> json) => _$DeliveryOrderDataFromJson(json);
}
