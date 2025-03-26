import 'package:freezed_annotation/freezed_annotation.dart';

part 'warehouse_single_product_list_model.freezed.dart';
part 'warehouse_single_product_list_model.g.dart';

@freezed
class WarehouseSingleProductListModel with _$WarehouseSingleProductListModel {
  const factory WarehouseSingleProductListModel({
    String? jsonrpc,
    List<WarehouseSingleProductItem>? result,
  }) = _WarehouseSingleProductListModel;

  factory WarehouseSingleProductListModel.fromJson(Map<String, dynamic> json) => _$WarehouseSingleProductListModelFromJson(json);
}

@freezed
class WarehouseSingleProductItem with _$WarehouseSingleProductItem {
  const factory WarehouseSingleProductItem({
    String? customer_name,
    int? product_id,
    int? lot_id,
    String? product_name,
    String? sku,
    String? internal_ref,
    String? boe,
    String? coo,
    String? batch_code,
    int? product_qty,
  }) = _WarehouseSingleProductItem;

  factory WarehouseSingleProductItem.fromJson(Map<String, dynamic> json) => _$WarehouseSingleProductItemFromJson(json);
}
