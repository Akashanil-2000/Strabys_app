// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recieve_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RecieveModel _$RecieveModelFromJson(Map<String, dynamic> json) {
  return _RecieveModel.fromJson(json);
}

/// @nodoc
mixin _$RecieveModel {
  String? get jsonrpc => throw _privateConstructorUsedError; // Id? id,
  Result? get result => throw _privateConstructorUsedError;

  /// Serializes this RecieveModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RecieveModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecieveModelCopyWith<RecieveModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecieveModelCopyWith<$Res> {
  factory $RecieveModelCopyWith(
          RecieveModel value, $Res Function(RecieveModel) then) =
      _$RecieveModelCopyWithImpl<$Res, RecieveModel>;
  @useResult
  $Res call({String? jsonrpc, Result? result});

  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$RecieveModelCopyWithImpl<$Res, $Val extends RecieveModel>
    implements $RecieveModelCopyWith<$Res> {
  _$RecieveModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecieveModel
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

  /// Create a copy of RecieveModel
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
abstract class _$$RecieveModelImplCopyWith<$Res>
    implements $RecieveModelCopyWith<$Res> {
  factory _$$RecieveModelImplCopyWith(
          _$RecieveModelImpl value, $Res Function(_$RecieveModelImpl) then) =
      __$$RecieveModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? jsonrpc, Result? result});

  @override
  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$RecieveModelImplCopyWithImpl<$Res>
    extends _$RecieveModelCopyWithImpl<$Res, _$RecieveModelImpl>
    implements _$$RecieveModelImplCopyWith<$Res> {
  __$$RecieveModelImplCopyWithImpl(
      _$RecieveModelImpl _value, $Res Function(_$RecieveModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecieveModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jsonrpc = freezed,
    Object? result = freezed,
  }) {
    return _then(_$RecieveModelImpl(
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
class _$RecieveModelImpl implements _RecieveModel {
  const _$RecieveModelImpl({this.jsonrpc, this.result});

  factory _$RecieveModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecieveModelImplFromJson(json);

  @override
  final String? jsonrpc;
// Id? id,
  @override
  final Result? result;

  @override
  String toString() {
    return 'RecieveModel(jsonrpc: $jsonrpc, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecieveModelImpl &&
            (identical(other.jsonrpc, jsonrpc) || other.jsonrpc == jsonrpc) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, jsonrpc, result);

  /// Create a copy of RecieveModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecieveModelImplCopyWith<_$RecieveModelImpl> get copyWith =>
      __$$RecieveModelImplCopyWithImpl<_$RecieveModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecieveModelImplToJson(
      this,
    );
  }
}

abstract class _RecieveModel implements RecieveModel {
  const factory _RecieveModel({final String? jsonrpc, final Result? result}) =
      _$RecieveModelImpl;

  factory _RecieveModel.fromJson(Map<String, dynamic> json) =
      _$RecieveModelImpl.fromJson;

  @override
  String? get jsonrpc; // Id? id,
  @override
  Result? get result;

  /// Create a copy of RecieveModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecieveModelImplCopyWith<_$RecieveModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  int? get status => throw _privateConstructorUsedError;
  List<PackingData>? get packing_data => throw _privateConstructorUsedError;

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
  $Res call({int? status, List<PackingData>? packing_data});
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
    Object? packing_data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      packing_data: freezed == packing_data
          ? _value.packing_data
          : packing_data // ignore: cast_nullable_to_non_nullable
              as List<PackingData>?,
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
  $Res call({int? status, List<PackingData>? packing_data});
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
    Object? packing_data = freezed,
  }) {
    return _then(_$ResultImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      packing_data: freezed == packing_data
          ? _value._packing_data
          : packing_data // ignore: cast_nullable_to_non_nullable
              as List<PackingData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultImpl implements _Result {
  const _$ResultImpl({this.status, final List<PackingData>? packing_data})
      : _packing_data = packing_data;

  factory _$ResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultImplFromJson(json);

  @override
  final int? status;
  final List<PackingData>? _packing_data;
  @override
  List<PackingData>? get packing_data {
    final value = _packing_data;
    if (value == null) return null;
    if (_packing_data is EqualUnmodifiableListView) return _packing_data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Result(status: $status, packing_data: $packing_data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._packing_data, _packing_data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_packing_data));

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
      final List<PackingData>? packing_data}) = _$ResultImpl;

  factory _Result.fromJson(Map<String, dynamic> json) = _$ResultImpl.fromJson;

  @override
  int? get status;
  @override
  List<PackingData>? get packing_data;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PackingData _$PackingDataFromJson(Map<String, dynamic> json) {
  return _PackingData.fromJson(json);
}

/// @nodoc
mixin _$PackingData {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get customer_id => throw _privateConstructorUsedError;
  String? get customer_name => throw _privateConstructorUsedError;
  String? get inbounding_type => throw _privateConstructorUsedError;
  String? get inbounding_no => throw _privateConstructorUsedError;
  String? get gate_in_date => throw _privateConstructorUsedError;
  Warehouse? get warehouse => throw _privateConstructorUsedError;

  /// Serializes this PackingData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PackingData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PackingDataCopyWith<PackingData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackingDataCopyWith<$Res> {
  factory $PackingDataCopyWith(
          PackingData value, $Res Function(PackingData) then) =
      _$PackingDataCopyWithImpl<$Res, PackingData>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      int? customer_id,
      String? customer_name,
      String? inbounding_type,
      String? inbounding_no,
      String? gate_in_date,
      Warehouse? warehouse});

  $WarehouseCopyWith<$Res>? get warehouse;
}

/// @nodoc
class _$PackingDataCopyWithImpl<$Res, $Val extends PackingData>
    implements $PackingDataCopyWith<$Res> {
  _$PackingDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PackingData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? customer_id = freezed,
    Object? customer_name = freezed,
    Object? inbounding_type = freezed,
    Object? inbounding_no = freezed,
    Object? gate_in_date = freezed,
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
      inbounding_type: freezed == inbounding_type
          ? _value.inbounding_type
          : inbounding_type // ignore: cast_nullable_to_non_nullable
              as String?,
      inbounding_no: freezed == inbounding_no
          ? _value.inbounding_no
          : inbounding_no // ignore: cast_nullable_to_non_nullable
              as String?,
      gate_in_date: freezed == gate_in_date
          ? _value.gate_in_date
          : gate_in_date // ignore: cast_nullable_to_non_nullable
              as String?,
      warehouse: freezed == warehouse
          ? _value.warehouse
          : warehouse // ignore: cast_nullable_to_non_nullable
              as Warehouse?,
    ) as $Val);
  }

  /// Create a copy of PackingData
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
abstract class _$$PackingDataImplCopyWith<$Res>
    implements $PackingDataCopyWith<$Res> {
  factory _$$PackingDataImplCopyWith(
          _$PackingDataImpl value, $Res Function(_$PackingDataImpl) then) =
      __$$PackingDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      int? customer_id,
      String? customer_name,
      String? inbounding_type,
      String? inbounding_no,
      String? gate_in_date,
      Warehouse? warehouse});

  @override
  $WarehouseCopyWith<$Res>? get warehouse;
}

