// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationModelImpl _$$LocationModelImplFromJson(Map<String, dynamic> json) =>
    _$LocationModelImpl(
      jsonrpc: json['jsonrpc'] as String?,
      result: json['result'] == null
          ? null
          : Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LocationModelImplToJson(_$LocationModelImpl instance) =>
    <String, dynamic>{
      'jsonrpc': instance.jsonrpc,
      'result': instance.result,
    };

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
      status: (json['status'] as num?)?.toInt(),
      response: json['response'] as String?,
      location_details: json['location_details'] == null
          ? null
          : LocationDetails.fromJson(
              json['location_details'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'response': instance.response,
      'location_details': instance.location_details,
    };

_$LocationDetailsImpl _$$LocationDetailsImplFromJson(
        Map<String, dynamic> json) =>
    _$LocationDetailsImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      quantity: json['quantity'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$LocationDetailsImplToJson(
        _$LocationDetailsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'quantity': instance.quantity,
      'status': instance.status,
    };
