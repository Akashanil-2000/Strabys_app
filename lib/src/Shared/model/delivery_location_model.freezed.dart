// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_location_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeliveryLocationModel _$DeliveryLocationModelFromJson(
    Map<String, dynamic> json) {
  return _DeliveryLocationModel.fromJson(json);
}

/// @nodoc
mixin _$DeliveryLocationModel {
  String? get jsonrpc => throw _privateConstructorUsedError; // Id? id,
  Result? get result => throw _privateConstructorUsedError;

  /// Serializes this DeliveryLocationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeliveryLocationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeliveryLocationModelCopyWith<DeliveryLocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryLocationModelCopyWith<$Res> {
  factory $DeliveryLocationModelCopyWith(DeliveryLocationModel value,
          $Res Function(DeliveryLocationModel) then) =
      _$DeliveryLocationModelCopyWithImpl<$Res, DeliveryLocationModel>;
  @useResult
  $Res call({String? jsonrpc, Result? result});

  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$DeliveryLocationModelCopyWithImpl<$Res,
        $Val extends DeliveryLocationModel>
    implements $DeliveryLocationModelCopyWith<$Res> {
  _$DeliveryLocationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeliveryLocationModel
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

  /// Create a copy of DeliveryLocationModel
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
abstract class _$$DeliveryLocationModelImplCopyWith<$Res>
    implements $DeliveryLocationModelCopyWith<$Res> {
  factory _$$DeliveryLocationModelImplCopyWith(
          _$DeliveryLocationModelImpl value,
          $Res Function(_$DeliveryLocationModelImpl) then) =
      __$$DeliveryLocationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? jsonrpc, Result? result});

  @override
  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$DeliveryLocationModelImplCopyWithImpl<$Res>
    extends _$DeliveryLocationModelCopyWithImpl<$Res,
        _$DeliveryLocationModelImpl>
    implements _$$DeliveryLocationModelImplCopyWith<$Res> {
  __$$DeliveryLocationModelImplCopyWithImpl(_$DeliveryLocationModelImpl _value,
      $Res Function(_$DeliveryLocationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeliveryLocationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jsonrpc = freezed,
    Object? result = freezed,
  }) {
    return _then(_$DeliveryLocationModelImpl(
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
class _$DeliveryLocationModelImpl implements _DeliveryLocationModel {
  const _$DeliveryLocationModelImpl({this.jsonrpc, this.result});

  factory _$DeliveryLocationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeliveryLocationModelImplFromJson(json);

  @override
  final String? jsonrpc;
// Id? id,
  @override
  final Result? result;

  @override
  String toString() {
    return 'DeliveryLocationModel(jsonrpc: $jsonrpc, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryLocationModelImpl &&
            (identical(other.jsonrpc, jsonrpc) || other.jsonrpc == jsonrpc) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, jsonrpc, result);

  /// Create a copy of DeliveryLocationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryLocationModelImplCopyWith<_$DeliveryLocationModelImpl>
      get copyWith => __$$DeliveryLocationModelImplCopyWithImpl<
          _$DeliveryLocationModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeliveryLocationModelImplToJson(
      this,
    );
  }
}

abstract class _DeliveryLocationModel implements DeliveryLocationModel {
  const factory _DeliveryLocationModel(
      {final String? jsonrpc,
      final Result? result}) = _$DeliveryLocationModelImpl;

  factory _DeliveryLocationModel.fromJson(Map<String, dynamic> json) =
      _$DeliveryLocationModelImpl.fromJson;

  @override
  String? get jsonrpc; // Id? id,
  @override
  Result? get result;

  /// Create a copy of DeliveryLocationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeliveryLocationModelImplCopyWith<_$DeliveryLocationModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  int? get status => throw _privateConstructorUsedError;
  List<LocationDetailsList>? get location_details =>
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
  $Res call({int? status, List<LocationDetailsList>? location_details});
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
    Object? location_details = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      location_details: freezed == location_details
          ? _value.location_details
          : location_details // ignore: cast_nullable_to_non_nullable
              as List<LocationDetailsList>?,
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
  $Res call({int? status, List<LocationDetailsList>? location_details});
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
    Object? location_details = freezed,
  }) {
    return _then(_$ResultImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      location_details: freezed == location_details
          ? _value._location_details
          : location_details // ignore: cast_nullable_to_non_nullable
              as List<LocationDetailsList>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultImpl implements _Result {
  const _$ResultImpl(
      {this.status, final List<LocationDetailsList>? location_details})
      : _location_details = location_details;

  factory _$ResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultImplFromJson(json);

  @override
  final int? status;
  final List<LocationDetailsList>? _location_details;
  @override
  List<LocationDetailsList>? get location_details {
    final value = _location_details;
    if (value == null) return null;
    if (_location_details is EqualUnmodifiableListView)
      return _location_details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Result(status: $status, location_details: $location_details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._location_details, _location_details));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_location_details));

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
      final List<LocationDetailsList>? location_details}) = _$ResultImpl;

  factory _Result.fromJson(Map<String, dynamic> json) = _$ResultImpl.fromJson;

  @override
  int? get status;
  @override
  List<LocationDetailsList>? get location_details;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LocationDetailsList _$LocationDetailsListFromJson(Map<String, dynamic> json) {
  return _LocationDetailsList.fromJson(json);
}

/// @nodoc
mixin _$LocationDetailsList {
  int? get location_id => throw _privateConstructorUsedError;
  String? get location_name => throw _privateConstructorUsedError;
  String? get Location_barcode => throw _privateConstructorUsedError;
  double? get total_volume => throw _privateConstructorUsedError;
  double? get total_weight => throw _privateConstructorUsedError;
  int? get total_qty => throw _privateConstructorUsedError;
  int? get completed_qty => throw _privateConstructorUsedError;

  /// Serializes this LocationDetailsList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocationDetailsList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationDetailsListCopyWith<LocationDetailsList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationDetailsListCopyWith<$Res> {
  factory $LocationDetailsListCopyWith(
          LocationDetailsList value, $Res Function(LocationDetailsList) then) =
      _$LocationDetailsListCopyWithImpl<$Res, LocationDetailsList>;
  @useResult
  $Res call(
      {int? location_id,
      String? location_name,
      String? Location_barcode,
      double? total_volume,
      double? total_weight,
      int? total_qty,
      int? completed_qty});
}

/// @nodoc
class _$LocationDetailsListCopyWithImpl<$Res, $Val extends LocationDetailsList>
    implements $LocationDetailsListCopyWith<$Res> {
  _$LocationDetailsListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationDetailsList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location_id = freezed,
    Object? location_name = freezed,
    Object? Location_barcode = freezed,
    Object? total_volume = freezed,
    Object? total_weight = freezed,
    Object? total_qty = freezed,
    Object? completed_qty = freezed,
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
      Location_barcode: freezed == Location_barcode
          ? _value.Location_barcode
          : Location_barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      total_volume: freezed == total_volume
          ? _value.total_volume
          : total_volume // ignore: cast_nullable_to_non_nullable
              as double?,
      total_weight: freezed == total_weight
          ? _value.total_weight
          : total_weight // ignore: cast_nullable_to_non_nullable
              as double?,
      total_qty: freezed == total_qty
          ? _value.total_qty
          : total_qty // ignore: cast_nullable_to_non_nullable
              as int?,
      completed_qty: freezed == completed_qty
          ? _value.completed_qty
          : completed_qty // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationDetailsListImplCopyWith<$Res>
    implements $LocationDetailsListCopyWith<$Res> {
  factory _$$LocationDetailsListImplCopyWith(_$LocationDetailsListImpl value,
          $Res Function(_$LocationDetailsListImpl) then) =
      __$$LocationDetailsListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? location_id,
      String? location_name,
      String? Location_barcode,
      double? total_volume,
      double? total_weight,
      int? total_qty,
      int? completed_qty});
}

/// @nodoc
class __$$LocationDetailsListImplCopyWithImpl<$Res>
    extends _$LocationDetailsListCopyWithImpl<$Res, _$LocationDetailsListImpl>
    implements _$$LocationDetailsListImplCopyWith<$Res> {
  __$$LocationDetailsListImplCopyWithImpl(_$LocationDetailsListImpl _value,
      $Res Function(_$LocationDetailsListImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocationDetailsList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location_id = freezed,
    Object? location_name = freezed,
    Object? Location_barcode = freezed,
    Object? total_volume = freezed,
    Object? total_weight = freezed,
    Object? total_qty = freezed,
    Object? completed_qty = freezed,
  }) {
    return _then(_$LocationDetailsListImpl(
      location_id: freezed == location_id
          ? _value.location_id
          : location_id // ignore: cast_nullable_to_non_nullable
              as int?,
      location_name: freezed == location_name
          ? _value.location_name
          : location_name // ignore: cast_nullable_to_non_nullable
              as String?,
      Location_barcode: freezed == Location_barcode
          ? _value.Location_barcode
          : Location_barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      total_volume: freezed == total_volume
          ? _value.total_volume
          : total_volume // ignore: cast_nullable_to_non_nullable
              as double?,
      total_weight: freezed == total_weight
          ? _value.total_weight
          : total_weight // ignore: cast_nullable_to_non_nullable
              as double?,
      total_qty: freezed == total_qty
          ? _value.total_qty
          : total_qty // ignore: cast_nullable_to_non_nullable
              as int?,
      completed_qty: freezed == completed_qty
          ? _value.completed_qty
          : completed_qty // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationDetailsListImpl implements _LocationDetailsList {
  const _$LocationDetailsListImpl(
      {this.location_id,
      this.location_name,
      this.Location_barcode,
      this.total_volume,
      this.total_weight,
      this.total_qty,
      this.completed_qty});

  factory _$LocationDetailsListImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationDetailsListImplFromJson(json);

  @override
  final int? location_id;
  @override
  final String? location_name;
  @override
  final String? Location_barcode;
  @override
  final double? total_volume;
  @override
  final double? total_weight;
  @override
  final int? total_qty;
  @override
  final int? completed_qty;

  @override
  String toString() {
    return 'LocationDetailsList(location_id: $location_id, location_name: $location_name, Location_barcode: $Location_barcode, total_volume: $total_volume, total_weight: $total_weight, total_qty: $total_qty, completed_qty: $completed_qty)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationDetailsListImpl &&
            (identical(other.location_id, location_id) ||
                other.location_id == location_id) &&
            (identical(other.location_name, location_name) ||
                other.location_name == location_name) &&
            (identical(other.Location_barcode, Location_barcode) ||
                other.Location_barcode == Location_barcode) &&
            (identical(other.total_volume, total_volume) ||
                other.total_volume == total_volume) &&
            (identical(other.total_weight, total_weight) ||
                other.total_weight == total_weight) &&
            (identical(other.total_qty, total_qty) ||
                other.total_qty == total_qty) &&
            (identical(other.completed_qty, completed_qty) ||
                other.completed_qty == completed_qty));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, location_id, location_name,
      Location_barcode, total_volume, total_weight, total_qty, completed_qty);

  /// Create a copy of LocationDetailsList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationDetailsListImplCopyWith<_$LocationDetailsListImpl> get copyWith =>
      __$$LocationDetailsListImplCopyWithImpl<_$LocationDetailsListImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationDetailsListImplToJson(
      this,
    );
  }
}

abstract class _LocationDetailsList implements LocationDetailsList {
  const factory _LocationDetailsList(
      {final int? location_id,
      final String? location_name,
      final String? Location_barcode,
      final double? total_volume,
      final double? total_weight,
      final int? total_qty,
      final int? completed_qty}) = _$LocationDetailsListImpl;

  factory _LocationDetailsList.fromJson(Map<String, dynamic> json) =
      _$LocationDetailsListImpl.fromJson;

  @override
  int? get location_id;
  @override
  String? get location_name;
  @override
  String? get Location_barcode;
  @override
  double? get total_volume;
  @override
  double? get total_weight;
  @override
  int? get total_qty;
  @override
  int? get completed_qty;

  /// Create a copy of LocationDetailsList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationDetailsListImplCopyWith<_$LocationDetailsListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
