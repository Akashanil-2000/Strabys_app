// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'warehouse_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WarehouseListModel _$WarehouseListModelFromJson(Map<String, dynamic> json) {
  return _WarehouseListModel.fromJson(json);
}

/// @nodoc
mixin _$WarehouseListModel {
  String? get jsonrpc => throw _privateConstructorUsedError; // Id? id,
  List<WarehouseItem>? get result => throw _privateConstructorUsedError;

  /// Serializes this WarehouseListModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WarehouseListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WarehouseListModelCopyWith<WarehouseListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WarehouseListModelCopyWith<$Res> {
  factory $WarehouseListModelCopyWith(
          WarehouseListModel value, $Res Function(WarehouseListModel) then) =
      _$WarehouseListModelCopyWithImpl<$Res, WarehouseListModel>;
  @useResult
  $Res call({String? jsonrpc, List<WarehouseItem>? result});
}

/// @nodoc
class _$WarehouseListModelCopyWithImpl<$Res, $Val extends WarehouseListModel>
    implements $WarehouseListModelCopyWith<$Res> {
  _$WarehouseListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WarehouseListModel
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
              as List<WarehouseItem>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WarehouseListModelImplCopyWith<$Res>
    implements $WarehouseListModelCopyWith<$Res> {
  factory _$$WarehouseListModelImplCopyWith(_$WarehouseListModelImpl value,
          $Res Function(_$WarehouseListModelImpl) then) =
      __$$WarehouseListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? jsonrpc, List<WarehouseItem>? result});
}

/// @nodoc
class __$$WarehouseListModelImplCopyWithImpl<$Res>
    extends _$WarehouseListModelCopyWithImpl<$Res, _$WarehouseListModelImpl>
    implements _$$WarehouseListModelImplCopyWith<$Res> {
  __$$WarehouseListModelImplCopyWithImpl(_$WarehouseListModelImpl _value,
      $Res Function(_$WarehouseListModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of WarehouseListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jsonrpc = freezed,
    Object? result = freezed,
  }) {
    return _then(_$WarehouseListModelImpl(
      jsonrpc: freezed == jsonrpc
          ? _value.jsonrpc
          : jsonrpc // ignore: cast_nullable_to_non_nullable
              as String?,
      result: freezed == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<WarehouseItem>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WarehouseListModelImpl implements _WarehouseListModel {
  const _$WarehouseListModelImpl(
      {this.jsonrpc, final List<WarehouseItem>? result})
      : _result = result;

  factory _$WarehouseListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WarehouseListModelImplFromJson(json);

  @override
  final String? jsonrpc;
// Id? id,
  final List<WarehouseItem>? _result;
// Id? id,
  @override
  List<WarehouseItem>? get result {
    final value = _result;
    if (value == null) return null;
    if (_result is EqualUnmodifiableListView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'WarehouseListModel(jsonrpc: $jsonrpc, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WarehouseListModelImpl &&
            (identical(other.jsonrpc, jsonrpc) || other.jsonrpc == jsonrpc) &&
            const DeepCollectionEquality().equals(other._result, _result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, jsonrpc, const DeepCollectionEquality().hash(_result));

  /// Create a copy of WarehouseListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WarehouseListModelImplCopyWith<_$WarehouseListModelImpl> get copyWith =>
      __$$WarehouseListModelImplCopyWithImpl<_$WarehouseListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WarehouseListModelImplToJson(
      this,
    );
  }
}

abstract class _WarehouseListModel implements WarehouseListModel {
  const factory _WarehouseListModel(
      {final String? jsonrpc,
      final List<WarehouseItem>? result}) = _$WarehouseListModelImpl;

  factory _WarehouseListModel.fromJson(Map<String, dynamic> json) =
      _$WarehouseListModelImpl.fromJson;

  @override
  String? get jsonrpc; // Id? id,
  @override
  List<WarehouseItem>? get result;

  /// Create a copy of WarehouseListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WarehouseListModelImplCopyWith<_$WarehouseListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WarehouseItem _$WarehouseItemFromJson(Map<String, dynamic> json) {
  return _WarehouseItem.fromJson(json);
}

/// @nodoc
mixin _$WarehouseItem {
  String? get name => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;

  /// Serializes this WarehouseItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WarehouseItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WarehouseItemCopyWith<WarehouseItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WarehouseItemCopyWith<$Res> {
  factory $WarehouseItemCopyWith(
          WarehouseItem value, $Res Function(WarehouseItem) then) =
      _$WarehouseItemCopyWithImpl<$Res, WarehouseItem>;
  @useResult
  $Res call({String? name, int? id});
}

/// @nodoc
class _$WarehouseItemCopyWithImpl<$Res, $Val extends WarehouseItem>
    implements $WarehouseItemCopyWith<$Res> {
  _$WarehouseItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WarehouseItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WarehouseItemImplCopyWith<$Res>
    implements $WarehouseItemCopyWith<$Res> {
  factory _$$WarehouseItemImplCopyWith(
          _$WarehouseItemImpl value, $Res Function(_$WarehouseItemImpl) then) =
      __$$WarehouseItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, int? id});
}

/// @nodoc
class __$$WarehouseItemImplCopyWithImpl<$Res>
    extends _$WarehouseItemCopyWithImpl<$Res, _$WarehouseItemImpl>
    implements _$$WarehouseItemImplCopyWith<$Res> {
  __$$WarehouseItemImplCopyWithImpl(
      _$WarehouseItemImpl _value, $Res Function(_$WarehouseItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of WarehouseItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
  }) {
    return _then(_$WarehouseItemImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
class _$WarehouseItemImpl implements _WarehouseItem {
  const _$WarehouseItemImpl({this.name, this.id});

  factory _$WarehouseItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$WarehouseItemImplFromJson(json);

  @override
  final String? name;
  @override
  final int? id;

  @override
  String toString() {
    return 'WarehouseItem(name: $name, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WarehouseItemImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, id);

  /// Create a copy of WarehouseItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WarehouseItemImplCopyWith<_$WarehouseItemImpl> get copyWith =>
      __$$WarehouseItemImplCopyWithImpl<_$WarehouseItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WarehouseItemImplToJson(
      this,
    );
  }
}

abstract class _WarehouseItem implements WarehouseItem {
  const factory _WarehouseItem({final String? name, final int? id}) =
      _$WarehouseItemImpl;

  factory _WarehouseItem.fromJson(Map<String, dynamic> json) =
      _$WarehouseItemImpl.fromJson;

  @override
  String? get name;
  @override
  int? get id;

  /// Create a copy of WarehouseItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WarehouseItemImplCopyWith<_$WarehouseItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
