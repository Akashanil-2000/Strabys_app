import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_product_list_model.freezed.dart';
part 'delivery_product_list_model.g.dart';

@freezed
class DeliveryProductListModel with _$DeliveryProductListModel {
  const factory DeliveryProductListModel({
    String? jsonrpc,
// Id? id,
    Result? result,
  }) = _DeliveryProductListModel;

  factory DeliveryProductListModel.fromJson(Map<String, dynamic> json) => _$DeliveryProductListModelFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    int? status,
    List<DeliveryProductListData>? product_details,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class DeliveryProductListData with _$DeliveryProductListData {
  const factory DeliveryProductListData({
    int? product_id,
    String? product_name,
    String? sku,
    String? internal_ref,
    String? boe,
    String? coo,
    String? batch_code,
    String? status,
    int? delivery_location_id,
    int? product_qty,
    int? balance_qty,
    int? scanned_qty,
    int? move_line_id,
    int? move_id,
  }) = _DeliveryProductListData;

  factory DeliveryProductListData.fromJson(Map<String, dynamic> json) => _$DeliveryProductListDataFromJson(json);
}
