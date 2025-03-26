// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'warehouse_product_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WarehouseProductListModelImpl _$$WarehouseProductListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WarehouseProductListModelImpl(
      jsonrpc: json['jsonrpc'] as String?,
      result: (json['result'] as List<dynamic>?)
          ?.map((e) => WarehouseProductItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$WarehouseProductListModelImplToJson(
        _$WarehouseProductListModelImpl instance) =>
    <String, dynamic>{
      'jsonrpc': instance.jsonrpc,
      'result': instance.result,
    };

_$WarehouseProductItemImpl _$$WarehouseProductItemImplFromJson(
        Map<String, dynamic> json) =>
    _$WarehouseProductItemImpl(
      customer_name: json['customer_name'] as String?,
      product_id: (json['product_id'] as num?)?.toInt(),
      name: json['name'] as String?,
      sku: json['sku'] as String?,
      internal_ref: json['internal_ref'] as String?,
    );

Map<String, dynamic> _$$WarehouseProductItemImplToJson(
        _$WarehouseProductItemImpl instance) =>
    <String, dynamic>{
      'customer_name': instance.customer_name,
      'product_id': instance.product_id,
      'name': instance.name,
      'sku': instance.sku,
      'internal_ref': instance.internal_ref,
    };

_$CustomerListModelImpl _$$CustomerListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CustomerListModelImpl(
      jsonrpc: json['jsonrpc'] as String?,
      result: (json['result'] as List<dynamic>?)
          ?.map((e) => CustomerItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CustomerListModelImplToJson(
        _$CustomerListModelImpl instance) =>
    <String, dynamic>{
      'jsonrpc': instance.jsonrpc,
      'result': instance.result,
    };

_$CustomerItemImpl _$$CustomerItemImplFromJson(Map<String, dynamic> json) =>
    _$CustomerItemImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$CustomerItemImplToJson(_$CustomerItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
