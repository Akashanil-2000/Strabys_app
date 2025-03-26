// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'warehouse_single_product_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WarehouseSingleProductListModelImpl
    _$$WarehouseSingleProductListModelImplFromJson(Map<String, dynamic> json) =>
        _$WarehouseSingleProductListModelImpl(
          jsonrpc: json['jsonrpc'] as String?,
          result: (json['result'] as List<dynamic>?)
              ?.map((e) => WarehouseSingleProductItem.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$WarehouseSingleProductListModelImplToJson(
        _$WarehouseSingleProductListModelImpl instance) =>
    <String, dynamic>{
      'jsonrpc': instance.jsonrpc,
      'result': instance.result,
    };

_$WarehouseSingleProductItemImpl _$$WarehouseSingleProductItemImplFromJson(
        Map<String, dynamic> json) =>
    _$WarehouseSingleProductItemImpl(
      customer_name: json['customer_name'] as String?,
      product_id: (json['product_id'] as num?)?.toInt(),
      lot_id: (json['lot_id'] as num?)?.toInt(),
      product_name: json['product_name'] as String?,
      sku: json['sku'] as String?,
      internal_ref: json['internal_ref'] as String?,
      boe: json['boe'] as String?,
      coo: json['coo'] as String?,
      batch_code: json['batch_code'] as String?,
      product_qty: (json['product_qty'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$WarehouseSingleProductItemImplToJson(
        _$WarehouseSingleProductItemImpl instance) =>
    <String, dynamic>{
      'customer_name': instance.customer_name,
      'product_id': instance.product_id,
      'lot_id': instance.lot_id,
      'product_name': instance.product_name,
      'sku': instance.sku,
      'internal_ref': instance.internal_ref,
      'boe': instance.boe,
      'coo': instance.coo,
      'batch_code': instance.batch_code,
      'product_qty': instance.product_qty,
    };
