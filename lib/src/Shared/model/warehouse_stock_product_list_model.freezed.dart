// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'warehouse_stock_product_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WarehouseStockProductListModel _$WarehouseStockProductListModelFromJson(
    Map<String, dynamic> json) {
  return _WarehouseStockProductListModel.fromJson(json);
}

/// @nodoc
mixin _$WarehouseStockProductListModel {
  String? get jsonrpc => throw _privateConstructorUsedError;
  Result? get result => throw _privateConstructorUsedError;

  /// Serializes this WarehouseStockProductListModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WarehouseStockProductListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WarehouseStockProductListModelCopyWith<WarehouseStockProductListModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WarehouseStockProductListModelCopyWith<$Res> {
  factory $WarehouseStockProductListModelCopyWith(
          WarehouseStockProductListModel value,
          $Res Function(WarehouseStockProductListModel) then) =
      _$WarehouseStockProductListModelCopyWithImpl<$Res,
          WarehouseStockProductListModel>;
  @useResult
  $Res call({String? jsonrpc, Result? result});

  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$WarehouseStockProductListModelCopyWithImpl<$Res,
        $Val extends WarehouseStockProductListModel>
    implements $WarehouseStockProductListModelCopyWith<$Res> {
  _$WarehouseStockProductListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WarehouseStockProductListModel
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

  /// Create a copy of WarehouseStockProductListModel
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
abstract class _$$WarehouseStockProductListModelImplCopyWith<$Res>
    implements $WarehouseStockProductListModelCopyWith<$Res> {
  factory _$$WarehouseStockProductListModelImplCopyWith(
          _$WarehouseStockProductListModelImpl value,
          $Res Function(_$WarehouseStockProductListModelImpl) then) =
      __$$WarehouseStockProductListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? jsonrpc, Result? result});

  @override
  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$WarehouseStockProductListModelImplCopyWithImpl<$Res>
    extends _$WarehouseStockProductListModelCopyWithImpl<$Res,
        _$WarehouseStockProductListModelImpl>
    implements _$$WarehouseStockProductListModelImplCopyWith<$Res> {
  __$$WarehouseStockProductListModelImplCopyWithImpl(
      _$WarehouseStockProductListModelImpl _value,
      $Res Function(_$WarehouseStockProductListModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of WarehouseStockProductListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jsonrpc = freezed,
    Object? result = freezed,
  }) {
    return _then(_$WarehouseStockProductListModelImpl(
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
class _$WarehouseStockProductListModelImpl
    implements _WarehouseStockProductListModel {
  const _$WarehouseStockProductListModelImpl({this.jsonrpc, this.result});

  factory _$WarehouseStockProductListModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$WarehouseStockProductListModelImplFromJson(json);

  @override
  final String? jsonrpc;
  @override
  final Result? result;

  @override
  String toString() {
    return 'WarehouseStockProductListModel(jsonrpc: $jsonrpc, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WarehouseStockProductListModelImpl &&
            (identical(other.jsonrpc, jsonrpc) || other.jsonrpc == jsonrpc) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, jsonrpc, result);

  /// Create a copy of WarehouseStockProductListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WarehouseStockProductListModelImplCopyWith<
          _$WarehouseStockProductListModelImpl>
      get copyWith => __$$WarehouseStockProductListModelImplCopyWithImpl<
          _$WarehouseStockProductListModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WarehouseStockProductListModelImplToJson(
      this,
    );
  }
}

abstract class _WarehouseStockProductListModel
    implements WarehouseStockProductListModel {
  const factory _WarehouseStockProductListModel(
      {final String? jsonrpc,
      final Result? result}) = _$WarehouseStockProductListModelImpl;

  factory _WarehouseStockProductListModel.fromJson(Map<String, dynamic> json) =
      _$WarehouseStockProductListModelImpl.fromJson;

  @override
  String? get jsonrpc;
  @override
  Result? get result;

  /// Create a copy of WarehouseStockProductListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WarehouseStockProductListModelImplCopyWith<
          _$WarehouseStockProductListModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  int? get status => throw _privateConstructorUsedError;
  String? get response => throw _privateConstructorUsedError;
  List<WarehouseStockProductList>? get product_list =>
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
      List<WarehouseStockProductList>? product_list});
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
    Object? product_list = freezed,
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
      product_list: freezed == product_list
          ? _value.product_list
          : product_list // ignore: cast_nullable_to_non_nullable
              as List<WarehouseStockProductList>?,
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
      List<WarehouseStockProductList>? product_list});
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
    Object? product_list = freezed,
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
      product_list: freezed == product_list
          ? _value._product_list
          : product_list // ignore: cast_nullable_to_non_nullable
              as List<WarehouseStockProductList>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultImpl implements _Result {
  const _$ResultImpl(
      {this.status,
      this.response,
      final List<WarehouseStockProductList>? product_list})
      : _product_list = product_list;

  factory _$ResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultImplFromJson(json);

  @override
  final int? status;
  @override
  final String? response;
  final List<WarehouseStockProductList>? _product_list;
  @override
  List<WarehouseStockProductList>? get product_list {
    final value = _product_list;
    if (value == null) return null;
    if (_product_list is EqualUnmodifiableListView) return _product_list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Result(status: $status, response: $response, product_list: $product_list)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.response, response) ||
                other.response == response) &&
            const DeepCollectionEquality()
                .equals(other._product_list, _product_list));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, response,
      const DeepCollectionEquality().hash(_product_list));

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
      final List<WarehouseStockProductList>? product_list}) = _$ResultImpl;

  factory _Result.fromJson(Map<String, dynamic> json) = _$ResultImpl.fromJson;

  @override
  int? get status;
  @override
  String? get response;
  @override
  List<WarehouseStockProductList>? get product_list;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WarehouseStockProductList _$WarehouseStockProductListFromJson(
    Map<String, dynamic> json) {
  return _WarehouseStockProductList.fromJson(json);
}

