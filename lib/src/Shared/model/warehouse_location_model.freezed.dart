// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'warehouse_location_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WarehouseLocationModel _$WarehouseLocationModelFromJson(
    Map<String, dynamic> json) {
  return _WarehouseLocationModel.fromJson(json);
}

/// @nodoc
mixin _$WarehouseLocationModel {
  String? get jsonrpc => throw _privateConstructorUsedError; // Id? id,
  List<WarehouseLocationItem>? get result => throw _privateConstructorUsedError;

  /// Serializes this WarehouseLocationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WarehouseLocationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WarehouseLocationModelCopyWith<WarehouseLocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WarehouseLocationModelCopyWith<$Res> {
  factory $WarehouseLocationModelCopyWith(WarehouseLocationModel value,
          $Res Function(WarehouseLocationModel) then) =
      _$WarehouseLocationModelCopyWithImpl<$Res, WarehouseLocationModel>;
  @useResult
  $Res call({String? jsonrpc, List<WarehouseLocationItem>? result});
}

/// @nodoc
class _$WarehouseLocationModelCopyWithImpl<$Res,
        $Val extends WarehouseLocationModel>
    implements $WarehouseLocationModelCopyWith<$Res> {
  _$WarehouseLocationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WarehouseLocationModel
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
              as List<WarehouseLocationItem>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WarehouseLocationModelImplCopyWith<$Res>
    implements $WarehouseLocationModelCopyWith<$Res> {
  factory _$$WarehouseLocationModelImplCopyWith(
          _$WarehouseLocationModelImpl value,
          $Res Function(_$WarehouseLocationModelImpl) then) =
      __$$WarehouseLocationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? jsonrpc, List<WarehouseLocationItem>? result});
}

