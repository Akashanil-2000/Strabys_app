import 'package:freezed_annotation/freezed_annotation.dart';

part 'recieve_product_list_model.freezed.dart';
part 'recieve_product_list_model.g.dart';

@freezed
class RecieveProductListModel with _$RecieveProductListModel {
  const factory RecieveProductListModel({
    String? jsonrpc,
// Id? id,
    Result? result,
  }) = _RecieveProductListModel;

  factory RecieveProductListModel.fromJson(Map<String, dynamic> json) => _$RecieveProductListModelFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    int? status,
    List<ProductList>? packing_data,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class ProductList with _$ProductList {
  const factory ProductList({
    int? product_id,
    String? name,
    String? sku,
    String? internal_ref,
    double? order_qty,
    double? scanned_qty,
    double? balance_qty,
    int? move_id,
    int? picking_id,
    int? packing_list_line_id,
    dynamic batch_code,
    dynamic country_of_origin,
  }) = _ProductList;

  factory ProductList.fromJson(Map<String, dynamic> json) => _$ProductListFromJson(json);
}