/// @nodoc
mixin _$WarehouseStockProductList {
  int? get product_id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  double? get product_qty => throw _privateConstructorUsedError;
  double? get scanned_qty => throw _privateConstructorUsedError;
  double? get balance => throw _privateConstructorUsedError;
  String? get internal_ref => throw _privateConstructorUsedError;
  String? get sku_number => throw _privateConstructorUsedError;
  int? get coa_id => throw _privateConstructorUsedError;
  int? get transfer_line_id => throw _privateConstructorUsedError;
  int? get move_id => throw _privateConstructorUsedError;
  String? get coa_name => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;

  /// Serializes this WarehouseStockProductList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WarehouseStockProductList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WarehouseStockProductListCopyWith<WarehouseStockProductList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WarehouseStockProductListCopyWith<$Res> {
  factory $WarehouseStockProductListCopyWith(WarehouseStockProductList value,
          $Res Function(WarehouseStockProductList) then) =
      _$WarehouseStockProductListCopyWithImpl<$Res, WarehouseStockProductList>;
  @useResult
  $Res call(
      {int? product_id,
      String? name,
      double? product_qty,
      double? scanned_qty,
      double? balance,
      String? internal_ref,
      String? sku_number,
      int? coa_id,
      int? transfer_line_id,
      int? move_id,
      String? coa_name,
      String? status});
}

