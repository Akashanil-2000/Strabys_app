// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'warehouse_scanned_data_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScannedDataListModelImpl _$$ScannedDataListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ScannedDataListModelImpl(
      jsonrpc: json['jsonrpc'] as String?,
      result: json['result'] == null
          ? null
          : Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ScannedDataListModelImplToJson(
        _$ScannedDataListModelImpl instance) =>
    <String, dynamic>{
      'jsonrpc': instance.jsonrpc,
      'result': instance.result,
    };

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
      status: (json['status'] as num?)?.toInt(),
      response: json['response'] as String?,
      scanned_data_list: (json['scanned_data_list'] as List<dynamic>?)
          ?.map((e) => ScannedDataList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'response': instance.response,
      'scanned_data_list': instance.scanned_data_list,
    };

_$ScannedDataListImpl _$$ScannedDataListImplFromJson(
        Map<String, dynamic> json) =>
    _$ScannedDataListImpl(
      location_id: (json['location_id'] as num?)?.toInt(),
      location_name: json['location_name'] as String?,
      location_barcode: json['location_barcode'] as String?,
      lot_id: (json['lot_id'] as num?)?.toInt(),
      lot_name: json['lot_name'] as String?,
      quantity: (json['quantity'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$ScannedDataListImplToJson(
        _$ScannedDataListImpl instance) =>
    <String, dynamic>{
      'location_id': instance.location_id,
      'location_name': instance.location_name,
      'location_barcode': instance.location_barcode,
      'lot_id': instance.lot_id,
      'lot_name': instance.lot_name,
      'quantity': instance.quantity,
    };
