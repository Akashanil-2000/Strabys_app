// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'warehouse_check_bal_qty_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WarehouseCheckQtyBalImpl _$$WarehouseCheckQtyBalImplFromJson(
        Map<String, dynamic> json) =>
    _$WarehouseCheckQtyBalImpl(
      jsonrpc: json['jsonrpc'] as String?,
      result: json['result'] == null
          ? null
          : Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WarehouseCheckQtyBalImplToJson(
        _$WarehouseCheckQtyBalImpl instance) =>
    <String, dynamic>{
      'jsonrpc': instance.jsonrpc,
      'result': instance.result,
    };

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
      status: (json['status'] as num?)?.toInt(),
      response: json['response'] as String?,
      balance_qty: (json['balance_qty'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'response': instance.response,
      'balance_qty': instance.balance_qty,
    };
