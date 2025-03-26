// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recieve_product_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RecieveProductListModel _$RecieveProductListModelFromJson(
    Map<String, dynamic> json) {
  return _RecieveProductListModel.fromJson(json);
}

/// @nodoc
mixin _$RecieveProductListModel {
  String? get jsonrpc => throw _privateConstructorUsedError; // Id? id,
  Result? get result => throw _privateConstructorUsedError;

  /// Serializes this RecieveProductListModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RecieveProductListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecieveProductListModelCopyWith<RecieveProductListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecieveProductListModelCopyWith<$Res> {
  factory $RecieveProductListModelCopyWith(RecieveProductListModel value,
          $Res Function(RecieveProductListModel) then) =
      _$RecieveProductListModelCopyWithImpl<$Res, RecieveProductListModel>;
  @useResult
  $Res call({String? jsonrpc, Result? result});

  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$RecieveProductListModelCopyWithImpl<$Res,
        $Val extends RecieveProductListModel>
    implements $RecieveProductListModelCopyWith<$Res> {
  _$RecieveProductListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecieveProductListModel
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

  /// Create a copy of RecieveProductListModel
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
abstract class _$$RecieveProductListModelImplCopyWith<$Res>
    implements $RecieveProductListModelCopyWith<$Res> {
  factory _$$RecieveProductListModelImplCopyWith(
          _$RecieveProductListModelImpl value,
          $Res Function(_$RecieveProductListModelImpl) then) =
      __$$RecieveProductListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? jsonrpc, Result? result});

  @override
  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$RecieveProductListModelImplCopyWithImpl<$Res>
    extends _$RecieveProductListModelCopyWithImpl<$Res,
        _$RecieveProductListModelImpl>
    implements _$$RecieveProductListModelImplCopyWith<$Res> {
  __$$RecieveProductListModelImplCopyWithImpl(
      _$RecieveProductListModelImpl _value,
      $Res Function(_$RecieveProductListModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecieveProductListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jsonrpc = freezed,
    Object? result = freezed,
  }) {
    return _then(_$RecieveProductListModelImpl(
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
class _$RecieveProductListModelImpl implements _RecieveProductListModel {
  const _$RecieveProductListModelImpl({this.jsonrpc, this.result});

  factory _$RecieveProductListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecieveProductListModelImplFromJson(json);

  @override
  final String? jsonrpc;
// Id? id,
  @override
  final Result? result;

  @override
  String toString() {
    return 'RecieveProductListModel(jsonrpc: $jsonrpc, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecieveProductListModelImpl &&
            (identical(other.jsonrpc, jsonrpc) || other.jsonrpc == jsonrpc) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, jsonrpc, result);

  /// Create a copy of RecieveProductListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecieveProductListModelImplCopyWith<_$RecieveProductListModelImpl>
      get copyWith => __$$RecieveProductListModelImplCopyWithImpl<
          _$RecieveProductListModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecieveProductListModelImplToJson(
      this,
    );
  }
}

abstract class _RecieveProductListModel implements RecieveProductListModel {
  const factory _RecieveProductListModel(
      {final String? jsonrpc,
      final Result? result}) = _$RecieveProductListModelImpl;

  factory _RecieveProductListModel.fromJson(Map<String, dynamic> json) =
      _$RecieveProductListModelImpl.fromJson;

  @override
  String? get jsonrpc; // Id? id,
  @override
  Result? get result;

  /// Create a copy of RecieveProductListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecieveProductListModelImplCopyWith<_$RecieveProductListModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  int? get status => throw _privateConstructorUsedError;
  List<ProductList>? get packing_data => throw _privateConstructorUsedError;

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
  $Res call({int? status, List<ProductList>? packing_data});
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
              as List<ProductList>?,
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
  $Res call({int? status, List<ProductList>? packing_data});
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
              as List<ProductList>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultImpl implements _Result {
  const _$ResultImpl({this.status, final List<ProductList>? packing_data})
      : _packing_data = packing_data;

  factory _$ResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultImplFromJson(json);

  @override
  final int? status;
  final List<ProductList>? _packing_data;
  @override
  List<ProductList>? get packing_data {
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
      final List<ProductList>? packing_data}) = _$ResultImpl;

  factory _Result.fromJson(Map<String, dynamic> json) = _$ResultImpl.fromJson;

  @override
  int? get status;
  @override
  List<ProductList>? get packing_data;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductList _$ProductListFromJson(Map<String, dynamic> json) {
  return _ProductList.fromJson(json);
}

/// @nodoc
mixin _$ProductList {
  int? get product_id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get sku => throw _privateConstructorUsedError;
  String? get internal_ref => throw _privateConstructorUsedError;
  double? get order_qty => throw _privateConstructorUsedError;
  double? get scanned_qty => throw _privateConstructorUsedError;
  double? get balance_qty => throw _privateConstructorUsedError;
  int? get move_id => throw _privateConstructorUsedError;
  int? get picking_id => throw _privateConstructorUsedError;
  int? get packing_list_line_id => throw _privateConstructorUsedError;
  dynamic get batch_code => throw _privateConstructorUsedError;
  dynamic get country_of_origin => throw _privateConstructorUsedError;

  /// Serializes this ProductList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductListCopyWith<ProductList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductListCopyWith<$Res> {
  factory $ProductListCopyWith(
          ProductList value, $Res Function(ProductList) then) =
      _$ProductListCopyWithImpl<$Res, ProductList>;
  @useResult
  $Res call(
      {int? product_id,
      String? name,
      String? sku,
      String? internal_ref,
      double? order_qty,
      double? scanned_qty,
      double? balance_qty,
      int? move_id,
      int? picking_id,
      int? packing_list_line_id,
      dynamic batch_code,
      dynamic country_of_origin});
}

/// @nodoc
class _$ProductListCopyWithImpl<$Res, $Val extends ProductList>
    implements $ProductListCopyWith<$Res> {
  _$ProductListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product_id = freezed,
    Object? name = freezed,
    Object? sku = freezed,
    Object? internal_ref = freezed,
    Object? order_qty = freezed,
    Object? scanned_qty = freezed,
    Object? balance_qty = freezed,
    Object? move_id = freezed,
    Object? picking_id = freezed,
    Object? packing_list_line_id = freezed,
    Object? batch_code = freezed,
    Object? country_of_origin = freezed,
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
      sku: freezed == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      internal_ref: freezed == internal_ref
          ? _value.internal_ref
          : internal_ref // ignore: cast_nullable_to_non_nullable
              as String?,
      order_qty: freezed == order_qty
          ? _value.order_qty
          : order_qty // ignore: cast_nullable_to_non_nullable
              as double?,
      scanned_qty: freezed == scanned_qty
          ? _value.scanned_qty
          : scanned_qty // ignore: cast_nullable_to_non_nullable
              as double?,
      balance_qty: freezed == balance_qty
          ? _value.balance_qty
          : balance_qty // ignore: cast_nullable_to_non_nullable
              as double?,
      move_id: freezed == move_id
          ? _value.move_id
          : move_id // ignore: cast_nullable_to_non_nullable
              as int?,
      picking_id: freezed == picking_id
          ? _value.picking_id
          : picking_id // ignore: cast_nullable_to_non_nullable
              as int?,
      packing_list_line_id: freezed == packing_list_line_id
          ? _value.packing_list_line_id
          : packing_list_line_id // ignore: cast_nullable_to_non_nullable
              as int?,
      batch_code: freezed == batch_code
          ? _value.batch_code
          : batch_code // ignore: cast_nullable_to_non_nullable
              as dynamic,
      country_of_origin: freezed == country_of_origin
          ? _value.country_of_origin
          : country_of_origin // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductListImplCopyWith<$Res>
    implements $ProductListCopyWith<$Res> {
  factory _$$ProductListImplCopyWith(
          _$ProductListImpl value, $Res Function(_$ProductListImpl) then) =
      __$$ProductListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? product_id,
      String? name,
      String? sku,
      String? internal_ref,
      double? order_qty,
      double? scanned_qty,
      double? balance_qty,
      int? move_id,
      int? picking_id,
      int? packing_list_line_id,
      dynamic batch_code,
      dynamic country_of_origin});
}

/// @nodoc
class __$$ProductListImplCopyWithImpl<$Res>
    extends _$ProductListCopyWithImpl<$Res, _$ProductListImpl>
    implements _$$ProductListImplCopyWith<$Res> {
  __$$ProductListImplCopyWithImpl(
      _$ProductListImpl _value, $Res Function(_$ProductListImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product_id = freezed,
    Object? name = freezed,
    Object? sku = freezed,
    Object? internal_ref = freezed,
    Object? order_qty = freezed,
    Object? scanned_qty = freezed,
    Object? balance_qty = freezed,
    Object? move_id = freezed,
    Object? picking_id = freezed,
    Object? packing_list_line_id = freezed,
    Object? batch_code = freezed,
    Object? country_of_origin = freezed,
  }) {
    return _then(_$ProductListImpl(
      product_id: freezed == product_id
          ? _value.product_id
          : product_id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      sku: freezed == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      internal_ref: freezed == internal_ref
          ? _value.internal_ref
          : internal_ref // ignore: cast_nullable_to_non_nullable
              as String?,
      order_qty: freezed == order_qty
          ? _value.order_qty
          : order_qty // ignore: cast_nullable_to_non_nullable
              as double?,
      scanned_qty: freezed == scanned_qty
          ? _value.scanned_qty
          : scanned_qty // ignore: cast_nullable_to_non_nullable
              as double?,
      balance_qty: freezed == balance_qty
          ? _value.balance_qty
          : balance_qty // ignore: cast_nullable_to_non_nullable
              as double?,
      move_id: freezed == move_id
          ? _value.move_id
          : move_id // ignore: cast_nullable_to_non_nullable
              as int?,
      picking_id: freezed == picking_id
          ? _value.picking_id
          : picking_id // ignore: cast_nullable_to_non_nullable
              as int?,
      packing_list_line_id: freezed == packing_list_line_id
          ? _value.packing_list_line_id
          : packing_list_line_id // ignore: cast_nullable_to_non_nullable
              as int?,
      batch_code: freezed == batch_code
          ? _value.batch_code
          : batch_code // ignore: cast_nullable_to_non_nullable
              as dynamic,
      country_of_origin: freezed == country_of_origin
          ? _value.country_of_origin
          : country_of_origin // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductListImpl implements _ProductList {
  const _$ProductListImpl(
      {this.product_id,
      this.name,
      this.sku,
      this.internal_ref,
      this.order_qty,
      this.scanned_qty,
      this.balance_qty,
      this.move_id,
      this.picking_id,
      this.packing_list_line_id,
      this.batch_code,
      this.country_of_origin});

  factory _$ProductListImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductListImplFromJson(json);

  @override
  final int? product_id;
  @override
  final String? name;
  @override
  final String? sku;
  @override
  final String? internal_ref;
  @override
  final double? order_qty;
  @override
  final double? scanned_qty;
  @override
  final double? balance_qty;
  @override
  final int? move_id;
  @override
  final int? picking_id;
  @override
  final int? packing_list_line_id;
  @override
  final dynamic batch_code;
  @override
  final dynamic country_of_origin;

  @override
  String toString() {
    return 'ProductList(product_id: $product_id, name: $name, sku: $sku, internal_ref: $internal_ref, order_qty: $order_qty, scanned_qty: $scanned_qty, balance_qty: $balance_qty, move_id: $move_id, picking_id: $picking_id, packing_list_line_id: $packing_list_line_id, batch_code: $batch_code, country_of_origin: $country_of_origin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductListImpl &&
            (identical(other.product_id, product_id) ||
                other.product_id == product_id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.sku, sku) || other.sku == sku) &&
            (identical(other.internal_ref, internal_ref) ||
                other.internal_ref == internal_ref) &&
            (identical(other.order_qty, order_qty) ||
                other.order_qty == order_qty) &&
            (identical(other.scanned_qty, scanned_qty) ||
                other.scanned_qty == scanned_qty) &&
            (identical(other.balance_qty, balance_qty) ||
                other.balance_qty == balance_qty) &&
            (identical(other.move_id, move_id) || other.move_id == move_id) &&
            (identical(other.picking_id, picking_id) ||
                other.picking_id == picking_id) &&
            (identical(other.packing_list_line_id, packing_list_line_id) ||
                other.packing_list_line_id == packing_list_line_id) &&
            const DeepCollectionEquality()
                .equals(other.batch_code, batch_code) &&
            const DeepCollectionEquality()
                .equals(other.country_of_origin, country_of_origin));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      product_id,
      name,
      sku,
      internal_ref,
      order_qty,
      scanned_qty,
      balance_qty,
      move_id,
      picking_id,
      packing_list_line_id,
      const DeepCollectionEquality().hash(batch_code),
      const DeepCollectionEquality().hash(country_of_origin));

  /// Create a copy of ProductList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductListImplCopyWith<_$ProductListImpl> get copyWith =>
      __$$ProductListImplCopyWithImpl<_$ProductListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductListImplToJson(
      this,
    );
  }
}

abstract class _ProductList implements ProductList {
  const factory _ProductList(
      {final int? product_id,
      final String? name,
      final String? sku,
      final String? internal_ref,
      final double? order_qty,
      final double? scanned_qty,
      final double? balance_qty,
      final int? move_id,
      final int? picking_id,
      final int? packing_list_line_id,
      final dynamic batch_code,
      final dynamic country_of_origin}) = _$ProductListImpl;

  factory _ProductList.fromJson(Map<String, dynamic> json) =
      _$ProductListImpl.fromJson;

  @override
  int? get product_id;
  @override
  String? get name;
  @override
  String? get sku;
  @override
  String? get internal_ref;
  @override
  double? get order_qty;
  @override
  double? get scanned_qty;
  @override
  double? get balance_qty;
  @override
  int? get move_id;
  @override
  int? get picking_id;
  @override
  int? get packing_list_line_id;
  @override
  dynamic get batch_code;
  @override
  dynamic get country_of_origin;

  /// Create a copy of ProductList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductListImplCopyWith<_$ProductListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
