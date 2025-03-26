// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeliveryModel _$DeliveryModelFromJson(Map<String, dynamic> json) {
  return _DeliveryModel.fromJson(json);
}

/// @nodoc
mixin _$DeliveryModel {
  String? get jsonrpc => throw _privateConstructorUsedError; // Id? id,
  Result? get result => throw _privateConstructorUsedError;

  /// Serializes this DeliveryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeliveryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeliveryModelCopyWith<DeliveryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryModelCopyWith<$Res> {
  factory $DeliveryModelCopyWith(
          DeliveryModel value, $Res Function(DeliveryModel) then) =
      _$DeliveryModelCopyWithImpl<$Res, DeliveryModel>;
  @useResult
  $Res call({String? jsonrpc, Result? result});

  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$DeliveryModelCopyWithImpl<$Res, $Val extends DeliveryModel>
    implements $DeliveryModelCopyWith<$Res> {
  _$DeliveryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeliveryModel
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

  /// Create a copy of DeliveryModel
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
abstract class _$$DeliveryModelImplCopyWith<$Res>
    implements $DeliveryModelCopyWith<$Res> {
  factory _$$DeliveryModelImplCopyWith(
          _$DeliveryModelImpl value, $Res Function(_$DeliveryModelImpl) then) =
      __$$DeliveryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? jsonrpc, Result? result});

  @override
  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$DeliveryModelImplCopyWithImpl<$Res>
    extends _$DeliveryModelCopyWithImpl<$Res, _$DeliveryModelImpl>
    implements _$$DeliveryModelImplCopyWith<$Res> {
  __$$DeliveryModelImplCopyWithImpl(
      _$DeliveryModelImpl _value, $Res Function(_$DeliveryModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeliveryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jsonrpc = freezed,
    Object? result = freezed,
  }) {
    return _then(_$DeliveryModelImpl(
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
class _$DeliveryModelImpl implements _DeliveryModel {
  const _$DeliveryModelImpl({this.jsonrpc, this.result});

  factory _$DeliveryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeliveryModelImplFromJson(json);

  @override
  final String? jsonrpc;
// Id? id,
  @override
  final Result? result;

  @override
  String toString() {
    return 'DeliveryModel(jsonrpc: $jsonrpc, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryModelImpl &&
            (identical(other.jsonrpc, jsonrpc) || other.jsonrpc == jsonrpc) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, jsonrpc, result);

  /// Create a copy of DeliveryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryModelImplCopyWith<_$DeliveryModelImpl> get copyWith =>
      __$$DeliveryModelImplCopyWithImpl<_$DeliveryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeliveryModelImplToJson(
      this,
    );
  }
}

abstract class _DeliveryModel implements DeliveryModel {
  const factory _DeliveryModel({final String? jsonrpc, final Result? result}) =
      _$DeliveryModelImpl;

  factory _DeliveryModel.fromJson(Map<String, dynamic> json) =
      _$DeliveryModelImpl.fromJson;

  @override
  String? get jsonrpc; // Id? id,
  @override
  Result? get result;

  /// Create a copy of DeliveryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeliveryModelImplCopyWith<_$DeliveryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  int? get status => throw _privateConstructorUsedError;
  List<DeliveryData>? get delivery_data => throw _privateConstructorUsedError;

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
  $Res call({int? status, List<DeliveryData>? delivery_data});
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
    Object? delivery_data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      delivery_data: freezed == delivery_data
          ? _value.delivery_data
          : delivery_data // ignore: cast_nullable_to_non_nullable
              as List<DeliveryData>?,
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
  $Res call({int? status, List<DeliveryData>? delivery_data});
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
    Object? delivery_data = freezed,
  }) {
    return _then(_$ResultImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      delivery_data: freezed == delivery_data
          ? _value._delivery_data
          : delivery_data // ignore: cast_nullable_to_non_nullable
              as List<DeliveryData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultImpl implements _Result {
  const _$ResultImpl({this.status, final List<DeliveryData>? delivery_data})
      : _delivery_data = delivery_data;

  factory _$ResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultImplFromJson(json);

  @override
  final int? status;
  final List<DeliveryData>? _delivery_data;
  @override
  List<DeliveryData>? get delivery_data {
    final value = _delivery_data;
    if (value == null) return null;
    if (_delivery_data is EqualUnmodifiableListView) return _delivery_data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Result(status: $status, delivery_data: $delivery_data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._delivery_data, _delivery_data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_delivery_data));

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
      final List<DeliveryData>? delivery_data}) = _$ResultImpl;

  factory _Result.fromJson(Map<String, dynamic> json) = _$ResultImpl.fromJson;

  @override
  int? get status;
  @override
  List<DeliveryData>? get delivery_data;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DeliveryData _$DeliveryDataFromJson(Map<String, dynamic> json) {
  return _DeliveryData.fromJson(json);
}

/// @nodoc
mixin _$DeliveryData {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get customer_id => throw _privateConstructorUsedError;
  String? get customer_name => throw _privateConstructorUsedError;
  String? get consignee_name => throw _privateConstructorUsedError;
  Warehouse? get warehouse => throw _privateConstructorUsedError;

  /// Serializes this DeliveryData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeliveryData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeliveryDataCopyWith<DeliveryData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryDataCopyWith<$Res> {
  factory $DeliveryDataCopyWith(
          DeliveryData value, $Res Function(DeliveryData) then) =
      _$DeliveryDataCopyWithImpl<$Res, DeliveryData>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      int? customer_id,
      String? customer_name,
      String? consignee_name,
      Warehouse? warehouse});

  $WarehouseCopyWith<$Res>? get warehouse;
}

/// @nodoc
class _$DeliveryDataCopyWithImpl<$Res, $Val extends DeliveryData>
    implements $DeliveryDataCopyWith<$Res> {
  _$DeliveryDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeliveryData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? customer_id = freezed,
    Object? customer_name = freezed,
    Object? consignee_name = freezed,
    Object? warehouse = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      customer_id: freezed == customer_id
          ? _value.customer_id
          : customer_id // ignore: cast_nullable_to_non_nullable
              as int?,
      customer_name: freezed == customer_name
          ? _value.customer_name
          : customer_name // ignore: cast_nullable_to_non_nullable
              as String?,
      consignee_name: freezed == consignee_name
          ? _value.consignee_name
          : consignee_name // ignore: cast_nullable_to_non_nullable
              as String?,
      warehouse: freezed == warehouse
          ? _value.warehouse
          : warehouse // ignore: cast_nullable_to_non_nullable
              as Warehouse?,
    ) as $Val);
  }

  /// Create a copy of DeliveryData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WarehouseCopyWith<$Res>? get warehouse {
    if (_value.warehouse == null) {
      return null;
    }

    return $WarehouseCopyWith<$Res>(_value.warehouse!, (value) {
      return _then(_value.copyWith(warehouse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DeliveryDataImplCopyWith<$Res>
    implements $DeliveryDataCopyWith<$Res> {
  factory _$$DeliveryDataImplCopyWith(
          _$DeliveryDataImpl value, $Res Function(_$DeliveryDataImpl) then) =
      __$$DeliveryDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      int? customer_id,
      String? customer_name,
      String? consignee_name,
      Warehouse? warehouse});

  @override
  $WarehouseCopyWith<$Res>? get warehouse;
}

/// @nodoc
class __$$DeliveryDataImplCopyWithImpl<$Res>
    extends _$DeliveryDataCopyWithImpl<$Res, _$DeliveryDataImpl>
    implements _$$DeliveryDataImplCopyWith<$Res> {
  __$$DeliveryDataImplCopyWithImpl(
      _$DeliveryDataImpl _value, $Res Function(_$DeliveryDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeliveryData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? customer_id = freezed,
    Object? customer_name = freezed,
    Object? consignee_name = freezed,
    Object? warehouse = freezed,
  }) {
    return _then(_$DeliveryDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      customer_id: freezed == customer_id
          ? _value.customer_id
          : customer_id // ignore: cast_nullable_to_non_nullable
              as int?,
      customer_name: freezed == customer_name
          ? _value.customer_name
          : customer_name // ignore: cast_nullable_to_non_nullable
              as String?,
      consignee_name: freezed == consignee_name
          ? _value.consignee_name
          : consignee_name // ignore: cast_nullable_to_non_nullable
              as String?,
      warehouse: freezed == warehouse
          ? _value.warehouse
          : warehouse // ignore: cast_nullable_to_non_nullable
              as Warehouse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeliveryDataImpl implements _DeliveryData {
  const _$DeliveryDataImpl(
      {this.id,
      this.name,
      this.customer_id,
      this.customer_name,
      this.consignee_name,
      this.warehouse});

  factory _$DeliveryDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeliveryDataImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final int? customer_id;
  @override
  final String? customer_name;
  @override
  final String? consignee_name;
  @override
  final Warehouse? warehouse;

  @override
  String toString() {
    return 'DeliveryData(id: $id, name: $name, customer_id: $customer_id, customer_name: $customer_name, consignee_name: $consignee_name, warehouse: $warehouse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.customer_id, customer_id) ||
                other.customer_id == customer_id) &&
            (identical(other.customer_name, customer_name) ||
                other.customer_name == customer_name) &&
            (identical(other.consignee_name, consignee_name) ||
                other.consignee_name == consignee_name) &&
            (identical(other.warehouse, warehouse) ||
                other.warehouse == warehouse));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, customer_id,
      customer_name, consignee_name, warehouse);

  /// Create a copy of DeliveryData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryDataImplCopyWith<_$DeliveryDataImpl> get copyWith =>
      __$$DeliveryDataImplCopyWithImpl<_$DeliveryDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeliveryDataImplToJson(
      this,
    );
  }
}

abstract class _DeliveryData implements DeliveryData {
  const factory _DeliveryData(
      {final int? id,
      final String? name,
      final int? customer_id,
      final String? customer_name,
      final String? consignee_name,
      final Warehouse? warehouse}) = _$DeliveryDataImpl;

  factory _DeliveryData.fromJson(Map<String, dynamic> json) =
      _$DeliveryDataImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  int? get customer_id;
  @override
  String? get customer_name;
  @override
  String? get consignee_name;
  @override
  Warehouse? get warehouse;

  /// Create a copy of DeliveryData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeliveryDataImplCopyWith<_$DeliveryDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Warehouse _$WarehouseFromJson(Map<String, dynamic> json) {
  return _Warehouse.fromJson(json);
}

/// @nodoc
mixin _$Warehouse {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this Warehouse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Warehouse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WarehouseCopyWith<Warehouse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WarehouseCopyWith<$Res> {
  factory $WarehouseCopyWith(Warehouse value, $Res Function(Warehouse) then) =
      _$WarehouseCopyWithImpl<$Res, Warehouse>;
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class _$WarehouseCopyWithImpl<$Res, $Val extends Warehouse>
    implements $WarehouseCopyWith<$Res> {
  _$WarehouseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Warehouse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WarehouseImplCopyWith<$Res>
    implements $WarehouseCopyWith<$Res> {
  factory _$$WarehouseImplCopyWith(
          _$WarehouseImpl value, $Res Function(_$WarehouseImpl) then) =
      __$$WarehouseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class __$$WarehouseImplCopyWithImpl<$Res>
    extends _$WarehouseCopyWithImpl<$Res, _$WarehouseImpl>
    implements _$$WarehouseImplCopyWith<$Res> {
  __$$WarehouseImplCopyWithImpl(
      _$WarehouseImpl _value, $Res Function(_$WarehouseImpl) _then)
      : super(_value, _then);

  /// Create a copy of Warehouse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$WarehouseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WarehouseImpl implements _Warehouse {
  const _$WarehouseImpl({this.id, this.name});

  factory _$WarehouseImpl.fromJson(Map<String, dynamic> json) =>
      _$$WarehouseImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'Warehouse(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WarehouseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of Warehouse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WarehouseImplCopyWith<_$WarehouseImpl> get copyWith =>
      __$$WarehouseImplCopyWithImpl<_$WarehouseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WarehouseImplToJson(
      this,
    );
  }
}

abstract class _Warehouse implements Warehouse {
  const factory _Warehouse({final int? id, final String? name}) =
      _$WarehouseImpl;

  factory _Warehouse.fromJson(Map<String, dynamic> json) =
      _$WarehouseImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;

  /// Create a copy of Warehouse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WarehouseImplCopyWith<_$WarehouseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
