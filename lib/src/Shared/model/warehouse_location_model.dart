import 'package:freezed_annotation/freezed_annotation.dart';

part 'warehouse_location_model.freezed.dart';
part 'warehouse_location_model.g.dart';

@freezed
class WarehouseLocationModel with _$WarehouseLocationModel {
  const factory WarehouseLocationModel({
    String? jsonrpc,
// Id? id,
    List<WarehouseLocationItem>? result,
  }) = _WarehouseLocationModel;

  factory WarehouseLocationModel.fromJson(Map<String, dynamic> json) => _$WarehouseLocationModelFromJson(json);
}

@freezed
class WarehouseLocationItem with _$WarehouseLocationItem {
  const factory WarehouseLocationItem({
    String? name,
    String? barcode,
    int? id,
  }) = _WarehouseLocationItem;

  factory WarehouseLocationItem.fromJson(Map<String, dynamic> json) => _$WarehouseLocationItemFromJson(json);
}
