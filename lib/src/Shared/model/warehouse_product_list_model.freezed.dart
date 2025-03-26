// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'warehouse_product_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WarehouseProductListModel _$WarehouseProductListModelFromJson(
    Map<String, dynamic> json) {
  return _WarehouseProductListModel.fromJson(json);
}

/// @nodoc
mixin _$WarehouseProductListModel {
  String? get jsonrpc => throw _privateConstructorUsedError;
  List<WarehouseProductItem>? get result => throw _privateConstructorUsedError;

  /// Serializes this WarehouseProductListModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WarehouseProductListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WarehouseProductListModelCopyWith<WarehouseProductListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WarehouseProductListModelCopyWith<$Res> {
  factory $WarehouseProductListModelCopyWith(WarehouseProductListModel value,
          $Res Function(WarehouseProductListModel) then) =
      _$WarehouseProductListModelCopyWithImpl<$Res, WarehouseProductListModel>;
  @useResult
  $Res call({String? jsonrpc, List<WarehouseProductItem>? result});
}

/// @nodoc
class _$WarehouseProductListModelCopyWithImpl<$Res,
        $Val extends WarehouseProductListModel>
    implements $WarehouseProductListModelCopyWith<$Res> {
  _$WarehouseProductListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WarehouseProductListModel
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
              as List<WarehouseProductItem>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WarehouseProductListModelImplCopyWith<$Res>
    implements $WarehouseProductListModelCopyWith<$Res> {
  factory _$$WarehouseProductListModelImplCopyWith(
          _$WarehouseProductListModelImpl value,
          $Res Function(_$WarehouseProductListModelImpl) then) =
      __$$WarehouseProductListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? jsonrpc, List<WarehouseProductItem>? result});
}

