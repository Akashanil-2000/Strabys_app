import 'package:freezed_annotation/freezed_annotation.dart';

part 'warehouse_stock_product_list_model.freezed.dart';
part 'warehouse_stock_product_list_model.g.dart';

@freezed
class WarehouseStockProductListModel with _$WarehouseStockProductListModel {
  const factory WarehouseStockProductListModel({
    String? jsonrpc,
    Result? result,
  }) = _WarehouseStockProductListModel;

  factory WarehouseStockProductListModel.fromJson(Map<String, dynamic> json) => _$WarehouseStockProductListModelFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    int? status,
    String? response,
    List<WarehouseStockProductList>? product_list,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class WarehouseStockProductList with _$WarehouseStockProductList {
  const factory WarehouseStockProductList({
    int? product_id,
    String? name,
    double? product_qty,
    double? scanned_qty,
    double? balance,
    String? internal_ref,
    String? sku_number,
    int? coa_id,
    int? transfer_line_id,
    int? move_id,
    String? coa_name,
    String? status,
  }) = _WarehouseStockProductList;

  factory WarehouseStockProductList.fromJson(Map<String, dynamic> json) => _$WarehouseStockProductListFromJson(json);
}
