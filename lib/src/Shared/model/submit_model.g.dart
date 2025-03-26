// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submit_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubmitModelImpl _$$SubmitModelImplFromJson(Map<String, dynamic> json) =>
    _$SubmitModelImpl(
      jsonrpc: json['jsonrpc'] as String?,
      result: json['result'] == null
          ? null
          : Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SubmitModelImplToJson(_$SubmitModelImpl instance) =>
    <String, dynamic>{
      'jsonrpc': instance.jsonrpc,
      'result': instance.result,
    };

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
      status: (json['status'] as num?)?.toInt(),
      submit_data: (json['submit_data'] as List<dynamic>?)
          ?.map((e) => SubmitData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'submit_data': instance.submit_data,
    };

_$SubmitDataImpl _$$SubmitDataImplFromJson(Map<String, dynamic> json) =>
    _$SubmitDataImpl(
      location_id: (json['location_id'] as num?)?.toInt(),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$SubmitDataImplToJson(_$SubmitDataImpl instance) =>
    <String, dynamic>{
      'location_id': instance.location_id,
      'status': instance.status,
    };