/// @nodoc
class __$$WarehouseProductListModelImplCopyWithImpl<$Res>
    extends _$WarehouseProductListModelCopyWithImpl<$Res,
        _$WarehouseProductListModelImpl>
    implements _$$WarehouseProductListModelImplCopyWith<$Res> {
  __$$WarehouseProductListModelImplCopyWithImpl(
      _$WarehouseProductListModelImpl _value,
      $Res Function(_$WarehouseProductListModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of WarehouseProductListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jsonrpc = freezed,
    Object? result = freezed,
  }) {
    return _then(_$WarehouseProductListModelImpl(
      jsonrpc: freezed == jsonrpc
          ? _value.jsonrpc
          : jsonrpc // ignore: cast_nullable_to_non_nullable
              as String?,
      result: freezed == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<WarehouseProductItem>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WarehouseProductListModelImpl implements _WarehouseProductListModel {
  const _$WarehouseProductListModelImpl(
      {this.jsonrpc, final List<WarehouseProductItem>? result})
      : _result = result;

  factory _$WarehouseProductListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WarehouseProductListModelImplFromJson(json);

  @override
  final String? jsonrpc;
  final List<WarehouseProductItem>? _result;
  @override
  List<WarehouseProductItem>? get result {
    final value = _result;
    if (value == null) return null;
    if (_result is EqualUnmodifiableListView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'WarehouseProductListModel(jsonrpc: $jsonrpc, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WarehouseProductListModelImpl &&
            (identical(other.jsonrpc, jsonrpc) || other.jsonrpc == jsonrpc) &&
            const DeepCollectionEquality().equals(other._result, _result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, jsonrpc, const DeepCollectionEquality().hash(_result));

  /// Create a copy of WarehouseProductListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WarehouseProductListModelImplCopyWith<_$WarehouseProductListModelImpl>
      get copyWith => __$$WarehouseProductListModelImplCopyWithImpl<
          _$WarehouseProductListModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WarehouseProductListModelImplToJson(
      this,
    );
  }
}

abstract class _WarehouseProductListModel implements WarehouseProductListModel {
  const factory _WarehouseProductListModel(
          {final String? jsonrpc, final List<WarehouseProductItem>? result}) =
      _$WarehouseProductListModelImpl;

  factory _WarehouseProductListModel.fromJson(Map<String, dynamic> json) =
      _$WarehouseProductListModelImpl.fromJson;

  @override
  String? get jsonrpc;
  @override
  List<WarehouseProductItem>? get result;

  /// Create a copy of WarehouseProductListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WarehouseProductListModelImplCopyWith<_$WarehouseProductListModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

WarehouseProductItem _$WarehouseProductItemFromJson(Map<String, dynamic> json) {
  return _WarehouseProductItem.fromJson(json);
}

/// @nodoc
mixin _$WarehouseProductItem {
  String? get customer_name => throw _privateConstructorUsedError;
  int? get product_id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get sku => throw _privateConstructorUsedError;
  String? get internal_ref => throw _privateConstructorUsedError;

  /// Serializes this WarehouseProductItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WarehouseProductItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WarehouseProductItemCopyWith<WarehouseProductItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WarehouseProductItemCopyWith<$Res> {
  factory $WarehouseProductItemCopyWith(WarehouseProductItem value,
          $Res Function(WarehouseProductItem) then) =
      _$WarehouseProductItemCopyWithImpl<$Res, WarehouseProductItem>;
  @useResult
  $Res call(
      {String? customer_name,
      int? product_id,
      String? name,
      String? sku,
      String? internal_ref});
}

/// @nodoc
class _$WarehouseProductItemCopyWithImpl<$Res,
        $Val extends WarehouseProductItem>
    implements $WarehouseProductItemCopyWith<$Res> {
  _$WarehouseProductItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WarehouseProductItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customer_name = freezed,
    Object? product_id = freezed,
    Object? name = freezed,
    Object? sku = freezed,
    Object? internal_ref = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WarehouseProductItemImplCopyWith<$Res>
    implements $WarehouseProductItemCopyWith<$Res> {
  factory _$$WarehouseProductItemImplCopyWith(_$WarehouseProductItemImpl value,
          $Res Function(_$WarehouseProductItemImpl) then) =
      __$$WarehouseProductItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? customer_name,
      int? product_id,
      String? name,
      String? sku,
      String? internal_ref});
}

/// @nodoc
class __$$WarehouseProductItemImplCopyWithImpl<$Res>
    extends _$WarehouseProductItemCopyWithImpl<$Res, _$WarehouseProductItemImpl>
    implements _$$WarehouseProductItemImplCopyWith<$Res> {
  __$$WarehouseProductItemImplCopyWithImpl(_$WarehouseProductItemImpl _value,
      $Res Function(_$WarehouseProductItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of WarehouseProductItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customer_name = freezed,
    Object? product_id = freezed,
    Object? name = freezed,
    Object? sku = freezed,
    Object? internal_ref = freezed,
  }) {
    return _then(_$WarehouseProductItemImpl(
      customer_name: freezed == customer_name
          ? _value.customer_name
          : customer_name // ignore: cast_nullable_to_non_nullable
              as String?,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WarehouseProductItemImpl implements _WarehouseProductItem {
  const _$WarehouseProductItemImpl(
      {this.customer_name,
      this.product_id,
      this.name,
      this.sku,
      this.internal_ref});

  factory _$WarehouseProductItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$WarehouseProductItemImplFromJson(json);

  @override
  final String? customer_name;
  @override
  final int? product_id;
  @override
  final String? name;
  @override
  final String? sku;
  @override
  final String? internal_ref;

  @override
  String toString() {
    return 'WarehouseProductItem(customer_name: $customer_name, product_id: $product_id, name: $name, sku: $sku, internal_ref: $internal_ref)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WarehouseProductItemImpl &&
            (identical(other.customer_name, customer_name) ||
                other.customer_name == customer_name) &&
            (identical(other.product_id, product_id) ||
                other.product_id == product_id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.sku, sku) || other.sku == sku) &&
            (identical(other.internal_ref, internal_ref) ||
                other.internal_ref == internal_ref));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, customer_name, product_id, name, sku, internal_ref);

  /// Create a copy of WarehouseProductItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WarehouseProductItemImplCopyWith<_$WarehouseProductItemImpl>
      get copyWith =>
          __$$WarehouseProductItemImplCopyWithImpl<_$WarehouseProductItemImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WarehouseProductItemImplToJson(
      this,
    );
  }
}

abstract class _WarehouseProductItem implements WarehouseProductItem {
  const factory _WarehouseProductItem(
      {final String? customer_name,
      final int? product_id,
      final String? name,
      final String? sku,
      final String? internal_ref}) = _$WarehouseProductItemImpl;

  factory _WarehouseProductItem.fromJson(Map<String, dynamic> json) =
      _$WarehouseProductItemImpl.fromJson;

  @override
  String? get customer_name;
  @override
  int? get product_id;
  @override
  String? get name;
  @override
  String? get sku;
  @override
  String? get internal_ref;

  /// Create a copy of WarehouseProductItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WarehouseProductItemImplCopyWith<_$WarehouseProductItemImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CustomerListModel _$CustomerListModelFromJson(Map<String, dynamic> json) {
  return _CustomerListModel.fromJson(json);
}

/// @nodoc
mixin _$CustomerListModel {
  String? get jsonrpc => throw _privateConstructorUsedError;
  List<CustomerItem>? get result => throw _privateConstructorUsedError;

  /// Serializes this CustomerListModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CustomerListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomerListModelCopyWith<CustomerListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerListModelCopyWith<$Res> {
  factory $CustomerListModelCopyWith(
          CustomerListModel value, $Res Function(CustomerListModel) then) =
      _$CustomerListModelCopyWithImpl<$Res, CustomerListModel>;
  @useResult
  $Res call({String? jsonrpc, List<CustomerItem>? result});
}

/// @nodoc
class _$CustomerListModelCopyWithImpl<$Res, $Val extends CustomerListModel>
    implements $CustomerListModelCopyWith<$Res> {
  _$CustomerListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomerListModel
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
              as List<CustomerItem>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomerListModelImplCopyWith<$Res>
    implements $CustomerListModelCopyWith<$Res> {
  factory _$$CustomerListModelImplCopyWith(_$CustomerListModelImpl value,
          $Res Function(_$CustomerListModelImpl) then) =
      __$$CustomerListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? jsonrpc, List<CustomerItem>? result});
}

/// @nodoc
class __$$CustomerListModelImplCopyWithImpl<$Res>
    extends _$CustomerListModelCopyWithImpl<$Res, _$CustomerListModelImpl>
    implements _$$CustomerListModelImplCopyWith<$Res> {
  __$$CustomerListModelImplCopyWithImpl(_$CustomerListModelImpl _value,
      $Res Function(_$CustomerListModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomerListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jsonrpc = freezed,
    Object? result = freezed,
  }) {
    return _then(_$CustomerListModelImpl(
      jsonrpc: freezed == jsonrpc
          ? _value.jsonrpc
          : jsonrpc // ignore: cast_nullable_to_non_nullable
              as String?,
      result: freezed == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<CustomerItem>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomerListModelImpl implements _CustomerListModel {
  const _$CustomerListModelImpl(
      {this.jsonrpc, final List<CustomerItem>? result})
      : _result = result;

  factory _$CustomerListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerListModelImplFromJson(json);

  @override
  final String? jsonrpc;
  final List<CustomerItem>? _result;
  @override
  List<CustomerItem>? get result {
    final value = _result;
    if (value == null) return null;
    if (_result is EqualUnmodifiableListView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CustomerListModel(jsonrpc: $jsonrpc, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerListModelImpl &&
            (identical(other.jsonrpc, jsonrpc) || other.jsonrpc == jsonrpc) &&
            const DeepCollectionEquality().equals(other._result, _result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, jsonrpc, const DeepCollectionEquality().hash(_result));

  /// Create a copy of CustomerListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerListModelImplCopyWith<_$CustomerListModelImpl> get copyWith =>
      __$$CustomerListModelImplCopyWithImpl<_$CustomerListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerListModelImplToJson(
      this,
    );
  }
}

abstract class _CustomerListModel implements CustomerListModel {
  const factory _CustomerListModel(
      {final String? jsonrpc,
      final List<CustomerItem>? result}) = _$CustomerListModelImpl;

  factory _CustomerListModel.fromJson(Map<String, dynamic> json) =
      _$CustomerListModelImpl.fromJson;

  @override
  String? get jsonrpc;
  @override
  List<CustomerItem>? get result;

  /// Create a copy of CustomerListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomerListModelImplCopyWith<_$CustomerListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CustomerItem _$CustomerItemFromJson(Map<String, dynamic> json) {
  return _CustomerItem.fromJson(json);
}

/// @nodoc
mixin _$CustomerItem {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this CustomerItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CustomerItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomerItemCopyWith<CustomerItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerItemCopyWith<$Res> {
  factory $CustomerItemCopyWith(
          CustomerItem value, $Res Function(CustomerItem) then) =
      _$CustomerItemCopyWithImpl<$Res, CustomerItem>;
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class _$CustomerItemCopyWithImpl<$Res, $Val extends CustomerItem>
    implements $CustomerItemCopyWith<$Res> {
  _$CustomerItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomerItem
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
abstract class _$$CustomerItemImplCopyWith<$Res>
    implements $CustomerItemCopyWith<$Res> {
  factory _$$CustomerItemImplCopyWith(
          _$CustomerItemImpl value, $Res Function(_$CustomerItemImpl) then) =
      __$$CustomerItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class __$$CustomerItemImplCopyWithImpl<$Res>
    extends _$CustomerItemCopyWithImpl<$Res, _$CustomerItemImpl>
    implements _$$CustomerItemImplCopyWith<$Res> {
  __$$CustomerItemImplCopyWithImpl(
      _$CustomerItemImpl _value, $Res Function(_$CustomerItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomerItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$CustomerItemImpl(
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
class _$CustomerItemImpl implements _CustomerItem {
  const _$CustomerItemImpl({this.id, this.name});

  factory _$CustomerItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerItemImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'CustomerItem(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of CustomerItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerItemImplCopyWith<_$CustomerItemImpl> get copyWith =>
      __$$CustomerItemImplCopyWithImpl<_$CustomerItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerItemImplToJson(
      this,
    );
  }
}

abstract class _CustomerItem implements CustomerItem {
  const factory _CustomerItem({final int? id, final String? name}) =
      _$CustomerItemImpl;

  factory _CustomerItem.fromJson(Map<String, dynamic> json) =
      _$CustomerItemImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;

  /// Create a copy of CustomerItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomerItemImplCopyWith<_$CustomerItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
