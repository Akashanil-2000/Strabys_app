import 'package:freezed_annotation/freezed_annotation.dart';

part 'warehouse_check_bal_qty_model.freezed.dart';
part 'warehouse_check_bal_qty_model.g.dart';

@freezed
class WarehouseCheckQtyBal with _$WarehouseCheckQtyBal {
  const factory WarehouseCheckQtyBal({
    String? jsonrpc,
    Result? result,
  }) = _WarehouseCheckQtyBal;

  factory WarehouseCheckQtyBal.fromJson(Map<String, dynamic> json) => _$WarehouseCheckQtyBalFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    int? status,
    String? response,
    double? balance_qty,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}
