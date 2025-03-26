// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authenticate_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthenticateModelImpl _$$AuthenticateModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthenticateModelImpl(
      jsonrpc: json['jsonrpc'] as String?,
      id: json['id'],
      result: json['result'] == null
          ? null
          : Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AuthenticateModelImplToJson(
        _$AuthenticateModelImpl instance) =>
    <String, dynamic>{
      'jsonrpc': instance.jsonrpc,
      'id': instance.id,
      'result': instance.result,
    };

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
      session_id: json['session_id'] as String?,
      uid: (json['uid'] as num?)?.toInt(),
      is_admin: json['is_admin'] as bool?,
      db: json['db'] as String?,
      name: json['name'] as String?,
      username: json['username'] as String?,
      partner_display_name: json['partner_display_name'] as String?,
    );

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) =>
    <String, dynamic>{
      'session_id': instance.session_id,
      'uid': instance.uid,
      'is_admin': instance.is_admin,
      'db': instance.db,
      'name': instance.name,
      'username': instance.username,
      'partner_display_name': instance.partner_display_name,
    };