/// @nodoc
class _$WarehouseStockProductListCopyWithImpl<$Res,
        $Val extends WarehouseStockProductList>
    implements $WarehouseStockProductListCopyWith<$Res> {
  _$WarehouseStockProductListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WarehouseStockProductList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product_id = freezed,
    Object? name = freezed,
    Object? product_qty = freezed,
    Object? scanned_qty = freezed,
    Object? balance = freezed,
    Object? internal_ref = freezed,
    Object? sku_number = freezed,
    Object? coa_id = freezed,
    Object? transfer_line_id = freezed,
    Object? move_id = freezed,
    Object? coa_name = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      product_id: freezed == product_id
          ? _value.product_id
          : product_id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      product_qty: freezed == product_qty
          ? _value.product_qty
          : product_qty // ignore: cast_nullable_to_non_nullable
              as double?,
      scanned_qty: freezed == scanned_qty
          ? _value.scanned_qty
          : scanned_qty // ignore: cast_nullable_to_non_nullable
              as double?,
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double?,
      internal_ref: freezed == internal_ref
          ? _value.internal_ref
          : internal_ref // ignore: cast_nullable_to_non_nullable
              as String?,
      sku_number: freezed == sku_number
          ? _value.sku_number
          : sku_number // ignore: cast_nullable_to_non_nullable
              as String?,
      coa_id: freezed == coa_id
          ? _value.coa_id
          : coa_id // ignore: cast_nullable_to_non_nullable
              as int?,
      transfer_line_id: freezed == transfer_line_id
          ? _value.transfer_line_id
          : transfer_line_id // ignore: cast_nullable_to_non_nullable
              as int?,
      move_id: freezed == move_id
          ? _value.move_id
          : move_id // ignore: cast_nullable_to_non_nullable
              as int?,
      coa_name: freezed == coa_name
          ? _value.coa_name
          : coa_name // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WarehouseStockProductListImplCopyWith<$Res>
    implements $WarehouseStockProductListCopyWith<$Res> {
  factory _$$WarehouseStockProductListImplCopyWith(
          _$WarehouseStockProductListImpl value,
          $Res Function(_$WarehouseStockProductListImpl) then) =
      __$$WarehouseStockProductListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? product_id,
      String? name,
      double? product_qty,
      double? scanned_qty,
      double? balance,
      String? internal_ref,
      String? sku_number,
      int? coa_id,
      int? transfer_line_id,
      int? move_id,
      String? coa_name,
      String? status});
}

