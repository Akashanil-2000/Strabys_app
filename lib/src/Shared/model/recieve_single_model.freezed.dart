// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recieve_single_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RecieveSingleModel _$RecieveSingleModelFromJson(Map<String, dynamic> json) {
  return _RecieveSingleModel.fromJson(json);
}

/// @nodoc
mixin _$RecieveSingleModel {
  String? get jsonrpc => throw _privateConstructorUsedError; // Id? id,
  Result? get result => throw _privateConstructorUsedError;

  /// Serializes this RecieveSingleModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RecieveSingleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecieveSingleModelCopyWith<RecieveSingleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecieveSingleModelCopyWith<$Res> {
  factory $RecieveSingleModelCopyWith(
          RecieveSingleModel value, $Res Function(RecieveSingleModel) then) =
      _$RecieveSingleModelCopyWithImpl<$Res, RecieveSingleModel>;
  @useResult
  $Res call({String? jsonrpc, Result? result});

  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$RecieveSingleModelCopyWithImpl<$Res, $Val extends RecieveSingleModel>
    implements $RecieveSingleModelCopyWith<$Res> {
  _$RecieveSingleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecieveSingleModel
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

  /// Create a copy of RecieveSingleModel
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
abstract class _$$RecieveSingleModelImplCopyWith<$Res>
    implements $RecieveSingleModelCopyWith<$Res> {
  factory _$$RecieveSingleModelImplCopyWith(_$RecieveSingleModelImpl value,
          $Res Function(_$RecieveSingleModelImpl) then) =
      __$$RecieveSingleModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? jsonrpc, Result? result});

  @override
  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$RecieveSingleModelImplCopyWithImpl<$Res>
    extends _$RecieveSingleModelCopyWithImpl<$Res, _$RecieveSingleModelImpl>
    implements _$$RecieveSingleModelImplCopyWith<$Res> {
  __$$RecieveSingleModelImplCopyWithImpl(_$RecieveSingleModelImpl _value,
      $Res Function(_$RecieveSingleModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecieveSingleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jsonrpc = freezed,
    Object? result = freezed,
  }) {
    return _then(_$RecieveSingleModelImpl(
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
class _$RecieveSingleModelImpl implements _RecieveSingleModel {
  const _$RecieveSingleModelImpl({this.jsonrpc, this.result});

  factory _$RecieveSingleModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecieveSingleModelImplFromJson(json);

  @override
  final String? jsonrpc;
// Id? id,
  @override
  final Result? result;

  @override
  String toString() {
    return 'RecieveSingleModel(jsonrpc: $jsonrpc, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecieveSingleModelImpl &&
            (identical(other.jsonrpc, jsonrpc) || other.jsonrpc == jsonrpc) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, jsonrpc, result);

  /// Create a copy of RecieveSingleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecieveSingleModelImplCopyWith<_$RecieveSingleModelImpl> get copyWith =>
      __$$RecieveSingleModelImplCopyWithImpl<_$RecieveSingleModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecieveSingleModelImplToJson(
      this,
    );
  }
}

abstract class _RecieveSingleModel implements RecieveSingleModel {
  const factory _RecieveSingleModel(
      {final String? jsonrpc, final Result? result}) = _$RecieveSingleModelImpl;

  factory _RecieveSingleModel.fromJson(Map<String, dynamic> json) =
      _$RecieveSingleModelImpl.fromJson;

  @override
  String? get jsonrpc; // Id? id,
  @override
  Result? get result;

  /// Create a copy of RecieveSingleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecieveSingleModelImplCopyWith<_$RecieveSingleModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  int? get status => throw _privateConstructorUsedError;
  List<PackingData>? get packing_data => throw _privateConstructorUsedError;

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
  $Res call({int? status, List<PackingData>? packing_data});
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
              as List<PackingData>?,
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
  $Res call({int? status, List<PackingData>? packing_data});
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
              as List<PackingData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultImpl implements _Result {
  const _$ResultImpl({this.status, final List<PackingData>? packing_data})
      : _packing_data = packing_data;

  factory _$ResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultImplFromJson(json);

  @override
  final int? status;
  final List<PackingData>? _packing_data;
  @override
  List<PackingData>? get packing_data {
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
      final List<PackingData>? packing_data}) = _$ResultImpl;

  factory _Result.fromJson(Map<String, dynamic> json) = _$ResultImpl.fromJson;

  @override
  int? get status;
  @override
  List<PackingData>? get packing_data;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PackingData _$PackingDataFromJson(Map<String, dynamic> json) {
  return _PackingData.fromJson(json);
}

/// @nodoc
mixin _$PackingData {
  int? get picking_id => throw _privateConstructorUsedError;
  String? get picking_name => throw _privateConstructorUsedError;
  String? get grn_name => throw _privateConstructorUsedError;
  int? get grn_id => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  bool? get truck_show => throw _privateConstructorUsedError;

  /// Serializes this PackingData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PackingData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PackingDataCopyWith<PackingData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackingDataCopyWith<$Res> {
  factory $PackingDataCopyWith(
          PackingData value, $Res Function(PackingData) then) =
      _$PackingDataCopyWithImpl<$Res, PackingData>;
  @useResult
  $Res call(
      {int? picking_id,
      String? picking_name,
      String? grn_name,
      int? grn_id,
      String? status,
      bool? truck_show});
}

/// @nodoc
class _$PackingDataCopyWithImpl<$Res, $Val extends PackingData>
    implements $PackingDataCopyWith<$Res> {
  _$PackingDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PackingData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? picking_id = freezed,
    Object? picking_name = freezed,
    Object? grn_name = freezed,
    Object? grn_id = freezed,
    Object? status = freezed,
    Object? truck_show = freezed,
  }) {
    return _then(_value.copyWith(
      picking_id: freezed == picking_id
          ? _value.picking_id
          : picking_id // ignore: cast_nullable_to_non_nullable
              as int?,
      picking_name: freezed == picking_name
          ? _value.picking_name
          : picking_name // ignore: cast_nullable_to_non_nullable
              as String?,
      grn_name: freezed == grn_name
          ? _value.grn_name
          : grn_name // ignore: cast_nullable_to_non_nullable
              as String?,
      grn_id: freezed == grn_id
          ? _value.grn_id
          : grn_id // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      truck_show: freezed == truck_show
          ? _value.truck_show
          : truck_show // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PackingDataImplCopyWith<$Res>
    implements $PackingDataCopyWith<$Res> {
  factory _$$PackingDataImplCopyWith(
          _$PackingDataImpl value, $Res Function(_$PackingDataImpl) then) =
      __$$PackingDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? picking_id,
      String? picking_name,
      String? grn_name,
      int? grn_id,
      String? status,
      bool? truck_show});
}

/// @nodoc
class __$$PackingDataImplCopyWithImpl<$Res>
    extends _$PackingDataCopyWithImpl<$Res, _$PackingDataImpl>
    implements _$$PackingDataImplCopyWith<$Res> {
  __$$PackingDataImplCopyWithImpl(
      _$PackingDataImpl _value, $Res Function(_$PackingDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PackingData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? picking_id = freezed,
    Object? picking_name = freezed,
    Object? grn_name = freezed,
    Object? grn_id = freezed,
    Object? status = freezed,
    Object? truck_show = freezed,
  }) {
    return _then(_$PackingDataImpl(
      picking_id: freezed == picking_id
          ? _value.picking_id
          : picking_id // ignore: cast_nullable_to_non_nullable
              as int?,
      picking_name: freezed == picking_name
          ? _value.picking_name
          : picking_name // ignore: cast_nullable_to_non_nullable
              as String?,
      grn_name: freezed == grn_name
          ? _value.grn_name
          : grn_name // ignore: cast_nullable_to_non_nullable
              as String?,
      grn_id: freezed == grn_id
          ? _value.grn_id
          : grn_id // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      truck_show: freezed == truck_show
          ? _value.truck_show
          : truck_show // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PackingDataImpl implements _PackingData {
  const _$PackingDataImpl(
      {this.picking_id,
      this.picking_name,
      this.grn_name,
      this.grn_id,
      this.status,
      this.truck_show});

  factory _$PackingDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PackingDataImplFromJson(json);

  @override
  final int? picking_id;
  @override
  final String? picking_name;
  @override
  final String? grn_name;
  @override
  final int? grn_id;
  @override
  final String? status;
  @override
  final bool? truck_show;

  @override
  String toString() {
    return 'PackingData(picking_id: $picking_id, picking_name: $picking_name, grn_name: $grn_name, grn_id: $grn_id, status: $status, truck_show: $truck_show)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackingDataImpl &&
            (identical(other.picking_id, picking_id) ||
                other.picking_id == picking_id) &&
            (identical(other.picking_name, picking_name) ||
                other.picking_name == picking_name) &&
            (identical(other.grn_name, grn_name) ||
                other.grn_name == grn_name) &&
            (identical(other.grn_id, grn_id) || other.grn_id == grn_id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.truck_show, truck_show) ||
                other.truck_show == truck_show));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, picking_id, picking_name,
      grn_name, grn_id, status, truck_show);

  /// Create a copy of PackingData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PackingDataImplCopyWith<_$PackingDataImpl> get copyWith =>
      __$$PackingDataImplCopyWithImpl<_$PackingDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PackingDataImplToJson(
      this,
    );
  }
}

abstract class _PackingData implements PackingData {
  const factory _PackingData(
      {final int? picking_id,
      final String? picking_name,
      final String? grn_name,
      final int? grn_id,
      final String? status,
      final bool? truck_show}) = _$PackingDataImpl;

  factory _PackingData.fromJson(Map<String, dynamic> json) =
      _$PackingDataImpl.fromJson;

  @override
  int? get picking_id;
  @override
  String? get picking_name;
  @override
  String? get grn_name;
  @override
  int? get grn_id;
  @override
  String? get status;
  @override
  bool? get truck_show;

  /// Create a copy of PackingData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PackingDataImplCopyWith<_$PackingDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
