// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_single_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeliverySingleModel _$DeliverySingleModelFromJson(Map<String, dynamic> json) {
  return _DeliverySingleModel.fromJson(json);
}

/// @nodoc
mixin _$DeliverySingleModel {
  String? get jsonrpc => throw _privateConstructorUsedError; // Id? id,
  Result? get result => throw _privateConstructorUsedError;

  /// Serializes this DeliverySingleModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeliverySingleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeliverySingleModelCopyWith<DeliverySingleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliverySingleModelCopyWith<$Res> {
  factory $DeliverySingleModelCopyWith(
          DeliverySingleModel value, $Res Function(DeliverySingleModel) then) =
      _$DeliverySingleModelCopyWithImpl<$Res, DeliverySingleModel>;
  @useResult
  $Res call({String? jsonrpc, Result? result});

  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$DeliverySingleModelCopyWithImpl<$Res, $Val extends DeliverySingleModel>
    implements $DeliverySingleModelCopyWith<$Res> {
  _$DeliverySingleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeliverySingleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jsonrpc = freezed,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      jsonrpc: freezed == jsonrpc
          ? _value.jsonrpc
          : jsonrpc // ignore: cast_nullable_to_non_nullable
              as String?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Result?,
    ) as $Val);
  }

  /// Create a copy of DeliverySingleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResultCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $ResultCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DeliverySingleModelImplCopyWith<$Res>
    implements $DeliverySingleModelCopyWith<$Res> {
  factory _$$DeliverySingleModelImplCopyWith(_$DeliverySingleModelImpl value,
          $Res Function(_$DeliverySingleModelImpl) then) =
      __$$DeliverySingleModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? jsonrpc, Result? result});

  @override
  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$DeliverySingleModelImplCopyWithImpl<$Res>
    extends _$DeliverySingleModelCopyWithImpl<$Res, _$DeliverySingleModelImpl>
    implements _$$DeliverySingleModelImplCopyWith<$Res> {
  __$$DeliverySingleModelImplCopyWithImpl(_$DeliverySingleModelImpl _value,
      $Res Function(_$DeliverySingleModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeliverySingleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jsonrpc = freezed,
    Object? result = freezed,
  }) {
    return _then(_$DeliverySingleModelImpl(
      jsonrpc: freezed == jsonrpc
          ? _value.jsonrpc
          : jsonrpc // ignore: cast_nullable_to_non_nullable
              as String?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Result?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeliverySingleModelImpl implements _DeliverySingleModel {
  const _$DeliverySingleModelImpl({this.jsonrpc, this.result});

  factory _$DeliverySingleModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeliverySingleModelImplFromJson(json);

  @override
  final String? jsonrpc;
// Id? id,
  @override
  final Result? result;

  @override
  String toString() {
    return 'DeliverySingleModel(jsonrpc: $jsonrpc, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliverySingleModelImpl &&
            (identical(other.jsonrpc, jsonrpc) || other.jsonrpc == jsonrpc) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, jsonrpc, result);

  /// Create a copy of DeliverySingleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliverySingleModelImplCopyWith<_$DeliverySingleModelImpl> get copyWith =>
      __$$DeliverySingleModelImplCopyWithImpl<_$DeliverySingleModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeliverySingleModelImplToJson(
      this,
    );
  }
}

abstract class _DeliverySingleModel implements DeliverySingleModel {
  const factory _DeliverySingleModel(
      {final String? jsonrpc,
      final Result? result}) = _$DeliverySingleModelImpl;

  factory _DeliverySingleModel.fromJson(Map<String, dynamic> json) =
      _$DeliverySingleModelImpl.fromJson;

  @override
  String? get jsonrpc; // Id? id,
  @override
  Result? get result;

  /// Create a copy of DeliverySingleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeliverySingleModelImplCopyWith<_$DeliverySingleModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  int? get status => throw _privateConstructorUsedError;
  List<DeliveryOrderData>? get delivery_order_data =>
      throw _privateConstructorUsedError;

  /// Serializes this Result to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call({int? status, List<DeliveryOrderData>? delivery_order_data});
}

/// @nodoc
class _$ResultCopyWithImpl<$Res, $Val extends Result>
    implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? delivery_order_data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      delivery_order_data: freezed == delivery_order_data
          ? _value.delivery_order_data
          : delivery_order_data // ignore: cast_nullable_to_non_nullable
              as List<DeliveryOrderData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResultImplCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$ResultImplCopyWith(
          _$ResultImpl value, $Res Function(_$ResultImpl) then) =
      __$$ResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, List<DeliveryOrderData>? delivery_order_data});
}

