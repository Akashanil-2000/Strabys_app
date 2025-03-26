// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'warehouse_single_product_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WarehouseSingleProductListModel _$WarehouseSingleProductListModelFromJson(
    Map<String, dynamic> json) {
  return _WarehouseSingleProductListModel.fromJson(json);
}

/// @nodoc
mixin _$WarehouseSingleProductListModel {
  String? get jsonrpc => throw _privateConstructorUsedError;
  List<WarehouseSingleProductItem>? get result =>
      throw _privateConstructorUsedError;

  /// Serializes this WarehouseSingleProductListModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WarehouseSingleProductListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WarehouseSingleProductListModelCopyWith<WarehouseSingleProductListModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WarehouseSingleProductListModelCopyWith<$Res> {
  factory $WarehouseSingleProductListModelCopyWith(
          WarehouseSingleProductListModel value,
          $Res Function(WarehouseSingleProductListModel) then) =
      _$WarehouseSingleProductListModelCopyWithImpl<$Res,
          WarehouseSingleProductListModel>;
  @useResult
  $Res call({String? jsonrpc, List<WarehouseSingleProductItem>? result});
}

/// @nodoc
class _$WarehouseSingleProductListModelCopyWithImpl<$Res,
        $Val extends WarehouseSingleProductListModel>
    implements $WarehouseSingleProductListModelCopyWith<$Res> {
  _$WarehouseSingleProductListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WarehouseSingleProductListModel
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
              as List<WarehouseSingleProductItem>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WarehouseSingleProductListModelImplCopyWith<$Res>
    implements $WarehouseSingleProductListModelCopyWith<$Res> {
  factory _$$WarehouseSingleProductListModelImplCopyWith(
          _$WarehouseSingleProductListModelImpl value,
          $Res Function(_$WarehouseSingleProductListModelImpl) then) =
      __$$WarehouseSingleProductListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? jsonrpc, List<WarehouseSingleProductItem>? result});
}

