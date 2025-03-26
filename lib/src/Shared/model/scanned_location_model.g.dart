// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scanned_location_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScannedLocationModelImpl _$$ScannedLocationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ScannedLocationModelImpl(
      jsonrpc: json['jsonrpc'] as String?,
      result: json['result'] == null
          ? null
          : Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ScannedLocationModelImplToJson(
        _$ScannedLocationModelImpl instance) =>
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
      location_id: (json['location_id'] as num?)?.toInt(),
      location_name: json['location_name'] as String?,
      qty: (json['qty'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$PackingDataImplToJson(_$PackingDataImpl instance) =>
    <String, dynamic>{
      'location_id': instance.location_id,
      'location_name': instance.location_name,
      'qty': instance.qty,
    };
