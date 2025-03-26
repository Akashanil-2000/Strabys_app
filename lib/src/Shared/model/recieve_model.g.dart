// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recieve_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecieveModelImpl _$$RecieveModelImplFromJson(Map<String, dynamic> json) =>
    _$RecieveModelImpl(
      jsonrpc: json['jsonrpc'] as String?,
      result: json['result'] == null
          ? null
          : Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RecieveModelImplToJson(_$RecieveModelImpl instance) =>
    <String, dynamic>{
      'jsonrpc': instance.jsonrpc,
      'result': instance.result,
    };

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
      status: (json['status'] as num?)?.toInt(),
      packing_data: (json['packing_data'] as List<dynamic>?)
          ?.map((e) => PackingData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'packing_data': instance.packing_data,
    };

_$PackingDataImpl _$$PackingDataImplFromJson(Map<String, dynamic> json) =>
    _$PackingDataImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      customer_id: (json['customer_id'] as num?)?.toInt(),
      customer_name: json['customer_name'] as String?,
      inbounding_type: json['inbounding_type'] as String?,
      inbounding_no: json['inbounding_no'] as String?,
      gate_in_date: json['gate_in_date'] as String?,
      warehouse: json['warehouse'] == null
          ? null
          : Warehouse.fromJson(json['warehouse'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PackingDataImplToJson(_$PackingDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'customer_id': instance.customer_id,
      'customer_name': instance.customer_name,
      'inbounding_type': instance.inbounding_type,
      'inbounding_no': instance.inbounding_no,
      'gate_in_date': instance.gate_in_date,
      'warehouse': instance.warehouse,
    };

_$WarehouseImpl _$$WarehouseImplFromJson(Map<String, dynamic> json) =>
    _$WarehouseImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$WarehouseImplToJson(_$WarehouseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
