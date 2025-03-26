// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'warehouse_destination_location_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WarehouseDestinationLocationModel _$WarehouseDestinationLocationModelFromJson(
    Map<String, dynamic> json) {
  return _WarehouseDestinationLocationModel.fromJson(json);
}

/// @nodoc
mixin _$WarehouseDestinationLocationModel {
  String? get jsonrpc => throw _privateConstructorUsedError;
  List<WarehouseDestinationLocationItem>? get result =>
      throw _privateConstructorUsedError;

  /// Serializes this WarehouseDestinationLocationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WarehouseDestinationLocationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WarehouseDestinationLocationModelCopyWith<WarehouseDestinationLocationModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WarehouseDestinationLocationModelCopyWith<$Res> {
  factory $WarehouseDestinationLocationModelCopyWith(
          WarehouseDestinationLocationModel value,
          $Res Function(WarehouseDestinationLocationModel) then) =
      _$WarehouseDestinationLocationModelCopyWithImpl<$Res,
          WarehouseDestinationLocationModel>;
  @useResult
  $Res call({String? jsonrpc, List<WarehouseDestinationLocationItem>? result});
}

/// @nodoc
class _$WarehouseDestinationLocationModelCopyWithImpl<$Res,
        $Val extends WarehouseDestinationLocationModel>
    implements $WarehouseDestinationLocationModelCopyWith<$Res> {
  _$WarehouseDestinationLocationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WarehouseDestinationLocationModel
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
              as List<WarehouseDestinationLocationItem>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WarehouseDestinationLocationModelImplCopyWith<$Res>
    implements $WarehouseDestinationLocationModelCopyWith<$Res> {
  factory _$$WarehouseDestinationLocationModelImplCopyWith(
          _$WarehouseDestinationLocationModelImpl value,
          $Res Function(_$WarehouseDestinationLocationModelImpl) then) =
      __$$WarehouseDestinationLocationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? jsonrpc, List<WarehouseDestinationLocationItem>? result});
}

