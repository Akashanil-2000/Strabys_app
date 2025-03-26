// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'truck_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TruckListModel _$TruckListModelFromJson(Map<String, dynamic> json) {
  return _TruckListModel.fromJson(json);
}

/// @nodoc
mixin _$TruckListModel {
  String? get jsonrpc => throw _privateConstructorUsedError;
  Result? get result => throw _privateConstructorUsedError;

  /// Serializes this TruckListModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TruckListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TruckListModelCopyWith<TruckListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TruckListModelCopyWith<$Res> {
  factory $TruckListModelCopyWith(
          TruckListModel value, $Res Function(TruckListModel) then) =
      _$TruckListModelCopyWithImpl<$Res, TruckListModel>;
  @useResult
  $Res call({String? jsonrpc, Result? result});

  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$TruckListModelCopyWithImpl<$Res, $Val extends TruckListModel>
    implements $TruckListModelCopyWith<$Res> {
  _$TruckListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TruckListModel
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

  /// Create a copy of TruckListModel
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
abstract class _$$TruckListModelImplCopyWith<$Res>
    implements $TruckListModelCopyWith<$Res> {
  factory _$$TruckListModelImplCopyWith(_$TruckListModelImpl value,
          $Res Function(_$TruckListModelImpl) then) =
      __$$TruckListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? jsonrpc, Result? result});

  @override
  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$TruckListModelImplCopyWithImpl<$Res>
    extends _$TruckListModelCopyWithImpl<$Res, _$TruckListModelImpl>
    implements _$$TruckListModelImplCopyWith<$Res> {
  __$$TruckListModelImplCopyWithImpl(
      _$TruckListModelImpl _value, $Res Function(_$TruckListModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TruckListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jsonrpc = freezed,
    Object? result = freezed,
  }) {
    return _then(_$TruckListModelImpl(
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
class _$TruckListModelImpl implements _TruckListModel {
  const _$TruckListModelImpl({this.jsonrpc, this.result});

  factory _$TruckListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TruckListModelImplFromJson(json);

  @override
  final String? jsonrpc;
  @override
  final Result? result;

  @override
  String toString() {
    return 'TruckListModel(jsonrpc: $jsonrpc, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TruckListModelImpl &&
            (identical(other.jsonrpc, jsonrpc) || other.jsonrpc == jsonrpc) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, jsonrpc, result);

  /// Create a copy of TruckListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TruckListModelImplCopyWith<_$TruckListModelImpl> get copyWith =>
      __$$TruckListModelImplCopyWithImpl<_$TruckListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TruckListModelImplToJson(
      this,
    );
  }
}

abstract class _TruckListModel implements TruckListModel {
  const factory _TruckListModel({final String? jsonrpc, final Result? result}) =
      _$TruckListModelImpl;

  factory _TruckListModel.fromJson(Map<String, dynamic> json) =
      _$TruckListModelImpl.fromJson;

  @override
  String? get jsonrpc;
  @override
  Result? get result;

  /// Create a copy of TruckListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TruckListModelImplCopyWith<_$TruckListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  int? get status => throw _privateConstructorUsedError;
  String? get response => throw _privateConstructorUsedError;
  List<TruckTypeList>? get truck_type_list =>
      throw _privateConstructorUsedError;
  List<ContainerList>? get container_list => throw _privateConstructorUsedError;
  List<TruckCapacityList>? get truck_capacity_list =>
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
      List<TruckTypeList>? truck_type_list,
      List<ContainerList>? container_list,
      List<TruckCapacityList>? truck_capacity_list});
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
    Object? truck_type_list = freezed,
    Object? container_list = freezed,
    Object? truck_capacity_list = freezed,
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
      truck_type_list: freezed == truck_type_list
          ? _value.truck_type_list
          : truck_type_list // ignore: cast_nullable_to_non_nullable
              as List<TruckTypeList>?,
      container_list: freezed == container_list
          ? _value.container_list
          : container_list // ignore: cast_nullable_to_non_nullable
              as List<ContainerList>?,
      truck_capacity_list: freezed == truck_capacity_list
          ? _value.truck_capacity_list
          : truck_capacity_list // ignore: cast_nullable_to_non_nullable
              as List<TruckCapacityList>?,
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
      List<TruckTypeList>? truck_type_list,
      List<ContainerList>? container_list,
      List<TruckCapacityList>? truck_capacity_list});
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
    Object? truck_type_list = freezed,
    Object? container_list = freezed,
    Object? truck_capacity_list = freezed,
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
      truck_type_list: freezed == truck_type_list
          ? _value._truck_type_list
          : truck_type_list // ignore: cast_nullable_to_non_nullable
              as List<TruckTypeList>?,
      container_list: freezed == container_list
          ? _value._container_list
          : container_list // ignore: cast_nullable_to_non_nullable
              as List<ContainerList>?,
      truck_capacity_list: freezed == truck_capacity_list
          ? _value._truck_capacity_list
          : truck_capacity_list // ignore: cast_nullable_to_non_nullable
              as List<TruckCapacityList>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultImpl implements _Result {
  const _$ResultImpl(
      {this.status,
      this.response,
      final List<TruckTypeList>? truck_type_list,
      final List<ContainerList>? container_list,
      final List<TruckCapacityList>? truck_capacity_list})
      : _truck_type_list = truck_type_list,
        _container_list = container_list,
        _truck_capacity_list = truck_capacity_list;

  factory _$ResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultImplFromJson(json);

  @override
  final int? status;
  @override
  final String? response;
  final List<TruckTypeList>? _truck_type_list;
  @override
  List<TruckTypeList>? get truck_type_list {
    final value = _truck_type_list;
    if (value == null) return null;
    if (_truck_type_list is EqualUnmodifiableListView) return _truck_type_list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ContainerList>? _container_list;
  @override
  List<ContainerList>? get container_list {
    final value = _container_list;
    if (value == null) return null;
    if (_container_list is EqualUnmodifiableListView) return _container_list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<TruckCapacityList>? _truck_capacity_list;
  @override
  List<TruckCapacityList>? get truck_capacity_list {
    final value = _truck_capacity_list;
    if (value == null) return null;
    if (_truck_capacity_list is EqualUnmodifiableListView)
      return _truck_capacity_list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Result(status: $status, response: $response, truck_type_list: $truck_type_list, container_list: $container_list, truck_capacity_list: $truck_capacity_list)';
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
                .equals(other._truck_type_list, _truck_type_list) &&
            const DeepCollectionEquality()
                .equals(other._container_list, _container_list) &&
            const DeepCollectionEquality()
                .equals(other._truck_capacity_list, _truck_capacity_list));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      response,
      const DeepCollectionEquality().hash(_truck_type_list),
      const DeepCollectionEquality().hash(_container_list),
      const DeepCollectionEquality().hash(_truck_capacity_list));

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
      final List<TruckTypeList>? truck_type_list,
      final List<ContainerList>? container_list,
      final List<TruckCapacityList>? truck_capacity_list}) = _$ResultImpl;

  factory _Result.fromJson(Map<String, dynamic> json) = _$ResultImpl.fromJson;

  @override
  int? get status;
  @override
  String? get response;
  @override
  List<TruckTypeList>? get truck_type_list;
  @override
  List<ContainerList>? get container_list;
  @override
  List<TruckCapacityList>? get truck_capacity_list;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TruckTypeList _$TruckTypeListFromJson(Map<String, dynamic> json) {
  return _TruckTypeList.fromJson(json);
}

/// @nodoc
mixin _$TruckTypeList {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this TruckTypeList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TruckTypeList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TruckTypeListCopyWith<TruckTypeList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TruckTypeListCopyWith<$Res> {
  factory $TruckTypeListCopyWith(
          TruckTypeList value, $Res Function(TruckTypeList) then) =
      _$TruckTypeListCopyWithImpl<$Res, TruckTypeList>;
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class _$TruckTypeListCopyWithImpl<$Res, $Val extends TruckTypeList>
    implements $TruckTypeListCopyWith<$Res> {
  _$TruckTypeListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TruckTypeList
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
abstract class _$$TruckTypeListImplCopyWith<$Res>
    implements $TruckTypeListCopyWith<$Res> {
  factory _$$TruckTypeListImplCopyWith(
          _$TruckTypeListImpl value, $Res Function(_$TruckTypeListImpl) then) =
      __$$TruckTypeListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class __$$TruckTypeListImplCopyWithImpl<$Res>
    extends _$TruckTypeListCopyWithImpl<$Res, _$TruckTypeListImpl>
    implements _$$TruckTypeListImplCopyWith<$Res> {
  __$$TruckTypeListImplCopyWithImpl(
      _$TruckTypeListImpl _value, $Res Function(_$TruckTypeListImpl) _then)
      : super(_value, _then);

  /// Create a copy of TruckTypeList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$TruckTypeListImpl(
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
class _$TruckTypeListImpl implements _TruckTypeList {
  const _$TruckTypeListImpl({this.id, this.name});

  factory _$TruckTypeListImpl.fromJson(Map<String, dynamic> json) =>
      _$$TruckTypeListImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'TruckTypeList(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TruckTypeListImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of TruckTypeList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TruckTypeListImplCopyWith<_$TruckTypeListImpl> get copyWith =>
      __$$TruckTypeListImplCopyWithImpl<_$TruckTypeListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TruckTypeListImplToJson(
      this,
    );
  }
}

abstract class _TruckTypeList implements TruckTypeList {
  const factory _TruckTypeList({final int? id, final String? name}) =
      _$TruckTypeListImpl;

  factory _TruckTypeList.fromJson(Map<String, dynamic> json) =
      _$TruckTypeListImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;

  /// Create a copy of TruckTypeList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TruckTypeListImplCopyWith<_$TruckTypeListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ContainerList _$ContainerListFromJson(Map<String, dynamic> json) {
  return _ContainerList.fromJson(json);
}

/// @nodoc
mixin _$ContainerList {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this ContainerList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContainerList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContainerListCopyWith<ContainerList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContainerListCopyWith<$Res> {
  factory $ContainerListCopyWith(
          ContainerList value, $Res Function(ContainerList) then) =
      _$ContainerListCopyWithImpl<$Res, ContainerList>;
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class _$ContainerListCopyWithImpl<$Res, $Val extends ContainerList>
    implements $ContainerListCopyWith<$Res> {
  _$ContainerListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContainerList
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
abstract class _$$ContainerListImplCopyWith<$Res>
    implements $ContainerListCopyWith<$Res> {
  factory _$$ContainerListImplCopyWith(
          _$ContainerListImpl value, $Res Function(_$ContainerListImpl) then) =
      __$$ContainerListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class __$$ContainerListImplCopyWithImpl<$Res>
    extends _$ContainerListCopyWithImpl<$Res, _$ContainerListImpl>
    implements _$$ContainerListImplCopyWith<$Res> {
  __$$ContainerListImplCopyWithImpl(
      _$ContainerListImpl _value, $Res Function(_$ContainerListImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContainerList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$ContainerListImpl(
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
class _$ContainerListImpl implements _ContainerList {
  const _$ContainerListImpl({this.id, this.name});

  factory _$ContainerListImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContainerListImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'ContainerList(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContainerListImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of ContainerList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContainerListImplCopyWith<_$ContainerListImpl> get copyWith =>
      __$$ContainerListImplCopyWithImpl<_$ContainerListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContainerListImplToJson(
      this,
    );
  }
}

abstract class _ContainerList implements ContainerList {
  const factory _ContainerList({final int? id, final String? name}) =
      _$ContainerListImpl;

  factory _ContainerList.fromJson(Map<String, dynamic> json) =
      _$ContainerListImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;

  /// Create a copy of ContainerList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContainerListImplCopyWith<_$ContainerListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TruckCapacityList _$TruckCapacityListFromJson(Map<String, dynamic> json) {
  return _TruckCapacityList.fromJson(json);
}

/// @nodoc
mixin _$TruckCapacityList {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this TruckCapacityList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TruckCapacityList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TruckCapacityListCopyWith<TruckCapacityList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TruckCapacityListCopyWith<$Res> {
  factory $TruckCapacityListCopyWith(
          TruckCapacityList value, $Res Function(TruckCapacityList) then) =
      _$TruckCapacityListCopyWithImpl<$Res, TruckCapacityList>;
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class _$TruckCapacityListCopyWithImpl<$Res, $Val extends TruckCapacityList>
    implements $TruckCapacityListCopyWith<$Res> {
  _$TruckCapacityListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TruckCapacityList
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
abstract class _$$TruckCapacityListImplCopyWith<$Res>
    implements $TruckCapacityListCopyWith<$Res> {
  factory _$$TruckCapacityListImplCopyWith(_$TruckCapacityListImpl value,
          $Res Function(_$TruckCapacityListImpl) then) =
      __$$TruckCapacityListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class __$$TruckCapacityListImplCopyWithImpl<$Res>
    extends _$TruckCapacityListCopyWithImpl<$Res, _$TruckCapacityListImpl>
    implements _$$TruckCapacityListImplCopyWith<$Res> {
  __$$TruckCapacityListImplCopyWithImpl(_$TruckCapacityListImpl _value,
      $Res Function(_$TruckCapacityListImpl) _then)
      : super(_value, _then);

  /// Create a copy of TruckCapacityList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$TruckCapacityListImpl(
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
class _$TruckCapacityListImpl implements _TruckCapacityList {
  const _$TruckCapacityListImpl({this.id, this.name});

  factory _$TruckCapacityListImpl.fromJson(Map<String, dynamic> json) =>
      _$$TruckCapacityListImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'TruckCapacityList(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TruckCapacityListImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of TruckCapacityList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TruckCapacityListImplCopyWith<_$TruckCapacityListImpl> get copyWith =>
      __$$TruckCapacityListImplCopyWithImpl<_$TruckCapacityListImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TruckCapacityListImplToJson(
      this,
    );
  }
}

abstract class _TruckCapacityList implements TruckCapacityList {
  const factory _TruckCapacityList({final int? id, final String? name}) =
      _$TruckCapacityListImpl;

  factory _TruckCapacityList.fromJson(Map<String, dynamic> json) =
      _$TruckCapacityListImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;

  /// Create a copy of TruckCapacityList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TruckCapacityListImplCopyWith<_$TruckCapacityListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
