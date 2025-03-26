import 'package:freezed_annotation/freezed_annotation.dart';

part 'warehouse_destination_location_model.freezed.dart';
part 'warehouse_destination_location_model.g.dart';

@freezed
class WarehouseDestinationLocationModel with _$WarehouseDestinationLocationModel {
  const factory WarehouseDestinationLocationModel({
    String? jsonrpc,
    List<WarehouseDestinationLocationItem>? result,
  }) = _WarehouseDestinationLocationModel;

  factory WarehouseDestinationLocationModel.fromJson(Map<String, dynamic> json) => _$WarehouseDestinationLocationModelFromJson(json);
}

@freezed
class WarehouseDestinationLocationItem with _$WarehouseDestinationLocationItem {
  const factory WarehouseDestinationLocationItem({
    String? name,
    String? barcode,
    int? id,
  }) = _WarehouseDestinationLocationItem;

  factory WarehouseDestinationLocationItem.fromJson(Map<String, dynamic> json) => _$WarehouseDestinationLocationItemFromJson(json);
}