/// @nodoc
class __$$WarehouseSingleProductListModelImplCopyWithImpl<$Res>
    extends _$WarehouseSingleProductListModelCopyWithImpl<$Res,
        _$WarehouseSingleProductListModelImpl>
    implements _$$WarehouseSingleProductListModelImplCopyWith<$Res> {
  __$$WarehouseSingleProductListModelImplCopyWithImpl(
      _$WarehouseSingleProductListModelImpl _value,
      $Res Function(_$WarehouseSingleProductListModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of WarehouseSingleProductListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jsonrpc = freezed,
    Object? result = freezed,
  }) {
    return _then(_$WarehouseSingleProductListModelImpl(
      jsonrpc: freezed == jsonrpc
          ? _value.jsonrpc
          : jsonrpc // ignore: cast_nullable_to_non_nullable
              as String?,
      result: freezed == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<WarehouseSingleProductItem>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WarehouseSingleProductListModelImpl
    implements _WarehouseSingleProductListModel {
  const _$WarehouseSingleProductListModelImpl(
      {this.jsonrpc, final List<WarehouseSingleProductItem>? result})
      : _result = result;

  factory _$WarehouseSingleProductListModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$WarehouseSingleProductListModelImplFromJson(json);

  @override
  final String? jsonrpc;
  final List<WarehouseSingleProductItem>? _result;
  @override
  List<WarehouseSingleProductItem>? get result {
    final value = _result;
    if (value == null) return null;
    if (_result is EqualUnmodifiableListView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'WarehouseSingleProductListModel(jsonrpc: $jsonrpc, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WarehouseSingleProductListModelImpl &&
            (identical(other.jsonrpc, jsonrpc) || other.jsonrpc == jsonrpc) &&
            const DeepCollectionEquality().equals(other._result, _result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, jsonrpc, const DeepCollectionEquality().hash(_result));

  /// Create a copy of WarehouseSingleProductListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WarehouseSingleProductListModelImplCopyWith<
          _$WarehouseSingleProductListModelImpl>
      get copyWith => __$$WarehouseSingleProductListModelImplCopyWithImpl<
          _$WarehouseSingleProductListModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WarehouseSingleProductListModelImplToJson(
      this,
    );
  }
}

abstract class _WarehouseSingleProductListModel
    implements WarehouseSingleProductListModel {
  const factory _WarehouseSingleProductListModel(
          {final String? jsonrpc,
          final List<WarehouseSingleProductItem>? result}) =
      _$WarehouseSingleProductListModelImpl;

  factory _WarehouseSingleProductListModel.fromJson(Map<String, dynamic> json) =
      _$WarehouseSingleProductListModelImpl.fromJson;

  @override
  String? get jsonrpc;
  @override
  List<WarehouseSingleProductItem>? get result;

  /// Create a copy of WarehouseSingleProductListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WarehouseSingleProductListModelImplCopyWith<
          _$WarehouseSingleProductListModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

WarehouseSingleProductItem _$WarehouseSingleProductItemFromJson(
    Map<String, dynamic> json) {
  return _WarehouseSingleProductItem.fromJson(json);
}

/// @nodoc
mixin _$WarehouseSingleProductItem {
  String? get customer_name => throw _privateConstructorUsedError;
  int? get product_id => throw _privateConstructorUsedError;
  int? get lot_id => throw _privateConstructorUsedError;
  String? get product_name => throw _privateConstructorUsedError;
  String? get sku => throw _privateConstructorUsedError;
  String? get internal_ref => throw _privateConstructorUsedError;
  String? get boe => throw _privateConstructorUsedError;
  String? get coo => throw _privateConstructorUsedError;
  String? get batch_code => throw _privateConstructorUsedError;
  int? get product_qty => throw _privateConstructorUsedError;

  /// Serializes this WarehouseSingleProductItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WarehouseSingleProductItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WarehouseSingleProductItemCopyWith<WarehouseSingleProductItem>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WarehouseSingleProductItemCopyWith<$Res> {
  factory $WarehouseSingleProductItemCopyWith(WarehouseSingleProductItem value,
          $Res Function(WarehouseSingleProductItem) then) =
      _$WarehouseSingleProductItemCopyWithImpl<$Res,
          WarehouseSingleProductItem>;
  @useResult
  $Res call(
      {String? customer_name,
      int? product_id,
      int? lot_id,
      String? product_name,
      String? sku,
      String? internal_ref,
      String? boe,
      String? coo,
      String? batch_code,
      int? product_qty});
}

/// @nodoc
class _$WarehouseSingleProductItemCopyWithImpl<$Res,
        $Val extends WarehouseSingleProductItem>
    implements $WarehouseSingleProductItemCopyWith<$Res> {
  _$WarehouseSingleProductItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WarehouseSingleProductItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customer_name = freezed,
    Object? product_id = freezed,
    Object? lot_id = freezed,
    Object? product_name = freezed,
    Object? sku = freezed,
    Object? internal_ref = freezed,
    Object? boe = freezed,
    Object? coo = freezed,
    Object? batch_code = freezed,
    Object? product_qty = freezed,
  }) {
    return _then(_value.copyWith(
      customer_name: freezed == customer_name
          ? _value.customer_name
          : customer_name // ignore: cast_nullable_to_non_nullable
              as String?,
      product_id: freezed == product_id
          ? _value.product_id
          : product_id // ignore: cast_nullable_to_non_nullable
              as int?,
      lot_id: freezed == lot_id
          ? _value.lot_id
          : lot_id // ignore: cast_nullable_to_non_nullable
              as int?,
      product_name: freezed == product_name
          ? _value.product_name
          : product_name // ignore: cast_nullable_to_non_nullable
              as String?,
      sku: freezed == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      internal_ref: freezed == internal_ref
          ? _value.internal_ref
          : internal_ref // ignore: cast_nullable_to_non_nullable
              as String?,
      boe: freezed == boe
          ? _value.boe
          : boe // ignore: cast_nullable_to_non_nullable
              as String?,
      coo: freezed == coo
          ? _value.coo
          : coo // ignore: cast_nullable_to_non_nullable
              as String?,
      batch_code: freezed == batch_code
          ? _value.batch_code
          : batch_code // ignore: cast_nullable_to_non_nullable
              as String?,
      product_qty: freezed == product_qty
          ? _value.product_qty
          : product_qty // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WarehouseSingleProductItemImplCopyWith<$Res>
    implements $WarehouseSingleProductItemCopyWith<$Res> {
  factory _$$WarehouseSingleProductItemImplCopyWith(
          _$WarehouseSingleProductItemImpl value,
          $Res Function(_$WarehouseSingleProductItemImpl) then) =
      __$$WarehouseSingleProductItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? customer_name,
      int? product_id,
      int? lot_id,
      String? product_name,
      String? sku,
      String? internal_ref,
      String? boe,
      String? coo,
      String? batch_code,
      int? product_qty});
}

/// @nodoc
class __$$WarehouseSingleProductItemImplCopyWithImpl<$Res>
    extends _$WarehouseSingleProductItemCopyWithImpl<$Res,
        _$WarehouseSingleProductItemImpl>
    implements _$$WarehouseSingleProductItemImplCopyWith<$Res> {
  __$$WarehouseSingleProductItemImplCopyWithImpl(
      _$WarehouseSingleProductItemImpl _value,
      $Res Function(_$WarehouseSingleProductItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of WarehouseSingleProductItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customer_name = freezed,
    Object? product_id = freezed,
    Object? lot_id = freezed,
    Object? product_name = freezed,
    Object? sku = freezed,
    Object? internal_ref = freezed,
    Object? boe = freezed,
    Object? coo = freezed,
    Object? batch_code = freezed,
    Object? product_qty = freezed,
  }) {
    return _then(_$WarehouseSingleProductItemImpl(
      customer_name: freezed == customer_name
          ? _value.customer_name
          : customer_name // ignore: cast_nullable_to_non_nullable
              as String?,
      product_id: freezed == product_id
          ? _value.product_id
          : product_id // ignore: cast_nullable_to_non_nullable
              as int?,
      lot_id: freezed == lot_id
          ? _value.lot_id
          : lot_id // ignore: cast_nullable_to_non_nullable
              as int?,
      product_name: freezed == product_name
          ? _value.product_name
          : product_name // ignore: cast_nullable_to_non_nullable
              as String?,
      sku: freezed == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      internal_ref: freezed == internal_ref
          ? _value.internal_ref
          : internal_ref // ignore: cast_nullable_to_non_nullable
              as String?,
      boe: freezed == boe
          ? _value.boe
          : boe // ignore: cast_nullable_to_non_nullable
              as String?,
      coo: freezed == coo
          ? _value.coo
          : coo // ignore: cast_nullable_to_non_nullable
              as String?,
      batch_code: freezed == batch_code
          ? _value.batch_code
          : batch_code // ignore: cast_nullable_to_non_nullable
              as String?,
      product_qty: freezed == product_qty
          ? _value.product_qty
          : product_qty // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WarehouseSingleProductItemImpl implements _WarehouseSingleProductItem {
  const _$WarehouseSingleProductItemImpl(
      {this.customer_name,
      this.product_id,
      this.lot_id,
      this.product_name,
      this.sku,
      this.internal_ref,
      this.boe,
      this.coo,
      this.batch_code,
      this.product_qty});

  factory _$WarehouseSingleProductItemImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$WarehouseSingleProductItemImplFromJson(json);

  @override
  final String? customer_name;
  @override
  final int? product_id;
  @override
  final int? lot_id;
  @override
  final String? product_name;
  @override
  final String? sku;
  @override
  final String? internal_ref;
  @override
  final String? boe;
  @override
  final String? coo;
  @override
  final String? batch_code;
  @override
  final int? product_qty;

  @override
  String toString() {
    return 'WarehouseSingleProductItem(customer_name: $customer_name, product_id: $product_id, lot_id: $lot_id, product_name: $product_name, sku: $sku, internal_ref: $internal_ref, boe: $boe, coo: $coo, batch_code: $batch_code, product_qty: $product_qty)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WarehouseSingleProductItemImpl &&
            (identical(other.customer_name, customer_name) ||
                other.customer_name == customer_name) &&
            (identical(other.product_id, product_id) ||
                other.product_id == product_id) &&
            (identical(other.lot_id, lot_id) || other.lot_id == lot_id) &&
            (identical(other.product_name, product_name) ||
                other.product_name == product_name) &&
            (identical(other.sku, sku) || other.sku == sku) &&
            (identical(other.internal_ref, internal_ref) ||
                other.internal_ref == internal_ref) &&
            (identical(other.boe, boe) || other.boe == boe) &&
            (identical(other.coo, coo) || other.coo == coo) &&
            (identical(other.batch_code, batch_code) ||
                other.batch_code == batch_code) &&
            (identical(other.product_qty, product_qty) ||
                other.product_qty == product_qty));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      customer_name,
      product_id,
      lot_id,
      product_name,
      sku,
      internal_ref,
      boe,
      coo,
      batch_code,
      product_qty);

  /// Create a copy of WarehouseSingleProductItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WarehouseSingleProductItemImplCopyWith<_$WarehouseSingleProductItemImpl>
      get copyWith => __$$WarehouseSingleProductItemImplCopyWithImpl<
          _$WarehouseSingleProductItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WarehouseSingleProductItemImplToJson(
      this,
    );
  }
}

abstract class _WarehouseSingleProductItem
    implements WarehouseSingleProductItem {
  const factory _WarehouseSingleProductItem(
      {final String? customer_name,
      final int? product_id,
      final int? lot_id,
      final String? product_name,
      final String? sku,
      final String? internal_ref,
      final String? boe,
      final String? coo,
      final String? batch_code,
      final int? product_qty}) = _$WarehouseSingleProductItemImpl;

  factory _WarehouseSingleProductItem.fromJson(Map<String, dynamic> json) =
      _$WarehouseSingleProductItemImpl.fromJson;

  @override
  String? get customer_name;
  @override
  int? get product_id;
  @override
  int? get lot_id;
  @override
  String? get product_name;
  @override
  String? get sku;
  @override
  String? get internal_ref;
  @override
  String? get boe;
  @override
  String? get coo;
  @override
  String? get batch_code;
  @override
  int? get product_qty;

  /// Create a copy of WarehouseSingleProductItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WarehouseSingleProductItemImplCopyWith<_$WarehouseSingleProductItemImpl>
      get copyWith => throw _privateConstructorUsedError;
}
