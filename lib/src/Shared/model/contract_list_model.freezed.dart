// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contract_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ContractListModel _$ContractListModelFromJson(Map<String, dynamic> json) {
  return _ContractListModel.fromJson(json);
}

/// @nodoc
mixin _$ContractListModel {
  String get jsonrpc => throw _privateConstructorUsedError;
  ContractResult get result => throw _privateConstructorUsedError;

  /// Serializes this ContractListModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContractListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContractListModelCopyWith<ContractListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractListModelCopyWith<$Res> {
  factory $ContractListModelCopyWith(
          ContractListModel value, $Res Function(ContractListModel) then) =
      _$ContractListModelCopyWithImpl<$Res, ContractListModel>;
  @useResult
  $Res call({String jsonrpc, ContractResult result});

  $ContractResultCopyWith<$Res> get result;
}

/// @nodoc
class _$ContractListModelCopyWithImpl<$Res, $Val extends ContractListModel>
    implements $ContractListModelCopyWith<$Res> {
  _$ContractListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContractListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jsonrpc = null,
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      jsonrpc: null == jsonrpc
          ? _value.jsonrpc
          : jsonrpc // ignore: cast_nullable_to_non_nullable
              as String,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ContractResult,
    ) as $Val);
  }

  /// Create a copy of ContractListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContractResultCopyWith<$Res> get result {
    return $ContractResultCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ContractListModelImplCopyWith<$Res>
    implements $ContractListModelCopyWith<$Res> {
  factory _$$ContractListModelImplCopyWith(_$ContractListModelImpl value,
          $Res Function(_$ContractListModelImpl) then) =
      __$$ContractListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String jsonrpc, ContractResult result});

  @override
  $ContractResultCopyWith<$Res> get result;
}