/// @nodoc
class __$$WarehouseDestinationLocationModelImplCopyWithImpl<$Res>
    extends _$WarehouseDestinationLocationModelCopyWithImpl<$Res,
        _$WarehouseDestinationLocationModelImpl>
    implements _$$WarehouseDestinationLocationModelImplCopyWith<$Res> {
  __$$WarehouseDestinationLocationModelImplCopyWithImpl(
      _$WarehouseDestinationLocationModelImpl _value,
      $Res Function(_$WarehouseDestinationLocationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of WarehouseDestinationLocationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jsonrpc = freezed,
    Object? result = freezed,
  }) {
    return _then(_$WarehouseDestinationLocationModelImpl(
      jsonrpc: freezed == jsonrpc
          ? _value.jsonrpc
          : jsonrpc // ignore: cast_nullable_to_non_nullable
              as String?,
      result: freezed == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<WarehouseDestinationLocationItem>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WarehouseDestinationLocationModelImpl
    implements _WarehouseDestinationLocationModel {
  const _$WarehouseDestinationLocationModelImpl(
      {this.jsonrpc, final List<WarehouseDestinationLocationItem>? result})
      : _result = result;

  factory _$WarehouseDestinationLocationModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$WarehouseDestinationLocationModelImplFromJson(json);

  @override
  final String? jsonrpc;
  final List<WarehouseDestinationLocationItem>? _result;
  @override
  List<WarehouseDestinationLocationItem>? get result {
    final value = _result;
    if (value == null) return null;
    if (_result is EqualUnmodifiableListView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'WarehouseDestinationLocationModel(jsonrpc: $jsonrpc, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WarehouseDestinationLocationModelImpl &&
            (identical(other.jsonrpc, jsonrpc) || other.jsonrpc == jsonrpc) &&
            const DeepCollectionEquality().equals(other._result, _result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, jsonrpc, const DeepCollectionEquality().hash(_result));

  /// Create a copy of WarehouseDestinationLocationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WarehouseDestinationLocationModelImplCopyWith<
          _$WarehouseDestinationLocationModelImpl>
      get copyWith => __$$WarehouseDestinationLocationModelImplCopyWithImpl<
          _$WarehouseDestinationLocationModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WarehouseDestinationLocationModelImplToJson(
      this,
    );
  }
}

abstract class _WarehouseDestinationLocationModel
    implements WarehouseDestinationLocationModel {
  const factory _WarehouseDestinationLocationModel(
          {final String? jsonrpc,
          final List<WarehouseDestinationLocationItem>? result}) =
      _$WarehouseDestinationLocationModelImpl;

  factory _WarehouseDestinationLocationModel.fromJson(
          Map<String, dynamic> json) =
      _$WarehouseDestinationLocationModelImpl.fromJson;

  @override
  String? get jsonrpc;
  @override
  List<WarehouseDestinationLocationItem>? get result;

  /// Create a copy of WarehouseDestinationLocationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WarehouseDestinationLocationModelImplCopyWith<
          _$WarehouseDestinationLocationModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

WarehouseDestinationLocationItem _$WarehouseDestinationLocationItemFromJson(
    Map<String, dynamic> json) {
  return _WarehouseDestinationLocationItem.fromJson(json);
}

/// @nodoc
mixin _$WarehouseDestinationLocationItem {
  String? get name => throw _privateConstructorUsedError;
  String? get barcode => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;

  /// Serializes this WarehouseDestinationLocationItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WarehouseDestinationLocationItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WarehouseDestinationLocationItemCopyWith<WarehouseDestinationLocationItem>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WarehouseDestinationLocationItemCopyWith<$Res> {
  factory $WarehouseDestinationLocationItemCopyWith(
          WarehouseDestinationLocationItem value,
          $Res Function(WarehouseDestinationLocationItem) then) =
      _$WarehouseDestinationLocationItemCopyWithImpl<$Res,
          WarehouseDestinationLocationItem>;
  @useResult
  $Res call({String? name, String? barcode, int? id});
}

/// @nodoc
class _$WarehouseDestinationLocationItemCopyWithImpl<$Res,
        $Val extends WarehouseDestinationLocationItem>
    implements $WarehouseDestinationLocationItemCopyWith<$Res> {
  _$WarehouseDestinationLocationItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WarehouseDestinationLocationItem
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
abstract class _$$WarehouseDestinationLocationItemImplCopyWith<$Res>
    implements $WarehouseDestinationLocationItemCopyWith<$Res> {
  factory _$$WarehouseDestinationLocationItemImplCopyWith(
          _$WarehouseDestinationLocationItemImpl value,
          $Res Function(_$WarehouseDestinationLocationItemImpl) then) =
      __$$WarehouseDestinationLocationItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? barcode, int? id});
}

/// @nodoc
class __$$WarehouseDestinationLocationItemImplCopyWithImpl<$Res>
    extends _$WarehouseDestinationLocationItemCopyWithImpl<$Res,
        _$WarehouseDestinationLocationItemImpl>
    implements _$$WarehouseDestinationLocationItemImplCopyWith<$Res> {
  __$$WarehouseDestinationLocationItemImplCopyWithImpl(
      _$WarehouseDestinationLocationItemImpl _value,
      $Res Function(_$WarehouseDestinationLocationItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of WarehouseDestinationLocationItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? barcode = freezed,
    Object? id = freezed,
  }) {
    return _then(_$WarehouseDestinationLocationItemImpl(
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
class _$WarehouseDestinationLocationItemImpl
    implements _WarehouseDestinationLocationItem {
  const _$WarehouseDestinationLocationItemImpl(
      {this.name, this.barcode, this.id});

  factory _$WarehouseDestinationLocationItemImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$WarehouseDestinationLocationItemImplFromJson(json);

  @override
  final String? name;
  @override
  final String? barcode;
  @override
  final int? id;

  @override
  String toString() {
    return 'WarehouseDestinationLocationItem(name: $name, barcode: $barcode, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WarehouseDestinationLocationItemImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, barcode, id);

  /// Create a copy of WarehouseDestinationLocationItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WarehouseDestinationLocationItemImplCopyWith<
          _$WarehouseDestinationLocationItemImpl>
      get copyWith => __$$WarehouseDestinationLocationItemImplCopyWithImpl<
          _$WarehouseDestinationLocationItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WarehouseDestinationLocationItemImplToJson(
      this,
    );
  }
}

abstract class _WarehouseDestinationLocationItem
    implements WarehouseDestinationLocationItem {
  const factory _WarehouseDestinationLocationItem(
      {final String? name,
      final String? barcode,
      final int? id}) = _$WarehouseDestinationLocationItemImpl;

  factory _WarehouseDestinationLocationItem.fromJson(
          Map<String, dynamic> json) =
      _$WarehouseDestinationLocationItemImpl.fromJson;

  @override
  String? get name;
  @override
  String? get barcode;
  @override
  int? get id;

  /// Create a copy of WarehouseDestinationLocationItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WarehouseDestinationLocationItemImplCopyWith<
          _$WarehouseDestinationLocationItemImpl>
      get copyWith => throw _privateConstructorUsedError;
}
