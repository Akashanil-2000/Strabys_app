// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'warehouse_location_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WarehouseLocationListModel _$WarehouseLocationListModelFromJson(
    Map<String, dynamic> json) {
  return _WarehouseLocationListModel.fromJson(json);
}

/// @nodoc
mixin _$WarehouseLocationListModel {
  String? get jsonrpc => throw _privateConstructorUsedError;
  Result? get result => throw _privateConstructorUsedError;

  /// Serializes this WarehouseLocationListModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WarehouseLocationListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WarehouseLocationListModelCopyWith<WarehouseLocationListModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WarehouseLocationListModelCopyWith<$Res> {
  factory $WarehouseLocationListModelCopyWith(WarehouseLocationListModel value,
          $Res Function(WarehouseLocationListModel) then) =
      _$WarehouseLocationListModelCopyWithImpl<$Res,
          WarehouseLocationListModel>;
  @useResult
  $Res call({String? jsonrpc, Result? result});

  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$WarehouseLocationListModelCopyWithImpl<$Res,
        $Val extends WarehouseLocationListModel>
    implements $WarehouseLocationListModelCopyWith<$Res> {
  _$WarehouseLocationListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WarehouseLocationListModel
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

  /// Create a copy of WarehouseLocationListModel
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
abstract class _$$WarehouseLocationListModelImplCopyWith<$Res>
    implements $WarehouseLocationListModelCopyWith<$Res> {
  factory _$$WarehouseLocationListModelImplCopyWith(
          _$WarehouseLocationListModelImpl value,
          $Res Function(_$WarehouseLocationListModelImpl) then) =
      __$$WarehouseLocationListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? jsonrpc, Result? result});

  @override
  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$WarehouseLocationListModelImplCopyWithImpl<$Res>
    extends _$WarehouseLocationListModelCopyWithImpl<$Res,
        _$WarehouseLocationListModelImpl>
    implements _$$WarehouseLocationListModelImplCopyWith<$Res> {
  __$$WarehouseLocationListModelImplCopyWithImpl(
      _$WarehouseLocationListModelImpl _value,
      $Res Function(_$WarehouseLocationListModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of WarehouseLocationListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jsonrpc = freezed,
    Object? result = freezed,
  }) {
    return _then(_$WarehouseLocationListModelImpl(
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
class _$WarehouseLocationListModelImpl implements _WarehouseLocationListModel {
  const _$WarehouseLocationListModelImpl({this.jsonrpc, this.result});

  factory _$WarehouseLocationListModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$WarehouseLocationListModelImplFromJson(json);

  @override
  final String? jsonrpc;
  @override
  final Result? result;

  @override
  String toString() {
    return 'WarehouseLocationListModel(jsonrpc: $jsonrpc, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WarehouseLocationListModelImpl &&
            (identical(other.jsonrpc, jsonrpc) || other.jsonrpc == jsonrpc) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, jsonrpc, result);

  /// Create a copy of WarehouseLocationListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WarehouseLocationListModelImplCopyWith<_$WarehouseLocationListModelImpl>
      get copyWith => __$$WarehouseLocationListModelImplCopyWithImpl<
          _$WarehouseLocationListModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WarehouseLocationListModelImplToJson(
      this,
    );
  }
}

abstract class _WarehouseLocationListModel
    implements WarehouseLocationListModel {
  const factory _WarehouseLocationListModel(
      {final String? jsonrpc,
      final Result? result}) = _$WarehouseLocationListModelImpl;

  factory _WarehouseLocationListModel.fromJson(Map<String, dynamic> json) =
      _$WarehouseLocationListModelImpl.fromJson;

  @override
  String? get jsonrpc;
  @override
  Result? get result;

  /// Create a copy of WarehouseLocationListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WarehouseLocationListModelImplCopyWith<_$WarehouseLocationListModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  int? get status => throw _privateConstructorUsedError;
  String? get response => throw _privateConstructorUsedError;
  double? get balance_qty => throw _privateConstructorUsedError;
  List<LocationList>? get location_list => throw _privateConstructorUsedError;
  List<ProductQtyList>? get product_qty_list =>
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
  $Res call(
      {int? status,
      String? response,
      double? balance_qty,
      List<LocationList>? location_list,
      List<ProductQtyList>? product_qty_list});
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
    Object? response = freezed,
    Object? balance_qty = freezed,
    Object? location_list = freezed,
    Object? product_qty_list = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String?,
      balance_qty: freezed == balance_qty
          ? _value.balance_qty
          : balance_qty // ignore: cast_nullable_to_non_nullable
              as double?,
      location_list: freezed == location_list
          ? _value.location_list
          : location_list // ignore: cast_nullable_to_non_nullable
              as List<LocationList>?,
      product_qty_list: freezed == product_qty_list
          ? _value.product_qty_list
          : product_qty_list // ignore: cast_nullable_to_non_nullable
              as List<ProductQtyList>?,
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
  $Res call(
      {int? status,
      String? response,
      double? balance_qty,
      List<LocationList>? location_list,
      List<ProductQtyList>? product_qty_list});
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
    Object? response = freezed,
    Object? balance_qty = freezed,
    Object? location_list = freezed,
    Object? product_qty_list = freezed,
  }) {
    return _then(_$ResultImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String?,
      balance_qty: freezed == balance_qty
          ? _value.balance_qty
          : balance_qty // ignore: cast_nullable_to_non_nullable
              as double?,
      location_list: freezed == location_list
          ? _value._location_list
          : location_list // ignore: cast_nullable_to_non_nullable
              as List<LocationList>?,
      product_qty_list: freezed == product_qty_list
          ? _value._product_qty_list
          : product_qty_list // ignore: cast_nullable_to_non_nullable
              as List<ProductQtyList>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultImpl implements _Result {
  const _$ResultImpl(
      {this.status,
      this.response,
      this.balance_qty,
      final List<LocationList>? location_list,
      final List<ProductQtyList>? product_qty_list})
      : _location_list = location_list,
        _product_qty_list = product_qty_list;

  factory _$ResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultImplFromJson(json);

  @override
  final int? status;
  @override
  final String? response;
  @override
  final double? balance_qty;
  final List<LocationList>? _location_list;
  @override
  List<LocationList>? get location_list {
    final value = _location_list;
    if (value == null) return null;
    if (_location_list is EqualUnmodifiableListView) return _location_list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ProductQtyList>? _product_qty_list;
  @override
  List<ProductQtyList>? get product_qty_list {
    final value = _product_qty_list;
    if (value == null) return null;
    if (_product_qty_list is EqualUnmodifiableListView)
      return _product_qty_list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Result(status: $status, response: $response, balance_qty: $balance_qty, location_list: $location_list, product_qty_list: $product_qty_list)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.balance_qty, balance_qty) ||
                other.balance_qty == balance_qty) &&
            const DeepCollectionEquality()
                .equals(other._location_list, _location_list) &&
            const DeepCollectionEquality()
                .equals(other._product_qty_list, _product_qty_list));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      response,
      balance_qty,
      const DeepCollectionEquality().hash(_location_list),
      const DeepCollectionEquality().hash(_product_qty_list));

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
      final String? response,
      final double? balance_qty,
      final List<LocationList>? location_list,
      final List<ProductQtyList>? product_qty_list}) = _$ResultImpl;

  factory _Result.fromJson(Map<String, dynamic> json) = _$ResultImpl.fromJson;

  @override
  int? get status;
  @override
  String? get response;
  @override
  double? get balance_qty;
  @override
  List<LocationList>? get location_list;
  @override
  List<ProductQtyList>? get product_qty_list;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LocationList _$LocationListFromJson(Map<String, dynamic> json) {
  return _LocationList.fromJson(json);
}

/// @nodoc
mixin _$LocationList {
  int? get location_id => throw _privateConstructorUsedError;
  String? get location_name => throw _privateConstructorUsedError;
  String? get location_barcode => throw _privateConstructorUsedError;
  int? get lot_id => throw _privateConstructorUsedError;
  String? get lot_name => throw _privateConstructorUsedError;
  String? get warehouse_name => throw _privateConstructorUsedError;
  double? get available_qty => throw _privateConstructorUsedError;

  /// Serializes this LocationList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocationList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationListCopyWith<LocationList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationListCopyWith<$Res> {
  factory $LocationListCopyWith(
          LocationList value, $Res Function(LocationList) then) =
      _$LocationListCopyWithImpl<$Res, LocationList>;
  @useResult
  $Res call(
      {int? location_id,
      String? location_name,
      String? location_barcode,
      int? lot_id,
      String? lot_name,
      String? warehouse_name,
      double? available_qty});
}

/// @nodoc
class _$LocationListCopyWithImpl<$Res, $Val extends LocationList>
    implements $LocationListCopyWith<$Res> {
  _$LocationListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location_id = freezed,
    Object? location_name = freezed,
    Object? location_barcode = freezed,
    Object? lot_id = freezed,
    Object? lot_name = freezed,
    Object? warehouse_name = freezed,
    Object? available_qty = freezed,
  }) {
    return _then(_value.copyWith(
      location_id: freezed == location_id
          ? _value.location_id
          : location_id // ignore: cast_nullable_to_non_nullable
              as int?,
      location_name: freezed == location_name
          ? _value.location_name
          : location_name // ignore: cast_nullable_to_non_nullable
              as String?,
      location_barcode: freezed == location_barcode
          ? _value.location_barcode
          : location_barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      lot_id: freezed == lot_id
          ? _value.lot_id
          : lot_id // ignore: cast_nullable_to_non_nullable
              as int?,
      lot_name: freezed == lot_name
          ? _value.lot_name
          : lot_name // ignore: cast_nullable_to_non_nullable
              as String?,
      warehouse_name: freezed == warehouse_name
          ? _value.warehouse_name
          : warehouse_name // ignore: cast_nullable_to_non_nullable
              as String?,
      available_qty: freezed == available_qty
          ? _value.available_qty
          : available_qty // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationListImplCopyWith<$Res>
    implements $LocationListCopyWith<$Res> {
  factory _$$LocationListImplCopyWith(
          _$LocationListImpl value, $Res Function(_$LocationListImpl) then) =
      __$$LocationListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? location_id,
      String? location_name,
      String? location_barcode,
      int? lot_id,
      String? lot_name,
      String? warehouse_name,
      double? available_qty});
}

/// @nodoc
class __$$LocationListImplCopyWithImpl<$Res>
    extends _$LocationListCopyWithImpl<$Res, _$LocationListImpl>
    implements _$$LocationListImplCopyWith<$Res> {
  __$$LocationListImplCopyWithImpl(
      _$LocationListImpl _value, $Res Function(_$LocationListImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocationList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location_id = freezed,
    Object? location_name = freezed,
    Object? location_barcode = freezed,
    Object? lot_id = freezed,
    Object? lot_name = freezed,
    Object? warehouse_name = freezed,
    Object? available_qty = freezed,
  }) {
    return _then(_$LocationListImpl(
      location_id: freezed == location_id
          ? _value.location_id
          : location_id // ignore: cast_nullable_to_non_nullable
              as int?,
      location_name: freezed == location_name
          ? _value.location_name
          : location_name // ignore: cast_nullable_to_non_nullable
              as String?,
      location_barcode: freezed == location_barcode
          ? _value.location_barcode
          : location_barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      lot_id: freezed == lot_id
          ? _value.lot_id
          : lot_id // ignore: cast_nullable_to_non_nullable
              as int?,
      lot_name: freezed == lot_name
          ? _value.lot_name
          : lot_name // ignore: cast_nullable_to_non_nullable
              as String?,
      warehouse_name: freezed == warehouse_name
          ? _value.warehouse_name
          : warehouse_name // ignore: cast_nullable_to_non_nullable
              as String?,
      available_qty: freezed == available_qty
          ? _value.available_qty
          : available_qty // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationListImpl implements _LocationList {
  const _$LocationListImpl(
      {this.location_id,
      this.location_name,
      this.location_barcode,
      this.lot_id,
      this.lot_name,
      this.warehouse_name,
      this.available_qty});

  factory _$LocationListImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationListImplFromJson(json);

  @override
  final int? location_id;
  @override
  final String? location_name;
  @override
  final String? location_barcode;
  @override
  final int? lot_id;
  @override
  final String? lot_name;
  @override
  final String? warehouse_name;
  @override
  final double? available_qty;

  @override
  String toString() {
    return 'LocationList(location_id: $location_id, location_name: $location_name, location_barcode: $location_barcode, lot_id: $lot_id, lot_name: $lot_name, warehouse_name: $warehouse_name, available_qty: $available_qty)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationListImpl &&
            (identical(other.location_id, location_id) ||
                other.location_id == location_id) &&
            (identical(other.location_name, location_name) ||
                other.location_name == location_name) &&
            (identical(other.location_barcode, location_barcode) ||
                other.location_barcode == location_barcode) &&
            (identical(other.lot_id, lot_id) || other.lot_id == lot_id) &&
            (identical(other.lot_name, lot_name) ||
                other.lot_name == lot_name) &&
            (identical(other.warehouse_name, warehouse_name) ||
                other.warehouse_name == warehouse_name) &&
            (identical(other.available_qty, available_qty) ||
                other.available_qty == available_qty));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, location_id, location_name,
      location_barcode, lot_id, lot_name, warehouse_name, available_qty);

  /// Create a copy of LocationList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationListImplCopyWith<_$LocationListImpl> get copyWith =>
      __$$LocationListImplCopyWithImpl<_$LocationListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationListImplToJson(
      this,
    );
  }
}

abstract class _LocationList implements LocationList {
  const factory _LocationList(
      {final int? location_id,
      final String? location_name,
      final String? location_barcode,
      final int? lot_id,
      final String? lot_name,
      final String? warehouse_name,
      final double? available_qty}) = _$LocationListImpl;

  factory _LocationList.fromJson(Map<String, dynamic> json) =
      _$LocationListImpl.fromJson;

  @override
  int? get location_id;
  @override
  String? get location_name;
  @override
  String? get location_barcode;
  @override
  int? get lot_id;
  @override
  String? get lot_name;
  @override
  String? get warehouse_name;
  @override
  double? get available_qty;

  /// Create a copy of LocationList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationListImplCopyWith<_$LocationListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductQtyList _$ProductQtyListFromJson(Map<String, dynamic> json) {
  return _ProductQtyList.fromJson(json);
}

/// @nodoc
mixin _$ProductQtyList {
  int? get lot_id => throw _privateConstructorUsedError;
  String? get lot_name => throw _privateConstructorUsedError;
  double? get quantity => throw _privateConstructorUsedError;

  /// Serializes this ProductQtyList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductQtyList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductQtyListCopyWith<ProductQtyList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductQtyListCopyWith<$Res> {
  factory $ProductQtyListCopyWith(
          ProductQtyList value, $Res Function(ProductQtyList) then) =
      _$ProductQtyListCopyWithImpl<$Res, ProductQtyList>;
  @useResult
  $Res call({int? lot_id, String? lot_name, double? quantity});
}

/// @nodoc
class _$ProductQtyListCopyWithImpl<$Res, $Val extends ProductQtyList>
    implements $ProductQtyListCopyWith<$Res> {
  _$ProductQtyListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductQtyList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lot_id = freezed,
    Object? lot_name = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_value.copyWith(
      lot_id: freezed == lot_id
          ? _value.lot_id
          : lot_id // ignore: cast_nullable_to_non_nullable
              as int?,
      lot_name: freezed == lot_name
          ? _value.lot_name
          : lot_name // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductQtyListImplCopyWith<$Res>
    implements $ProductQtyListCopyWith<$Res> {
  factory _$$ProductQtyListImplCopyWith(_$ProductQtyListImpl value,
          $Res Function(_$ProductQtyListImpl) then) =
      __$$ProductQtyListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? lot_id, String? lot_name, double? quantity});
}

/// @nodoc
class __$$ProductQtyListImplCopyWithImpl<$Res>
    extends _$ProductQtyListCopyWithImpl<$Res, _$ProductQtyListImpl>
    implements _$$ProductQtyListImplCopyWith<$Res> {
  __$$ProductQtyListImplCopyWithImpl(
      _$ProductQtyListImpl _value, $Res Function(_$ProductQtyListImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductQtyList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lot_id = freezed,
    Object? lot_name = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_$ProductQtyListImpl(
      lot_id: freezed == lot_id
          ? _value.lot_id
          : lot_id // ignore: cast_nullable_to_non_nullable
              as int?,
      lot_name: freezed == lot_name
          ? _value.lot_name
          : lot_name // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductQtyListImpl implements _ProductQtyList {
  const _$ProductQtyListImpl({this.lot_id, this.lot_name, this.quantity});

  factory _$ProductQtyListImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductQtyListImplFromJson(json);

  @override
  final int? lot_id;
  @override
  final String? lot_name;
  @override
  final double? quantity;

  @override
  String toString() {
    return 'ProductQtyList(lot_id: $lot_id, lot_name: $lot_name, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductQtyListImpl &&
            (identical(other.lot_id, lot_id) || other.lot_id == lot_id) &&
            (identical(other.lot_name, lot_name) ||
                other.lot_name == lot_name) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, lot_id, lot_name, quantity);

  /// Create a copy of ProductQtyList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductQtyListImplCopyWith<_$ProductQtyListImpl> get copyWith =>
      __$$ProductQtyListImplCopyWithImpl<_$ProductQtyListImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductQtyListImplToJson(
      this,
    );
  }
}

abstract class _ProductQtyList implements ProductQtyList {
  const factory _ProductQtyList(
      {final int? lot_id,
      final String? lot_name,
      final double? quantity}) = _$ProductQtyListImpl;

  factory _ProductQtyList.fromJson(Map<String, dynamic> json) =
      _$ProductQtyListImpl.fromJson;

  @override
  int? get lot_id;
  @override
  String? get lot_name;
  @override
  double? get quantity;

  /// Create a copy of ProductQtyList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductQtyListImplCopyWith<_$ProductQtyListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