/// @nodoc
class __$$ContractListModelImplCopyWithImpl<$Res>
    extends _$ContractListModelCopyWithImpl<$Res, _$ContractListModelImpl>
    implements _$$ContractListModelImplCopyWith<$Res> {
  __$$ContractListModelImplCopyWithImpl(_$ContractListModelImpl _value,
      $Res Function(_$ContractListModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContractListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jsonrpc = null,
    Object? result = null,
  }) {
    return _then(_$ContractListModelImpl(
      jsonrpc: null == jsonrpc
          ? _value.jsonrpc
          : jsonrpc // ignore: cast_nullable_to_non_nullable
              as String,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ContractResult,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContractListModelImpl implements _ContractListModel {
  const _$ContractListModelImpl({required this.jsonrpc, required this.result});

  factory _$ContractListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContractListModelImplFromJson(json);

  @override
  final String jsonrpc;
  @override
  final ContractResult result;

  @override
  String toString() {
    return 'ContractListModel(jsonrpc: $jsonrpc, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContractListModelImpl &&
            (identical(other.jsonrpc, jsonrpc) || other.jsonrpc == jsonrpc) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, jsonrpc, result);

  /// Create a copy of ContractListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContractListModelImplCopyWith<_$ContractListModelImpl> get copyWith =>
      __$$ContractListModelImplCopyWithImpl<_$ContractListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContractListModelImplToJson(
      this,
    );
  }
}

abstract class _ContractListModel implements ContractListModel {
  const factory _ContractListModel(
      {required final String jsonrpc,
      required final ContractResult result}) = _$ContractListModelImpl;

  factory _ContractListModel.fromJson(Map<String, dynamic> json) =
      _$ContractListModelImpl.fromJson;

  @override
  String get jsonrpc;
  @override
  ContractResult get result;

  /// Create a copy of ContractListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContractListModelImplCopyWith<_$ContractListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ContractResult _$ContractResultFromJson(Map<String, dynamic> json) {
  return _ContractResult.fromJson(json);
}

/// @nodoc
mixin _$ContractResult {
  int get status => throw _privateConstructorUsedError;
  String get response => throw _privateConstructorUsedError;
  List<ContractItem> get contract_data => throw _privateConstructorUsedError;

  /// Serializes this ContractResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContractResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContractResultCopyWith<ContractResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractResultCopyWith<$Res> {
  factory $ContractResultCopyWith(
          ContractResult value, $Res Function(ContractResult) then) =
      _$ContractResultCopyWithImpl<$Res, ContractResult>;
  @useResult
  $Res call({int status, String response, List<ContractItem> contract_data});
}

/// @nodoc
class _$ContractResultCopyWithImpl<$Res, $Val extends ContractResult>
    implements $ContractResultCopyWith<$Res> {
  _$ContractResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContractResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? response = null,
    Object? contract_data = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String,
      contract_data: null == contract_data
          ? _value.contract_data
          : contract_data // ignore: cast_nullable_to_non_nullable
              as List<ContractItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContractResultImplCopyWith<$Res>
    implements $ContractResultCopyWith<$Res> {
  factory _$$ContractResultImplCopyWith(_$ContractResultImpl value,
          $Res Function(_$ContractResultImpl) then) =
      __$$ContractResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status, String response, List<ContractItem> contract_data});
}

/// @nodoc
class __$$ContractResultImplCopyWithImpl<$Res>
    extends _$ContractResultCopyWithImpl<$Res, _$ContractResultImpl>
    implements _$$ContractResultImplCopyWith<$Res> {
  __$$ContractResultImplCopyWithImpl(
      _$ContractResultImpl _value, $Res Function(_$ContractResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContractResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? response = null,
    Object? contract_data = null,
  }) {
    return _then(_$ContractResultImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String,
      contract_data: null == contract_data
          ? _value._contract_data
          : contract_data // ignore: cast_nullable_to_non_nullable
              as List<ContractItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContractResultImpl implements _ContractResult {
  const _$ContractResultImpl(
      {required this.status,
      required this.response,
      required final List<ContractItem> contract_data})
      : _contract_data = contract_data;

  factory _$ContractResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContractResultImplFromJson(json);

  @override
  final int status;
  @override
  final String response;
  final List<ContractItem> _contract_data;
  @override
  List<ContractItem> get contract_data {
    if (_contract_data is EqualUnmodifiableListView) return _contract_data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contract_data);
  }

  @override
  String toString() {
    return 'ContractResult(status: $status, response: $response, contract_data: $contract_data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContractResultImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.response, response) ||
                other.response == response) &&
            const DeepCollectionEquality()
                .equals(other._contract_data, _contract_data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, response,
      const DeepCollectionEquality().hash(_contract_data));

  /// Create a copy of ContractResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContractResultImplCopyWith<_$ContractResultImpl> get copyWith =>
      __$$ContractResultImplCopyWithImpl<_$ContractResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContractResultImplToJson(
      this,
    );
  }
}

abstract class _ContractResult implements ContractResult {
  const factory _ContractResult(
      {required final int status,
      required final String response,
      required final List<ContractItem> contract_data}) = _$ContractResultImpl;

  factory _ContractResult.fromJson(Map<String, dynamic> json) =
      _$ContractResultImpl.fromJson;

  @override
  int get status;
  @override
  String get response;
  @override
  List<ContractItem> get contract_data;

  /// Create a copy of ContractResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContractResultImplCopyWith<_$ContractResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ContractItem _$ContractItemFromJson(Map<String, dynamic> json) {
  return _ContractItem.fromJson(json);
}

/// @nodoc
mixin _$ContractItem {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this ContractItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContractItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContractItemCopyWith<ContractItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractItemCopyWith<$Res> {
  factory $ContractItemCopyWith(
          ContractItem value, $Res Function(ContractItem) then) =
      _$ContractItemCopyWithImpl<$Res, ContractItem>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$ContractItemCopyWithImpl<$Res, $Val extends ContractItem>
    implements $ContractItemCopyWith<$Res> {
  _$ContractItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContractItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContractItemImplCopyWith<$Res>
    implements $ContractItemCopyWith<$Res> {
  factory _$$ContractItemImplCopyWith(
          _$ContractItemImpl value, $Res Function(_$ContractItemImpl) then) =
      __$$ContractItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$ContractItemImplCopyWithImpl<$Res>
    extends _$ContractItemCopyWithImpl<$Res, _$ContractItemImpl>
    implements _$$ContractItemImplCopyWith<$Res> {
  __$$ContractItemImplCopyWithImpl(
      _$ContractItemImpl _value, $Res Function(_$ContractItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContractItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$ContractItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContractItemImpl implements _ContractItem {
  const _$ContractItemImpl({required this.id, required this.name});

  factory _$ContractItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContractItemImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'ContractItem(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContractItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of ContractItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContractItemImplCopyWith<_$ContractItemImpl> get copyWith =>
      __$$ContractItemImplCopyWithImpl<_$ContractItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContractItemImplToJson(
      this,
    );
  }
}

abstract class _ContractItem implements ContractItem {
  const factory _ContractItem(
      {required final int id, required final String name}) = _$ContractItemImpl;

  factory _ContractItem.fromJson(Map<String, dynamic> json) =
      _$ContractItemImpl.fromJson;

  @override
  int get id;
  @override
  String get name;

  /// Create a copy of ContractItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContractItemImplCopyWith<_$ContractItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
