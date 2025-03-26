import 'package:freezed_annotation/freezed_annotation.dart';

part 'warehouse_list_model.freezed.dart';
part 'warehouse_list_model.g.dart';

@freezed
class WarehouseListModel with _$WarehouseListModel {
  const factory WarehouseListModel({
    String? jsonrpc,
// Id? id,
    List<WarehouseItem>? result,
  }) = _WarehouseListModel;

  factory WarehouseListModel.fromJson(Map<String, dynamic> json) => _$WarehouseListModelFromJson(json);
}

@freezed
class WarehouseItem with _$WarehouseItem {
  const factory WarehouseItem({
    String? name,
    int? id,
  }) = _WarehouseItem;

  factory WarehouseItem.fromJson(Map<String, dynamic> json) => _$WarehouseItemFromJson(json);
}
