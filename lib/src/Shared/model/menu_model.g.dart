// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MenuModelImpl _$$MenuModelImplFromJson(Map<String, dynamic> json) =>
    _$MenuModelImpl(
      result: json['result'] == null
          ? null
          : Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MenuModelImplToJson(_$MenuModelImpl instance) =>
    <String, dynamic>{
      'result': instance.result,
    };

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
      receive_list: (json['receive_list'] as num?)?.toInt(),
      put_away: (json['put_away'] as num?)?.toInt(),
      delivery_orders: (json['delivery_orders'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) =>
    <String, dynamic>{
      'receive_list': instance.receive_list,
      'put_away': instance.put_away,
      'delivery_orders': instance.delivery_orders,
    };
