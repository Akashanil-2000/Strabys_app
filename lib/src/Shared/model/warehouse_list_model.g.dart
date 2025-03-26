// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'warehouse_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WarehouseListModelImpl _$$WarehouseListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WarehouseListModelImpl(
      jsonrpc: json['jsonrpc'] as String?,
      result: (json['result'] as List<dynamic>?)
          ?.map((e) => WarehouseItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$WarehouseListModelImplToJson(
        _$WarehouseListModelImpl instance) =>
    <String, dynamic>{
      'jsonrpc': instance.jsonrpc,
      'result': instance.result,
    };

_$WarehouseItemImpl _$$WarehouseItemImplFromJson(Map<String, dynamic> json) =>
    _$WarehouseItemImpl(
      name: json['name'] as String?,
      id: (json['id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$WarehouseItemImplToJson(_$WarehouseItemImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
    };
