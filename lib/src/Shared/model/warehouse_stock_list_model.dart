import 'package:freezed_annotation/freezed_annotation.dart';

part 'warehouse_stock_list_model.freezed.dart';
part 'warehouse_stock_list_model.g.dart';

@freezed
class WarehouseStockListModel with _$WarehouseStockListModel {
  const factory WarehouseStockListModel({
    String? jsonrpc,
    Result? result,
  }) = _WarehouseStockListModel;

  factory WarehouseStockListModel.fromJson(Map<String, dynamic> json) => _$WarehouseStockListModelFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    int? status,
    String? response,
    List<StockOutList>? stock_out_list,
    List<StockInList>? stock_in_list,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class StockOutList with _$StockOutList {
  const factory StockOutList({
    String? name,
    int? warehouse_id,
    String? warehouse_name,
    String? date,
    int? picking_id,
    int? transfer_id,
  }) = _StockOutList;

  factory StockOutList.fromJson(Map<String, dynamic> json) => _$StockOutListFromJson(json);
}

@freezed
class StockInList with _$StockInList {
  const factory StockInList({
    String? name,
    int? warehouse_id,
    String? warehouse_name,
    String? date,
    int? picking_id,
    int? transfer_id,
  }) = _StockInList;

  factory StockInList.fromJson(Map<String, dynamic> json) => _$StockInListFromJson(json);
}
