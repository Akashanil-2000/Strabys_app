// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'warehouse_location_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WarehouseLocationModelImpl _$$WarehouseLocationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WarehouseLocationModelImpl(
      jsonrpc: json['jsonrpc'] as String?,
      result: (json['result'] as List<dynamic>?)
          ?.map(
              (e) => WarehouseLocationItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$WarehouseLocationModelImplToJson(
        _$WarehouseLocationModelImpl instance) =>
    <String, dynamic>{
      'jsonrpc': instance.jsonrpc,
      'result': instance.result,
    };

_$WarehouseLocationItemImpl _$$WarehouseLocationItemImplFromJson(
        Map<String, dynamic> json) =>
    _$WarehouseLocationItemImpl(
      name: json['name'] as String?,
      barcode: json['barcode'] as String?,
      id: (json['id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$WarehouseLocationItemImplToJson(
        _$WarehouseLocationItemImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'barcode': instance.barcode,
      'id': instance.id,
    };
