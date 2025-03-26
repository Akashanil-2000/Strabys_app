// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_product_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeliveryProductListModel _$DeliveryProductListModelFromJson(
    Map<String, dynamic> json) {
  return _DeliveryProductListModel.fromJson(json);
}

/// @nodoc
mixin _$DeliveryProductListModel {
  String? get jsonrpc => throw _privateConstructorUsedError; // Id? id,
  Result? get result => throw _privateConstructorUsedError;

  /// Serializes this DeliveryProductListModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeliveryProductListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeliveryProductListModelCopyWith<DeliveryProductListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryProductListModelCopyWith<$Res> {
  factory $DeliveryProductListModelCopyWith(DeliveryProductListModel value,
          $Res Function(DeliveryProductListModel) then) =
      _$DeliveryProductListModelCopyWithImpl<$Res, DeliveryProductListModel>;
  @useResult
  $Res call({String? jsonrpc, Result? result});

  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$DeliveryProductListModelCopyWithImpl<$Res,
        $Val extends DeliveryProductListModel>
    implements $DeliveryProductListModelCopyWith<$Res> {
  _$DeliveryProductListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeliveryProductListModel
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

  /// Create a copy of DeliveryProductListModel
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
abstract class _$$DeliveryProductListModelImplCopyWith<$Res>
    implements $DeliveryProductListModelCopyWith<$Res> {
  factory _$$DeliveryProductListModelImplCopyWith(
          _$DeliveryProductListModelImpl value,
          $Res Function(_$DeliveryProductListModelImpl) then) =
      __$$DeliveryProductListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? jsonrpc, Result? result});

  @override
  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$DeliveryProductListModelImplCopyWithImpl<$Res>
    extends _$DeliveryProductListModelCopyWithImpl<$Res,
        _$DeliveryProductListModelImpl>
    implements _$$DeliveryProductListModelImplCopyWith<$Res> {
  __$$DeliveryProductListModelImplCopyWithImpl(
      _$DeliveryProductListModelImpl _value,
      $Res Function(_$DeliveryProductListModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeliveryProductListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jsonrpc = freezed,
    Object? result = freezed,
  }) {
    return _then(_$DeliveryProductListModelImpl(
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
class _$DeliveryProductListModelImpl implements _DeliveryProductListModel {
  const _$DeliveryProductListModelImpl({this.jsonrpc, this.result});

  factory _$DeliveryProductListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeliveryProductListModelImplFromJson(json);

  @override
  final String? jsonrpc;
// Id? id,
  @override
  final Result? result;

  @override
  String toString() {
    return 'DeliveryProductListModel(jsonrpc: $jsonrpc, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryProductListModelImpl &&
            (identical(other.jsonrpc, jsonrpc) || other.jsonrpc == jsonrpc) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, jsonrpc, result);

  /// Create a copy of DeliveryProductListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryProductListModelImplCopyWith<_$DeliveryProductListModelImpl>
      get copyWith => __$$DeliveryProductListModelImplCopyWithImpl<
          _$DeliveryProductListModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeliveryProductListModelImplToJson(
      this,
    );
  }
}

abstract class _DeliveryProductListModel implements DeliveryProductListModel {
  const factory _DeliveryProductListModel(
      {final String? jsonrpc,
      final Result? result}) = _$DeliveryProductListModelImpl;

  factory _DeliveryProductListModel.fromJson(Map<String, dynamic> json) =
      _$DeliveryProductListModelImpl.fromJson;

  @override
  String? get jsonrpc; // Id? id,
  @override
  Result? get result;

  /// Create a copy of DeliveryProductListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeliveryProductListModelImplCopyWith<_$DeliveryProductListModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  int? get status => throw _privateConstructorUsedError;
  List<DeliveryProductListData>? get product_details =>
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
  $Res call({int? status, List<DeliveryProductListData>? product_details});
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
    Object? product_details = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      product_details: freezed == product_details
          ? _value.product_details
          : product_details // ignore: cast_nullable_to_non_nullable
              as List<DeliveryProductListData>?,
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
  $Res call({int? status, List<DeliveryProductListData>? product_details});
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
    Object? product_details = freezed,
  }) {
    return _then(_$ResultImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      product_details: freezed == product_details
          ? _value._product_details
          : product_details // ignore: cast_nullable_to_non_nullable
              as List<DeliveryProductListData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultImpl implements _Result {
  const _$ResultImpl(
      {this.status, final List<DeliveryProductListData>? product_details})
      : _product_details = product_details;

  factory _$ResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultImplFromJson(json);

  @override
  final int? status;
  final List<DeliveryProductListData>? _product_details;
  @override
  List<DeliveryProductListData>? get product_details {
    final value = _product_details;
    if (value == null) return null;
    if (_product_details is EqualUnmodifiableListView) return _product_details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Result(status: $status, product_details: $product_details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._product_details, _product_details));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_product_details));

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
      final List<DeliveryProductListData>? product_details}) = _$ResultImpl;

  factory _Result.fromJson(Map<String, dynamic> json) = _$ResultImpl.fromJson;

  @override
  int? get status;
  @override
  List<DeliveryProductListData>? get product_details;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DeliveryProductListData _$DeliveryProductListDataFromJson(
    Map<String, dynamic> json) {
  return _DeliveryProductListData.fromJson(json);
}

/// @nodoc
mixin _$DeliveryProductListData {
  int? get product_id => throw _privateConstructorUsedError;
  String? get product_name => throw _privateConstructorUsedError;
  String? get sku => throw _privateConstructorUsedError;
  String? get internal_ref => throw _privateConstructorUsedError;
  String? get boe => throw _privateConstructorUsedError;
  String? get coo => throw _privateConstructorUsedError;
  String? get batch_code => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  int? get delivery_location_id => throw _privateConstructorUsedError;
  int? get product_qty => throw _privateConstructorUsedError;
  int? get balance_qty => throw _privateConstructorUsedError;
  int? get scanned_qty => throw _privateConstructorUsedError;
  int? get move_line_id => throw _privateConstructorUsedError;
  int? get move_id => throw _privateConstructorUsedError;

  /// Serializes this DeliveryProductListData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeliveryProductListData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeliveryProductListDataCopyWith<DeliveryProductListData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryProductListDataCopyWith<$Res> {
  factory $DeliveryProductListDataCopyWith(DeliveryProductListData value,
          $Res Function(DeliveryProductListData) then) =
      _$DeliveryProductListDataCopyWithImpl<$Res, DeliveryProductListData>;
  @useResult
  $Res call(
      {int? product_id,
      String? product_name,
      String? sku,
      String? internal_ref,
      String? boe,
      String? coo,
      String? batch_code,
      String? status,
      int? delivery_location_id,
      int? product_qty,
      int? balance_qty,
      int? scanned_qty,
      int? move_line_id,
      int? move_id});
}

/// @nodoc
class _$DeliveryProductListDataCopyWithImpl<$Res,
        $Val extends DeliveryProductListData>
    implements $DeliveryProductListDataCopyWith<$Res> {
  _$DeliveryProductListDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeliveryProductListData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product_id = freezed,
    Object? product_name = freezed,
    Object? sku = freezed,
    Object? internal_ref = freezed,
    Object? boe = freezed,
    Object? coo = freezed,
    Object? batch_code = freezed,
    Object? status = freezed,
    Object? delivery_location_id = freezed,
    Object? product_qty = freezed,
    Object? balance_qty = freezed,
    Object? scanned_qty = freezed,
    Object? move_line_id = freezed,
    Object? move_id = freezed,
  }) {
    return _then(_value.copyWith(
      product_id: freezed == product_id
          ? _value.product_id
          : product_id // ignore: cast_nullable_to_non_nullable
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
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      delivery_location_id: freezed == delivery_location_id
          ? _value.delivery_location_id
          : delivery_location_id // ignore: cast_nullable_to_non_nullable
              as int?,
      product_qty: freezed == product_qty
          ? _value.product_qty
          : product_qty // ignore: cast_nullable_to_non_nullable
              as int?,
      balance_qty: freezed == balance_qty
          ? _value.balance_qty
          : balance_qty // ignore: cast_nullable_to_non_nullable
              as int?,
      scanned_qty: freezed == scanned_qty
          ? _value.scanned_qty
          : scanned_qty // ignore: cast_nullable_to_non_nullable
              as int?,
      move_line_id: freezed == move_line_id
          ? _value.move_line_id
          : move_line_id // ignore: cast_nullable_to_non_nullable
              as int?,
      move_id: freezed == move_id
          ? _value.move_id
          : move_id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeliveryProductListDataImplCopyWith<$Res>
    implements $DeliveryProductListDataCopyWith<$Res> {
  factory _$$DeliveryProductListDataImplCopyWith(
          _$DeliveryProductListDataImpl value,
          $Res Function(_$DeliveryProductListDataImpl) then) =
      __$$DeliveryProductListDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? product_id,
      String? product_name,
      String? sku,
      String? internal_ref,
      String? boe,
      String? coo,
      String? batch_code,
      String? status,
      int? delivery_location_id,
      int? product_qty,
      int? balance_qty,
      int? scanned_qty,
      int? move_line_id,
      int? move_id});
}

/// @nodoc
class __$$DeliveryProductListDataImplCopyWithImpl<$Res>
    extends _$DeliveryProductListDataCopyWithImpl<$Res,
        _$DeliveryProductListDataImpl>
    implements _$$DeliveryProductListDataImplCopyWith<$Res> {
  __$$DeliveryProductListDataImplCopyWithImpl(
      _$DeliveryProductListDataImpl _value,
      $Res Function(_$DeliveryProductListDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeliveryProductListData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product_id = freezed,
    Object? product_name = freezed,
    Object? sku = freezed,
    Object? internal_ref = freezed,
    Object? boe = freezed,
    Object? coo = freezed,
    Object? batch_code = freezed,
    Object? status = freezed,
    Object? delivery_location_id = freezed,
    Object? product_qty = freezed,
    Object? balance_qty = freezed,
    Object? scanned_qty = freezed,
    Object? move_line_id = freezed,
    Object? move_id = freezed,
  }) {
    return _then(_$DeliveryProductListDataImpl(
      product_id: freezed == product_id
          ? _value.product_id
          : product_id // ignore: cast_nullable_to_non_nullable
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
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      delivery_location_id: freezed == delivery_location_id
          ? _value.delivery_location_id
          : delivery_location_id // ignore: cast_nullable_to_non_nullable
              as int?,
      product_qty: freezed == product_qty
          ? _value.product_qty
          : product_qty // ignore: cast_nullable_to_non_nullable
              as int?,
      balance_qty: freezed == balance_qty
          ? _value.balance_qty
          : balance_qty // ignore: cast_nullable_to_non_nullable
              as int?,
      scanned_qty: freezed == scanned_qty
          ? _value.scanned_qty
          : scanned_qty // ignore: cast_nullable_to_non_nullable
              as int?,
      move_line_id: freezed == move_line_id
          ? _value.move_line_id
          : move_line_id // ignore: cast_nullable_to_non_nullable
              as int?,
      move_id: freezed == move_id
          ? _value.move_id
          : move_id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeliveryProductListDataImpl implements _DeliveryProductListData {
  const _$DeliveryProductListDataImpl(
      {this.product_id,
      this.product_name,
      this.sku,
      this.internal_ref,
      this.boe,
      this.coo,
      this.batch_code,
      this.status,
      this.delivery_location_id,
      this.product_qty,
      this.balance_qty,
      this.scanned_qty,
      this.move_line_id,
      this.move_id});

  factory _$DeliveryProductListDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeliveryProductListDataImplFromJson(json);

  @override
  final int? product_id;
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
  final String? status;
  @override
  final int? delivery_location_id;
  @override
  final int? product_qty;
  @override
  final int? balance_qty;
  @override
  final int? scanned_qty;
  @override
  final int? move_line_id;
  @override
  final int? move_id;

  @override
  String toString() {
    return 'DeliveryProductListData(product_id: $product_id, product_name: $product_name, sku: $sku, internal_ref: $internal_ref, boe: $boe, coo: $coo, batch_code: $batch_code, status: $status, delivery_location_id: $delivery_location_id, product_qty: $product_qty, balance_qty: $balance_qty, scanned_qty: $scanned_qty, move_line_id: $move_line_id, move_id: $move_id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryProductListDataImpl &&
            (identical(other.product_id, product_id) ||
                other.product_id == product_id) &&
            (identical(other.product_name, product_name) ||
                other.product_name == product_name) &&
            (identical(other.sku, sku) || other.sku == sku) &&
            (identical(other.internal_ref, internal_ref) ||
                other.internal_ref == internal_ref) &&
            (identical(other.boe, boe) || other.boe == boe) &&
            (identical(other.coo, coo) || other.coo == coo) &&
            (identical(other.batch_code, batch_code) ||
                other.batch_code == batch_code) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.delivery_location_id, delivery_location_id) ||
                other.delivery_location_id == delivery_location_id) &&
            (identical(other.product_qty, product_qty) ||
                other.product_qty == product_qty) &&
            (identical(other.balance_qty, balance_qty) ||
                other.balance_qty == balance_qty) &&
            (identical(other.scanned_qty, scanned_qty) ||
                other.scanned_qty == scanned_qty) &&
            (identical(other.move_line_id, move_line_id) ||
                other.move_line_id == move_line_id) &&
            (identical(other.move_id, move_id) || other.move_id == move_id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      product_id,
      product_name,
      sku,
      internal_ref,
      boe,
      coo,
      batch_code,
      status,
      delivery_location_id,
      product_qty,
      balance_qty,
      scanned_qty,
      move_line_id,
      move_id);

  /// Create a copy of DeliveryProductListData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryProductListDataImplCopyWith<_$DeliveryProductListDataImpl>
      get copyWith => __$$DeliveryProductListDataImplCopyWithImpl<
          _$DeliveryProductListDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeliveryProductListDataImplToJson(
      this,
    );
  }
}

abstract class _DeliveryProductListData implements DeliveryProductListData {
  const factory _DeliveryProductListData(
      {final int? product_id,
      final String? product_name,
      final String? sku,
      final String? internal_ref,
      final String? boe,
      final String? coo,
      final String? batch_code,
      final String? status,
      final int? delivery_location_id,
      final int? product_qty,
      final int? balance_qty,
      final int? scanned_qty,
      final int? move_line_id,
      final int? move_id}) = _$DeliveryProductListDataImpl;

  factory _DeliveryProductListData.fromJson(Map<String, dynamic> json) =
      _$DeliveryProductListDataImpl.fromJson;

  @override
  int? get product_id;
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
  String? get status;
  @override
  int? get delivery_location_id;
  @override
  int? get product_qty;
  @override
  int? get balance_qty;
  @override
  int? get scanned_qty;
  @override
  int? get move_line_id;
  @override
  int? get move_id;

  /// Create a copy of DeliveryProductListData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeliveryProductListDataImplCopyWith<_$DeliveryProductListDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