/// @nodoc
class __$$ResultImplCopyWithImpl<$Res>
    extends _$ResultCopyWithImpl<$Res, _$ResultImpl>
    implements _$$ResultImplCopyWith<$Res> {
  __$$ResultImplCopyWithImpl(
      _$ResultImpl _value, $Res Function(_$ResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? delivery_order_data = freezed,
  }) {
    return _then(_$ResultImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      delivery_order_data: freezed == delivery_order_data
          ? _value._delivery_order_data
          : delivery_order_data // ignore: cast_nullable_to_non_nullable
              as List<DeliveryOrderData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultImpl implements _Result {
  const _$ResultImpl(
      {this.status, final List<DeliveryOrderData>? delivery_order_data})
      : _delivery_order_data = delivery_order_data;

  factory _$ResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultImplFromJson(json);

  @override
  final int? status;
  final List<DeliveryOrderData>? _delivery_order_data;
  @override
  List<DeliveryOrderData>? get delivery_order_data {
    final value = _delivery_order_data;
    if (value == null) return null;
    if (_delivery_order_data is EqualUnmodifiableListView)
      return _delivery_order_data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Result(status: $status, delivery_order_data: $delivery_order_data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._delivery_order_data, _delivery_order_data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_delivery_order_data));

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      __$$ResultImplCopyWithImpl<_$ResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultImplToJson(
      this,
    );
  }
}

abstract class _Result implements Result {
  const factory _Result(
      {final int? status,
      final List<DeliveryOrderData>? delivery_order_data}) = _$ResultImpl;

  factory _Result.fromJson(Map<String, dynamic> json) = _$ResultImpl.fromJson;

  @override
  int? get status;
  @override
  List<DeliveryOrderData>? get delivery_order_data;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DeliveryOrderData _$DeliveryOrderDataFromJson(Map<String, dynamic> json) {
  return _DeliveryOrderData.fromJson(json);
}

/// @nodoc
mixin _$DeliveryOrderData {
  int? get picking_id => throw _privateConstructorUsedError;
  String? get picking_name => throw _privateConstructorUsedError;
  String? get grn_name => throw _privateConstructorUsedError;
  String? get delivery_name => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;

  /// Serializes this DeliveryOrderData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeliveryOrderData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeliveryOrderDataCopyWith<DeliveryOrderData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryOrderDataCopyWith<$Res> {
  factory $DeliveryOrderDataCopyWith(
          DeliveryOrderData value, $Res Function(DeliveryOrderData) then) =
      _$DeliveryOrderDataCopyWithImpl<$Res, DeliveryOrderData>;
  @useResult
  $Res call(
      {int? picking_id,
      String? picking_name,
      String? grn_name,
      String? delivery_name,
      String? status});
}

/// @nodoc
class _$DeliveryOrderDataCopyWithImpl<$Res, $Val extends DeliveryOrderData>
    implements $DeliveryOrderDataCopyWith<$Res> {
  _$DeliveryOrderDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeliveryOrderData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? picking_id = freezed,
    Object? picking_name = freezed,
    Object? grn_name = freezed,
    Object? delivery_name = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      picking_id: freezed == picking_id
          ? _value.picking_id
          : picking_id // ignore: cast_nullable_to_non_nullable
              as int?,
      picking_name: freezed == picking_name
          ? _value.picking_name
          : picking_name // ignore: cast_nullable_to_non_nullable
              as String?,
      grn_name: freezed == grn_name
          ? _value.grn_name
          : grn_name // ignore: cast_nullable_to_non_nullable
              as String?,
      delivery_name: freezed == delivery_name
          ? _value.delivery_name
          : delivery_name // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeliveryOrderDataImplCopyWith<$Res>
    implements $DeliveryOrderDataCopyWith<$Res> {
  factory _$$DeliveryOrderDataImplCopyWith(_$DeliveryOrderDataImpl value,
          $Res Function(_$DeliveryOrderDataImpl) then) =
      __$$DeliveryOrderDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? picking_id,
      String? picking_name,
      String? grn_name,
      String? delivery_name,
      String? status});
}

/// @nodoc
class __$$DeliveryOrderDataImplCopyWithImpl<$Res>
    extends _$DeliveryOrderDataCopyWithImpl<$Res, _$DeliveryOrderDataImpl>
    implements _$$DeliveryOrderDataImplCopyWith<$Res> {
  __$$DeliveryOrderDataImplCopyWithImpl(_$DeliveryOrderDataImpl _value,
      $Res Function(_$DeliveryOrderDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeliveryOrderData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? picking_id = freezed,
    Object? picking_name = freezed,
    Object? grn_name = freezed,
    Object? delivery_name = freezed,
    Object? status = freezed,
  }) {
    return _then(_$DeliveryOrderDataImpl(
      picking_id: freezed == picking_id
          ? _value.picking_id
          : picking_id // ignore: cast_nullable_to_non_nullable
              as int?,
      picking_name: freezed == picking_name
          ? _value.picking_name
          : picking_name // ignore: cast_nullable_to_non_nullable
              as String?,
      grn_name: freezed == grn_name
          ? _value.grn_name
          : grn_name // ignore: cast_nullable_to_non_nullable
              as String?,
      delivery_name: freezed == delivery_name
          ? _value.delivery_name
          : delivery_name // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeliveryOrderDataImpl implements _DeliveryOrderData {
  const _$DeliveryOrderDataImpl(
      {this.picking_id,
      this.picking_name,
      this.grn_name,
      this.delivery_name,
      this.status});

  factory _$DeliveryOrderDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeliveryOrderDataImplFromJson(json);

  @override
  final int? picking_id;
  @override
  final String? picking_name;
  @override
  final String? grn_name;
  @override
  final String? delivery_name;
  @override
  final String? status;

  @override
  String toString() {
    return 'DeliveryOrderData(picking_id: $picking_id, picking_name: $picking_name, grn_name: $grn_name, delivery_name: $delivery_name, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryOrderDataImpl &&
            (identical(other.picking_id, picking_id) ||
                other.picking_id == picking_id) &&
            (identical(other.picking_name, picking_name) ||
                other.picking_name == picking_name) &&
            (identical(other.grn_name, grn_name) ||
                other.grn_name == grn_name) &&
            (identical(other.delivery_name, delivery_name) ||
                other.delivery_name == delivery_name) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, picking_id, picking_name, grn_name, delivery_name, status);

  /// Create a copy of DeliveryOrderData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryOrderDataImplCopyWith<_$DeliveryOrderDataImpl> get copyWith =>
      __$$DeliveryOrderDataImplCopyWithImpl<_$DeliveryOrderDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeliveryOrderDataImplToJson(
      this,
    );
  }
}

abstract class _DeliveryOrderData implements DeliveryOrderData {
  const factory _DeliveryOrderData(
      {final int? picking_id,
      final String? picking_name,
      final String? grn_name,
      final String? delivery_name,
      final String? status}) = _$DeliveryOrderDataImpl;

  factory _DeliveryOrderData.fromJson(Map<String, dynamic> json) =
      _$DeliveryOrderDataImpl.fromJson;

  @override
  int? get picking_id;
  @override
  String? get picking_name;
  @override
  String? get grn_name;
  @override
  String? get delivery_name;
  @override
  String? get status;

  /// Create a copy of DeliveryOrderData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeliveryOrderDataImplCopyWith<_$DeliveryOrderDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
