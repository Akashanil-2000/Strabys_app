// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StatusModelImpl _$$StatusModelImplFromJson(Map<String, dynamic> json) =>
    _$StatusModelImpl(
      jsonrpc: json['jsonrpc'] as String?,
      id: json['id'],
      result: json['result'] == null
          ? null
          : Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StatusModelImplToJson(_$StatusModelImpl instance) =>
    <String, dynamic>{
      'jsonrpc': instance.jsonrpc,
      'id': instance.id,
      'result': instance.result,
    };

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
      status: (json['status'] as num?)?.toInt(),
      response: json['response'] as String?,
      message: json['message'] == null
          ? null
          : Message.fromJson(json['message'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'response': instance.response,
      'message': instance.message,
    };

_$MessageImpl _$$MessageImplFromJson(Map<String, dynamic> json) =>
    _$MessageImpl(
      state: json['state'] as String?,
      project: json['project'] as String?,
      panel_name: json['panel_name'] as String?,
      work_sheet: json['work_sheet'] as String?,
      message: json['message'] as String?,
      qc_mould: json['qc_mould'] as String?,
      qc_finish: json['qc_finish'] as String?,
      dimension_height1: (json['dimension_height1'] as num?)?.toInt(),
      dimension_height2: (json['dimension_height2'] as num?)?.toInt(),
      dimension_width1: (json['dimension_width1'] as num?)?.toInt(),
      dimension_width2: (json['dimension_width2'] as num?)?.toInt(),
      delivery_type: json['delivery_type'] as String?,
      pallet_number: json['pallet_number'] as String?,
      shipment_number: json['shipment_number'] as String?,
      container_number: json['container_number'] as String?,
      name: json['name'] as String?,
      code: json['code'] as String?,
    );

Map<String, dynamic> _$$MessageImplToJson(_$MessageImpl instance) =>
    <String, dynamic>{
      'state': instance.state,
      'project': instance.project,
      'panel_name': instance.panel_name,
      'work_sheet': instance.work_sheet,
      'message': instance.message,
      'qc_mould': instance.qc_mould,
      'qc_finish': instance.qc_finish,
      'dimension_height1': instance.dimension_height1,
      'dimension_height2': instance.dimension_height2,
      'dimension_width1': instance.dimension_width1,
      'dimension_width2': instance.dimension_width2,
      'delivery_type': instance.delivery_type,
      'pallet_number': instance.pallet_number,
      'shipment_number': instance.shipment_number,
      'container_number': instance.container_number,
      'name': instance.name,
      'code': instance.code,
    };
