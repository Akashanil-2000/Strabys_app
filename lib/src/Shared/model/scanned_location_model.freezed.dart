// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scanned_location_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ScannedLocationModel _$ScannedLocationModelFromJson(Map<String, dynamic> json) {
  return _ScannedLocationModel.fromJson(json);
}

/// @nodoc
mixin _$ScannedLocationModel {
  String? get jsonrpc => throw _privateConstructorUsedError;
  Result? get result => throw _privateConstructorUsedError;

  /// Serializes this ScannedLocationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScannedLocationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScannedLocationModelCopyWith<ScannedLocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScannedLocationModelCopyWith<$Res> {
  factory $ScannedLocationModelCopyWith(ScannedLocationModel value,
          $Res Function(ScannedLocationModel) then) =
      _$ScannedLocationModelCopyWithImpl<$Res, ScannedLocationModel>;
  @useResult
  $Res call({String? jsonrpc, Result? result});

  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$ScannedLocationModelCopyWithImpl<$Res,
        $Val extends ScannedLocationModel>
    implements $ScannedLocationModelCopyWith<$Res> {
  _$ScannedLocationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScannedLocationModel
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

  /// Create a copy of ScannedLocationModel
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
abstract class _$$ScannedLocationModelImplCopyWith<$Res>
    implements $ScannedLocationModelCopyWith<$Res> {
  factory _$$ScannedLocationModelImplCopyWith(_$ScannedLocationModelImpl value,
          $Res Function(_$ScannedLocationModelImpl) then) =
      __$$ScannedLocationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? jsonrpc, Result? result});

  @override
  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$ScannedLocationModelImplCopyWithImpl<$Res>
    extends _$ScannedLocationModelCopyWithImpl<$Res, _$ScannedLocationModelImpl>
    implements _$$ScannedLocationModelImplCopyWith<$Res> {
  __$$ScannedLocationModelImplCopyWithImpl(_$ScannedLocationModelImpl _value,
      $Res Function(_$ScannedLocationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScannedLocationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jsonrpc = freezed,
    Object? result = freezed,
  }) {
    return _then(_$ScannedLocationModelImpl(
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
class _$ScannedLocationModelImpl implements _ScannedLocationModel {
  const _$ScannedLocationModelImpl({this.jsonrpc, this.result});

  factory _$ScannedLocationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScannedLocationModelImplFromJson(json);

  @override
  final String? jsonrpc;
  @override
  final Result? result;

  @override
  String toString() {
    return 'ScannedLocationModel(jsonrpc: $jsonrpc, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScannedLocationModelImpl &&
            (identical(other.jsonrpc, jsonrpc) || other.jsonrpc == jsonrpc) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, jsonrpc, result);

  /// Create a copy of ScannedLocationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScannedLocationModelImplCopyWith<_$ScannedLocationModelImpl>
      get copyWith =>
          __$$ScannedLocationModelImplCopyWithImpl<_$ScannedLocationModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScannedLocationModelImplToJson(
      this,
    );
  }
}

abstract class _ScannedLocationModel implements ScannedLocationModel {
  const factory _ScannedLocationModel(
      {final String? jsonrpc,
      final Result? result}) = _$ScannedLocationModelImpl;

  factory _ScannedLocationModel.fromJson(Map<String, dynamic> json) =
      _$ScannedLocationModelImpl.fromJson;

  @override
  String? get jsonrpc;
  @override
  Result? get result;

  /// Create a copy of ScannedLocationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScannedLocationModelImplCopyWith<_$ScannedLocationModelImpl>
      get copyWith => throw _privateConstructorUsedError;
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
  int? get location_id => throw _privateConstructorUsedError;
  String? get location_name => throw _privateConstructorUsedError;
  double? get qty => throw _privateConstructorUsedError;

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
  $Res call({int? location_id, String? location_name, double? qty});
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
    Object? location_id = freezed,
    Object? location_name = freezed,
    Object? qty = freezed,
  }) {
    return _then(_value.copyWith(
      location_id: freezed == location_id
          ? _value.location_id
          : location_id // ignore: cast_nullable_to_non_nullable
              as int?,
      location_name: freezed == location_name
          ? _value.location_name
          : location_name // ignore: cast_nullable_to_non_nullable
              as String?,
      qty: freezed == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as double?,
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
  $Res call({int? location_id, String? location_name, double? qty});
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
    Object? location_id = freezed,
    Object? location_name = freezed,
    Object? qty = freezed,
  }) {
    return _then(_$PackingDataImpl(
      location_id: freezed == location_id
          ? _value.location_id
          : location_id // ignore: cast_nullable_to_non_nullable
              as int?,
      location_name: freezed == location_name
          ? _value.location_name
          : location_name // ignore: cast_nullable_to_non_nullable
              as String?,
      qty: freezed == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PackingDataImpl implements _PackingData {
  const _$PackingDataImpl({this.location_id, this.location_name, this.qty});

  factory _$PackingDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PackingDataImplFromJson(json);

  @override
  final int? location_id;
  @override
  final String? location_name;
  @override
  final double? qty;

  @override
  String toString() {
    return 'PackingData(location_id: $location_id, location_name: $location_name, qty: $qty)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackingDataImpl &&
            (identical(other.location_id, location_id) ||
                other.location_id == location_id) &&
            (identical(other.location_name, location_name) ||
                other.location_name == location_name) &&
            (identical(other.qty, qty) || other.qty == qty));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, location_id, location_name, qty);

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
      {final int? location_id,
      final String? location_name,
      final double? qty}) = _$PackingDataImpl;

  factory _PackingData.fromJson(Map<String, dynamic> json) =
      _$PackingDataImpl.fromJson;

  @override
  int? get location_id;
  @override
  String? get location_name;
  @override
  double? get qty;

  /// Create a copy of PackingData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PackingDataImplCopyWith<_$PackingDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
