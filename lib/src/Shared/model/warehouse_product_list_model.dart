import 'package:freezed_annotation/freezed_annotation.dart';

part 'warehouse_product_list_model.freezed.dart';
part 'warehouse_product_list_model.g.dart';

@freezed
class WarehouseProductListModel with _$WarehouseProductListModel {
  const factory WarehouseProductListModel({
    String? jsonrpc,
    List<WarehouseProductItem>? result,
  }) = _WarehouseProductListModel;

  factory WarehouseProductListModel.fromJson(Map<String, dynamic> json) => _$WarehouseProductListModelFromJson(json);
}

@freezed
class WarehouseProductItem with _$WarehouseProductItem {
  const factory WarehouseProductItem({
    String? customer_name,
    int? product_id,
    String? name,
    String? sku,
    String? internal_ref,
  }) = _WarehouseProductItem;

  factory WarehouseProductItem.fromJson(Map<String, dynamic> json) => _$WarehouseProductItemFromJson(json);
}
@freezed
class CustomerListModel with _$CustomerListModel {
  const factory CustomerListModel({
    String? jsonrpc,
    List<CustomerItem>? result,
  }) = _CustomerListModel;

  factory CustomerListModel.fromJson(Map<String, dynamic> json) => _$CustomerListModelFromJson(json);
}

@freezed
class CustomerItem with _$CustomerItem {
  const factory CustomerItem({
    int? id,
    String? name,
  }) = _CustomerItem;

  factory CustomerItem.fromJson(Map<String, dynamic> json) => _$CustomerItemFromJson(json);
}