/// @nodoc
class __$$PackingDataImplCopyWithImpl<$Res>
    extends _$PackingDataCopyWithImpl<$Res, _$PackingDataImpl>
    implements _$$PackingDataImplCopyWith<$Res> {
  __$$PackingDataImplCopyWithImpl(
      _$PackingDataImpl _value, $Res Function(_$PackingDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PackingData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? customer_id = freezed,
    Object? customer_name = freezed,
    Object? inbounding_type = freezed,
    Object? inbounding_no = freezed,
    Object? gate_in_date = freezed,
    Object? warehouse = freezed,
  }) {
    return _then(_$PackingDataImpl(
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
      inbounding_type: freezed == inbounding_type
          ? _value.inbounding_type
          : inbounding_type // ignore: cast_nullable_to_non_nullable
              as String?,
      inbounding_no: freezed == inbounding_no
          ? _value.inbounding_no
          : inbounding_no // ignore: cast_nullable_to_non_nullable
              as String?,
      gate_in_date: freezed == gate_in_date
          ? _value.gate_in_date
          : gate_in_date // ignore: cast_nullable_to_non_nullable
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
class _$PackingDataImpl implements _PackingData {
  const _$PackingDataImpl(
      {this.id,
      this.name,
      this.customer_id,
      this.customer_name,
      this.inbounding_type,
      this.inbounding_no,
      this.gate_in_date,
      this.warehouse});

  factory _$PackingDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PackingDataImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final int? customer_id;
  @override
  final String? customer_name;
  @override
  final String? inbounding_type;
  @override
  final String? inbounding_no;
  @override
  final String? gate_in_date;
  @override
  final Warehouse? warehouse;

  @override
  String toString() {
    return 'PackingData(id: $id, name: $name, customer_id: $customer_id, customer_name: $customer_name, inbounding_type: $inbounding_type, inbounding_no: $inbounding_no, gate_in_date: $gate_in_date, warehouse: $warehouse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackingDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.customer_id, customer_id) ||
                other.customer_id == customer_id) &&
            (identical(other.customer_name, customer_name) ||
                other.customer_name == customer_name) &&
            (identical(other.inbounding_type, inbounding_type) ||
                other.inbounding_type == inbounding_type) &&
            (identical(other.inbounding_no, inbounding_no) ||
                other.inbounding_no == inbounding_no) &&
            (identical(other.gate_in_date, gate_in_date) ||
                other.gate_in_date == gate_in_date) &&
            (identical(other.warehouse, warehouse) ||
                other.warehouse == warehouse));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, customer_id,
      customer_name, inbounding_type, inbounding_no, gate_in_date, warehouse);

  /// Create a copy of PackingData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PackingDataImplCopyWith<_$PackingDataImpl> get copyWith =>
      __$$PackingDataImplCopyWithImpl<_$PackingDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PackingDataImplToJson(
      this,
    );
  }
}

abstract class _PackingData implements PackingData {
  const factory _PackingData(
      {final int? id,
      final String? name,
      final int? customer_id,
      final String? customer_name,
      final String? inbounding_type,
      final String? inbounding_no,
      final String? gate_in_date,
      final Warehouse? warehouse}) = _$PackingDataImpl;

  factory _PackingData.fromJson(Map<String, dynamic> json) =
      _$PackingDataImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  int? get customer_id;
  @override
  String? get customer_name;
  @override
  String? get inbounding_type;
  @override
  String? get inbounding_no;
  @override
  String? get gate_in_date;
  @override
  Warehouse? get warehouse;

  /// Create a copy of PackingData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PackingDataImplCopyWith<_$PackingDataImpl> get copyWith =>
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