/// @nodoc
class __$$WarehouseStockProductListImplCopyWithImpl<$Res>
    extends _$WarehouseStockProductListCopyWithImpl<$Res,
        _$WarehouseStockProductListImpl>
    implements _$$WarehouseStockProductListImplCopyWith<$Res> {
  __$$WarehouseStockProductListImplCopyWithImpl(
      _$WarehouseStockProductListImpl _value,
      $Res Function(_$WarehouseStockProductListImpl) _then)
      : super(_value, _then);

  /// Create a copy of WarehouseStockProductList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product_id = freezed,
    Object? name = freezed,
    Object? product_qty = freezed,
    Object? scanned_qty = freezed,
    Object? balance = freezed,
    Object? internal_ref = freezed,
    Object? sku_number = freezed,
    Object? coa_id = freezed,
    Object? transfer_line_id = freezed,
    Object? move_id = freezed,
    Object? coa_name = freezed,
    Object? status = freezed,
  }) {
    return _then(_$WarehouseStockProductListImpl(
      product_id: freezed == product_id
          ? _value.product_id
          : product_id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      product_qty: freezed == product_qty
          ? _value.product_qty
          : product_qty // ignore: cast_nullable_to_non_nullable
              as double?,
      scanned_qty: freezed == scanned_qty
          ? _value.scanned_qty
          : scanned_qty // ignore: cast_nullable_to_non_nullable
              as double?,
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double?,
      internal_ref: freezed == internal_ref
          ? _value.internal_ref
          : internal_ref // ignore: cast_nullable_to_non_nullable
              as String?,
      sku_number: freezed == sku_number
          ? _value.sku_number
          : sku_number // ignore: cast_nullable_to_non_nullable
              as String?,
      coa_id: freezed == coa_id
          ? _value.coa_id
          : coa_id // ignore: cast_nullable_to_non_nullable
              as int?,
      transfer_line_id: freezed == transfer_line_id
          ? _value.transfer_line_id
          : transfer_line_id // ignore: cast_nullable_to_non_nullable
              as int?,
      move_id: freezed == move_id
          ? _value.move_id
          : move_id // ignore: cast_nullable_to_non_nullable
              as int?,
      coa_name: freezed == coa_name
          ? _value.coa_name
          : coa_name // ignore: cast_nullable_to_non_nullable
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
class _$WarehouseStockProductListImpl implements _WarehouseStockProductList {
  const _$WarehouseStockProductListImpl(
      {this.product_id,
      this.name,
      this.product_qty,
      this.scanned_qty,
      this.balance,
      this.internal_ref,
      this.sku_number,
      this.coa_id,
      this.transfer_line_id,
      this.move_id,
      this.coa_name,
      this.status});

  factory _$WarehouseStockProductListImpl.fromJson(Map<String, dynamic> json) =>
      _$$WarehouseStockProductListImplFromJson(json);

  @override
  final int? product_id;
  @override
  final String? name;
  @override
  final double? product_qty;
  @override
  final double? scanned_qty;
  @override
  final double? balance;
  @override
  final String? internal_ref;
  @override
  final String? sku_number;
  @override
  final int? coa_id;
  @override
  final int? transfer_line_id;
  @override
  final int? move_id;
  @override
  final String? coa_name;
  @override
  final String? status;

  @override
  String toString() {
    return 'WarehouseStockProductList(product_id: $product_id, name: $name, product_qty: $product_qty, scanned_qty: $scanned_qty, balance: $balance, internal_ref: $internal_ref, sku_number: $sku_number, coa_id: $coa_id, transfer_line_id: $transfer_line_id, move_id: $move_id, coa_name: $coa_name, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WarehouseStockProductListImpl &&
            (identical(other.product_id, product_id) ||
                other.product_id == product_id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.product_qty, product_qty) ||
                other.product_qty == product_qty) &&
            (identical(other.scanned_qty, scanned_qty) ||
                other.scanned_qty == scanned_qty) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.internal_ref, internal_ref) ||
                other.internal_ref == internal_ref) &&
            (identical(other.sku_number, sku_number) ||
                other.sku_number == sku_number) &&
            (identical(other.coa_id, coa_id) || other.coa_id == coa_id) &&
            (identical(other.transfer_line_id, transfer_line_id) ||
                other.transfer_line_id == transfer_line_id) &&
            (identical(other.move_id, move_id) || other.move_id == move_id) &&
            (identical(other.coa_name, coa_name) ||
                other.coa_name == coa_name) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      product_id,
      name,
      product_qty,
      scanned_qty,
      balance,
      internal_ref,
      sku_number,
      coa_id,
      transfer_line_id,
      move_id,
      coa_name,
      status);

  /// Create a copy of WarehouseStockProductList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WarehouseStockProductListImplCopyWith<_$WarehouseStockProductListImpl>
      get copyWith => __$$WarehouseStockProductListImplCopyWithImpl<
          _$WarehouseStockProductListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WarehouseStockProductListImplToJson(
      this,
    );
  }
}

abstract class _WarehouseStockProductList implements WarehouseStockProductList {
  const factory _WarehouseStockProductList(
      {final int? product_id,
      final String? name,
      final double? product_qty,
      final double? scanned_qty,
      final double? balance,
      final String? internal_ref,
      final String? sku_number,
      final int? coa_id,
      final int? transfer_line_id,
      final int? move_id,
      final String? coa_name,
      final String? status}) = _$WarehouseStockProductListImpl;

  factory _WarehouseStockProductList.fromJson(Map<String, dynamic> json) =
      _$WarehouseStockProductListImpl.fromJson;

  @override
  int? get product_id;
  @override
  String? get name;
  @override
  double? get product_qty;
  @override
  double? get scanned_qty;
  @override
  double? get balance;
  @override
  String? get internal_ref;
  @override
  String? get sku_number;
  @override
  int? get coa_id;
  @override
  int? get transfer_line_id;
  @override
  int? get move_id;
  @override
  String? get coa_name;
  @override
  String? get status;

  /// Create a copy of WarehouseStockProductList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WarehouseStockProductListImplCopyWith<_$WarehouseStockProductListImpl>
      get copyWith => throw _privateConstructorUsedError;
}
