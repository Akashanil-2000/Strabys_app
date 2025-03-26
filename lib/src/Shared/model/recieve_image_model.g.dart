// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recieve_image_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecieveImageModelImpl _$$RecieveImageModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RecieveImageModelImpl(
      jsonrpc: json['jsonrpc'] as String?,
      result: json['result'] == null
          ? null
          : Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RecieveImageModelImplToJson(
        _$RecieveImageModelImpl instance) =>
    <String, dynamic>{
      'jsonrpc': instance.jsonrpc,
      'result': instance.result,
    };

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
      status: (json['status'] as num?)?.toInt(),
      response: json['response'] as String?,
      image_ids: (json['image_ids'] as List<dynamic>?)
          ?.map((e) => ImageIds.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'response': instance.response,
      'image_ids': instance.image_ids,
    };

_$ImageIdsImpl _$$ImageIdsImplFromJson(Map<String, dynamic> json) =>
    _$ImageIdsImpl(
      image: json['image'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$ImageIdsImplToJson(_$ImageIdsImpl instance) =>
    <String, dynamic>{
      'image': instance.image,
      'name': instance.name,
    };
