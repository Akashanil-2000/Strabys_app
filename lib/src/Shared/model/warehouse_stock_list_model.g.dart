// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'warehouse_stock_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WarehouseStockListModelImpl _$$WarehouseStockListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WarehouseStockListModelImpl(
      jsonrpc: json['jsonrpc'] as String?,
      result: json['result'] == null
          ? null
          : Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WarehouseStockListModelImplToJson(
        _$WarehouseStockListModelImpl instance) =>
    <String, dynamic>{
      'jsonrpc': instance.jsonrpc,
      'result': instance.result,
    };

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
      status: (json['status'] as num?)?.toInt(),
      response: json['response'] as String?,
      stock_out_list: (json['stock_out_list'] as List<dynamic>?)
          ?.map((e) => StockOutList.fromJson(e as Map<String, dynamic>))
          .toList(),
      stock_in_list: (json['stock_in_list'] as List<dynamic>?)
          ?.map((e) => StockInList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'response': instance.response,
      'stock_out_list': instance.stock_out_list,
      'stock_in_list': instance.stock_in_list,
    };

_$StockOutListImpl _$$StockOutListImplFromJson(Map<String, dynamic> json) =>
    _$StockOutListImpl(
      name: json['name'] as String?,
      warehouse_id: (json['warehouse_id'] as num?)?.toInt(),
      warehouse_name: json['warehouse_name'] as String?,
      date: json['date'] as String?,
      picking_id: (json['picking_id'] as num?)?.toInt(),
      transfer_id: (json['transfer_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$StockOutListImplToJson(_$StockOutListImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'warehouse_id': instance.warehouse_id,
      'warehouse_name': instance.warehouse_name,
      'date': instance.date,
      'picking_id': instance.picking_id,
      'transfer_id': instance.transfer_id,
    };

_$StockInListImpl _$$StockInListImplFromJson(Map<String, dynamic> json) =>
    _$StockInListImpl(
      name: json['name'] as String?,
      warehouse_id: (json['warehouse_id'] as num?)?.toInt(),
      warehouse_name: json['warehouse_name'] as String?,
      date: json['date'] as String?,
      picking_id: (json['picking_id'] as num?)?.toInt(),
      transfer_id: (json['transfer_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$StockInListImplToJson(_$StockInListImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'warehouse_id': instance.warehouse_id,
      'warehouse_name': instance.warehouse_name,
      'date': instance.date,
      'picking_id': instance.picking_id,
      'transfer_id': instance.transfer_id,
    };