/// @nodoc
class __$$WarehouseLocationModelImplCopyWithImpl<$Res>
    extends _$WarehouseLocationModelCopyWithImpl<$Res,
        _$WarehouseLocationModelImpl>
    implements _$$WarehouseLocationModelImplCopyWith<$Res> {
  __$$WarehouseLocationModelImplCopyWithImpl(
      _$WarehouseLocationModelImpl _value,
      $Res Function(_$WarehouseLocationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of WarehouseLocationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jsonrpc = freezed,
    Object? result = freezed,
  }) {
    return _then(_$WarehouseLocationModelImpl(
      jsonrpc: freezed == jsonrpc
          ? _value.jsonrpc
          : jsonrpc // ignore: cast_nullable_to_non_nullable
              as String?,
      result: freezed == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<WarehouseLocationItem>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WarehouseLocationModelImpl implements _WarehouseLocationModel {
  const _$WarehouseLocationModelImpl(
      {this.jsonrpc, final List<WarehouseLocationItem>? result})
      : _result = result;

  factory _$WarehouseLocationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WarehouseLocationModelImplFromJson(json);

  @override
  final String? jsonrpc;
// Id? id,
  final List<WarehouseLocationItem>? _result;
// Id? id,
  @override
  List<WarehouseLocationItem>? get result {
    final value = _result;
    if (value == null) return null;
    if (_result is EqualUnmodifiableListView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'WarehouseLocationModel(jsonrpc: $jsonrpc, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WarehouseLocationModelImpl &&
            (identical(other.jsonrpc, jsonrpc) || other.jsonrpc == jsonrpc) &&
            const DeepCollectionEquality().equals(other._result, _result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, jsonrpc, const DeepCollectionEquality().hash(_result));

  /// Create a copy of WarehouseLocationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WarehouseLocationModelImplCopyWith<_$WarehouseLocationModelImpl>
      get copyWith => __$$WarehouseLocationModelImplCopyWithImpl<
          _$WarehouseLocationModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WarehouseLocationModelImplToJson(
      this,
    );
  }
}

abstract class _WarehouseLocationModel implements WarehouseLocationModel {
  const factory _WarehouseLocationModel(
          {final String? jsonrpc, final List<WarehouseLocationItem>? result}) =
      _$WarehouseLocationModelImpl;

  factory _WarehouseLocationModel.fromJson(Map<String, dynamic> json) =
      _$WarehouseLocationModelImpl.fromJson;

  @override
  String? get jsonrpc; // Id? id,
  @override
  List<WarehouseLocationItem>? get result;

  /// Create a copy of WarehouseLocationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WarehouseLocationModelImplCopyWith<_$WarehouseLocationModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

WarehouseLocationItem _$WarehouseLocationItemFromJson(
    Map<String, dynamic> json) {
  return _WarehouseLocationItem.fromJson(json);
}

/// @nodoc
mixin _$WarehouseLocationItem {
  String? get name => throw _privateConstructorUsedError;
  String? get barcode => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;

  /// Serializes this WarehouseLocationItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WarehouseLocationItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WarehouseLocationItemCopyWith<WarehouseLocationItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WarehouseLocationItemCopyWith<$Res> {
  factory $WarehouseLocationItemCopyWith(WarehouseLocationItem value,
          $Res Function(WarehouseLocationItem) then) =
      _$WarehouseLocationItemCopyWithImpl<$Res, WarehouseLocationItem>;
  @useResult
  $Res call({String? name, String? barcode, int? id});
}

/// @nodoc
class _$WarehouseLocationItemCopyWithImpl<$Res,
        $Val extends WarehouseLocationItem>
    implements $WarehouseLocationItemCopyWith<$Res> {
  _$WarehouseLocationItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WarehouseLocationItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? barcode = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WarehouseLocationItemImplCopyWith<$Res>
    implements $WarehouseLocationItemCopyWith<$Res> {
  factory _$$WarehouseLocationItemImplCopyWith(
          _$WarehouseLocationItemImpl value,
          $Res Function(_$WarehouseLocationItemImpl) then) =
      __$$WarehouseLocationItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? barcode, int? id});
}

/// @nodoc
class __$$WarehouseLocationItemImplCopyWithImpl<$Res>
    extends _$WarehouseLocationItemCopyWithImpl<$Res,
        _$WarehouseLocationItemImpl>
    implements _$$WarehouseLocationItemImplCopyWith<$Res> {
  __$$WarehouseLocationItemImplCopyWithImpl(_$WarehouseLocationItemImpl _value,
      $Res Function(_$WarehouseLocationItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of WarehouseLocationItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? barcode = freezed,
    Object? id = freezed,
  }) {
    return _then(_$WarehouseLocationItemImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WarehouseLocationItemImpl implements _WarehouseLocationItem {
  const _$WarehouseLocationItemImpl({this.name, this.barcode, this.id});

  factory _$WarehouseLocationItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$WarehouseLocationItemImplFromJson(json);

  @override
  final String? name;
  @override
  final String? barcode;
  @override
  final int? id;

  @override
  String toString() {
    return 'WarehouseLocationItem(name: $name, barcode: $barcode, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WarehouseLocationItemImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, barcode, id);

  /// Create a copy of WarehouseLocationItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WarehouseLocationItemImplCopyWith<_$WarehouseLocationItemImpl>
      get copyWith => __$$WarehouseLocationItemImplCopyWithImpl<
          _$WarehouseLocationItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WarehouseLocationItemImplToJson(
      this,
    );
  }
}

abstract class _WarehouseLocationItem implements WarehouseLocationItem {
  const factory _WarehouseLocationItem(
      {final String? name,
      final String? barcode,
      final int? id}) = _$WarehouseLocationItemImpl;

  factory _WarehouseLocationItem.fromJson(Map<String, dynamic> json) =
      _$WarehouseLocationItemImpl.fromJson;

  @override
  String? get name;
  @override
  String? get barcode;
  @override
  int? get id;

  /// Create a copy of WarehouseLocationItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WarehouseLocationItemImplCopyWith<_$WarehouseLocationItemImpl>
      get copyWith => throw _privateConstructorUsedError;
}
