// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_location_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeliveryLocationModelImpl _$$DeliveryLocationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DeliveryLocationModelImpl(
      jsonrpc: json['jsonrpc'] as String?,
      result: json['result'] == null
          ? null
          : Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DeliveryLocationModelImplToJson(
        _$DeliveryLocationModelImpl instance) =>
    <String, dynamic>{
      'jsonrpc': instance.jsonrpc,
      'result': instance.result,
    };

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
      status: (json['status'] as num?)?.toInt(),
      location_details: (json['location_details'] as List<dynamic>?)
          ?.map((e) => LocationDetailsList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'location_details': instance.location_details,
    };

_$LocationDetailsListImpl _$$LocationDetailsListImplFromJson(
        Map<String, dynamic> json) =>
    _$LocationDetailsListImpl(
      location_id: (json['location_id'] as num?)?.toInt(),
      location_name: json['location_name'] as String?,
      Location_barcode: json['Location_barcode'] as String?,
      total_volume: (json['total_volume'] as num?)?.toDouble(),
      total_weight: (json['total_weight'] as num?)?.toDouble(),
      total_qty: (json['total_qty'] as num?)?.toInt(),
      completed_qty: (json['completed_qty'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$LocationDetailsListImplToJson(
        _$LocationDetailsListImpl instance) =>
    <String, dynamic>{
      'location_id': instance.location_id,
      'location_name': instance.location_name,
      'Location_barcode': instance.Location_barcode,
      'total_volume': instance.total_volume,
      'total_weight': instance.total_weight,
      'total_qty': instance.total_qty,
      'completed_qty': instance.completed_qty,
    };
