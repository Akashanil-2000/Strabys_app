import 'package:freezed_annotation/freezed_annotation.dart';

part 'warehouse_location_list_model.freezed.dart';
part 'warehouse_location_list_model.g.dart';

@freezed
class WarehouseLocationListModel with _$WarehouseLocationListModel {
  const factory WarehouseLocationListModel({
    String? jsonrpc,
    Result? result,
  }) = _WarehouseLocationListModel;

  factory WarehouseLocationListModel.fromJson(Map<String, dynamic> json) => _$WarehouseLocationListModelFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    int? status,
    String? response,
    double? balance_qty,
    List<LocationList>? location_list,
    List<ProductQtyList>? product_qty_list,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class LocationList with _$LocationList {
  const factory LocationList({
    int? location_id,
    String? location_name,
    String? location_barcode,
    int? lot_id,
    String? lot_name,
    String? warehouse_name,
    double? available_qty,
  }) = _LocationList;

  factory LocationList.fromJson(Map<String, dynamic> json) => _$LocationListFromJson(json);
}

@freezed
class ProductQtyList with _$ProductQtyList {
  const factory ProductQtyList({
    int? lot_id,
    String? lot_name,
    double? quantity,
  }) = _ProductQtyList;

  factory ProductQtyList.fromJson(Map<String, dynamic> json) => _$ProductQtyListFromJson(json);
}
