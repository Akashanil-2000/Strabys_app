// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'warehouse_scanned_data_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ScannedDataListModel _$ScannedDataListModelFromJson(Map<String, dynamic> json) {
  return _ScannedDataListModel.fromJson(json);
}

/// @nodoc
mixin _$ScannedDataListModel {
  String? get jsonrpc => throw _privateConstructorUsedError;
  Result? get result => throw _privateConstructorUsedError;

  /// Serializes this ScannedDataListModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScannedDataListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScannedDataListModelCopyWith<ScannedDataListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScannedDataListModelCopyWith<$Res> {
  factory $ScannedDataListModelCopyWith(ScannedDataListModel value,
          $Res Function(ScannedDataListModel) then) =
      _$ScannedDataListModelCopyWithImpl<$Res, ScannedDataListModel>;
  @useResult
  $Res call({String? jsonrpc, Result? result});

  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$ScannedDataListModelCopyWithImpl<$Res,
        $Val extends ScannedDataListModel>
    implements $ScannedDataListModelCopyWith<$Res> {
  _$ScannedDataListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScannedDataListModel
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

  /// Create a copy of ScannedDataListModel
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
abstract class _$$ScannedDataListModelImplCopyWith<$Res>
    implements $ScannedDataListModelCopyWith<$Res> {
  factory _$$ScannedDataListModelImplCopyWith(_$ScannedDataListModelImpl value,
          $Res Function(_$ScannedDataListModelImpl) then) =
      __$$ScannedDataListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? jsonrpc, Result? result});

  @override
  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$ScannedDataListModelImplCopyWithImpl<$Res>
    extends _$ScannedDataListModelCopyWithImpl<$Res, _$ScannedDataListModelImpl>
    implements _$$ScannedDataListModelImplCopyWith<$Res> {
  __$$ScannedDataListModelImplCopyWithImpl(_$ScannedDataListModelImpl _value,
      $Res Function(_$ScannedDataListModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScannedDataListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jsonrpc = freezed,
    Object? result = freezed,
  }) {
    return _then(_$ScannedDataListModelImpl(
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
class _$ScannedDataListModelImpl implements _ScannedDataListModel {
  const _$ScannedDataListModelImpl({this.jsonrpc, this.result});

  factory _$ScannedDataListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScannedDataListModelImplFromJson(json);

  @override
  final String? jsonrpc;
  @override
  final Result? result;

  @override
  String toString() {
    return 'ScannedDataListModel(jsonrpc: $jsonrpc, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScannedDataListModelImpl &&
            (identical(other.jsonrpc, jsonrpc) || other.jsonrpc == jsonrpc) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, jsonrpc, result);

  /// Create a copy of ScannedDataListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScannedDataListModelImplCopyWith<_$ScannedDataListModelImpl>
      get copyWith =>
          __$$ScannedDataListModelImplCopyWithImpl<_$ScannedDataListModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScannedDataListModelImplToJson(
      this,
    );
  }
}

abstract class _ScannedDataListModel implements ScannedDataListModel {
  const factory _ScannedDataListModel(
      {final String? jsonrpc,
      final Result? result}) = _$ScannedDataListModelImpl;

  factory _ScannedDataListModel.fromJson(Map<String, dynamic> json) =
      _$ScannedDataListModelImpl.fromJson;

  @override
  String? get jsonrpc;
  @override
  Result? get result;

  /// Create a copy of ScannedDataListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScannedDataListModelImplCopyWith<_$ScannedDataListModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  int? get status => throw _privateConstructorUsedError;
  String? get response => throw _privateConstructorUsedError;
  List<ScannedDataList>? get scanned_data_list =>
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
      List<ScannedDataList>? scanned_data_list});
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
    Object? scanned_data_list = freezed,
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
      scanned_data_list: freezed == scanned_data_list
          ? _value.scanned_data_list
          : scanned_data_list // ignore: cast_nullable_to_non_nullable
              as List<ScannedDataList>?,
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
      List<ScannedDataList>? scanned_data_list});
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
    Object? scanned_data_list = freezed,
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
      scanned_data_list: freezed == scanned_data_list
          ? _value._scanned_data_list
          : scanned_data_list // ignore: cast_nullable_to_non_nullable
              as List<ScannedDataList>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultImpl implements _Result {
  const _$ResultImpl(
      {this.status,
      this.response,
      final List<ScannedDataList>? scanned_data_list})
      : _scanned_data_list = scanned_data_list;

  factory _$ResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultImplFromJson(json);

  @override
  final int? status;
  @override
  final String? response;
  final List<ScannedDataList>? _scanned_data_list;
  @override
  List<ScannedDataList>? get scanned_data_list {
    final value = _scanned_data_list;
    if (value == null) return null;
    if (_scanned_data_list is EqualUnmodifiableListView)
      return _scanned_data_list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Result(status: $status, response: $response, scanned_data_list: $scanned_data_list)';
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
                .equals(other._scanned_data_list, _scanned_data_list));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, response,
      const DeepCollectionEquality().hash(_scanned_data_list));

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
      final List<ScannedDataList>? scanned_data_list}) = _$ResultImpl;

  factory _Result.fromJson(Map<String, dynamic> json) = _$ResultImpl.fromJson;

  @override
  int? get status;
  @override
  String? get response;
  @override
  List<ScannedDataList>? get scanned_data_list;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ScannedDataList _$ScannedDataListFromJson(Map<String, dynamic> json) {
  return _ScannedDataList.fromJson(json);
}

/// @nodoc
mixin _$ScannedDataList {
  int? get location_id => throw _privateConstructorUsedError;
  String? get location_name => throw _privateConstructorUsedError;
  String? get location_barcode => throw _privateConstructorUsedError;
  int? get lot_id => throw _privateConstructorUsedError;
  String? get lot_name => throw _privateConstructorUsedError;
  double? get quantity => throw _privateConstructorUsedError;

  /// Serializes this ScannedDataList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScannedDataList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScannedDataListCopyWith<ScannedDataList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScannedDataListCopyWith<$Res> {
  factory $ScannedDataListCopyWith(
          ScannedDataList value, $Res Function(ScannedDataList) then) =
      _$ScannedDataListCopyWithImpl<$Res, ScannedDataList>;
  @useResult
  $Res call(
      {int? location_id,
      String? location_name,
      String? location_barcode,
      int? lot_id,
      String? lot_name,
      double? quantity});
}

/// @nodoc
class _$ScannedDataListCopyWithImpl<$Res, $Val extends ScannedDataList>
    implements $ScannedDataListCopyWith<$Res> {
  _$ScannedDataListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScannedDataList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location_id = freezed,
    Object? location_name = freezed,
    Object? location_barcode = freezed,
    Object? lot_id = freezed,
    Object? lot_name = freezed,
    Object? quantity = freezed,
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
      location_barcode: freezed == location_barcode
          ? _value.location_barcode
          : location_barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      lot_id: freezed == lot_id
          ? _value.lot_id
          : lot_id // ignore: cast_nullable_to_non_nullable
              as int?,
      lot_name: freezed == lot_name
          ? _value.lot_name
          : lot_name // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScannedDataListImplCopyWith<$Res>
    implements $ScannedDataListCopyWith<$Res> {
  factory _$$ScannedDataListImplCopyWith(_$ScannedDataListImpl value,
          $Res Function(_$ScannedDataListImpl) then) =
      __$$ScannedDataListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? location_id,
      String? location_name,
      String? location_barcode,
      int? lot_id,
      String? lot_name,
      double? quantity});
}

/// @nodoc
class __$$ScannedDataListImplCopyWithImpl<$Res>
    extends _$ScannedDataListCopyWithImpl<$Res, _$ScannedDataListImpl>
    implements _$$ScannedDataListImplCopyWith<$Res> {
  __$$ScannedDataListImplCopyWithImpl(
      _$ScannedDataListImpl _value, $Res Function(_$ScannedDataListImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScannedDataList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location_id = freezed,
    Object? location_name = freezed,
    Object? location_barcode = freezed,
    Object? lot_id = freezed,
    Object? lot_name = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_$ScannedDataListImpl(
      location_id: freezed == location_id
          ? _value.location_id
          : location_id // ignore: cast_nullable_to_non_nullable
              as int?,
      location_name: freezed == location_name
          ? _value.location_name
          : location_name // ignore: cast_nullable_to_non_nullable
              as String?,
      location_barcode: freezed == location_barcode
          ? _value.location_barcode
          : location_barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      lot_id: freezed == lot_id
          ? _value.lot_id
          : lot_id // ignore: cast_nullable_to_non_nullable
              as int?,
      lot_name: freezed == lot_name
          ? _value.lot_name
          : lot_name // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScannedDataListImpl implements _ScannedDataList {
  const _$ScannedDataListImpl(
      {this.location_id,
      this.location_name,
      this.location_barcode,
      this.lot_id,
      this.lot_name,
      this.quantity});

  factory _$ScannedDataListImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScannedDataListImplFromJson(json);

  @override
  final int? location_id;
  @override
  final String? location_name;
  @override
  final String? location_barcode;
  @override
  final int? lot_id;
  @override
  final String? lot_name;
  @override
  final double? quantity;

  @override
  String toString() {
    return 'ScannedDataList(location_id: $location_id, location_name: $location_name, location_barcode: $location_barcode, lot_id: $lot_id, lot_name: $lot_name, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScannedDataListImpl &&
            (identical(other.location_id, location_id) ||
                other.location_id == location_id) &&
            (identical(other.location_name, location_name) ||
                other.location_name == location_name) &&
            (identical(other.location_barcode, location_barcode) ||
                other.location_barcode == location_barcode) &&
            (identical(other.lot_id, lot_id) || other.lot_id == lot_id) &&
            (identical(other.lot_name, lot_name) ||
                other.lot_name == lot_name) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, location_id, location_name,
      location_barcode, lot_id, lot_name, quantity);

  /// Create a copy of ScannedDataList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScannedDataListImplCopyWith<_$ScannedDataListImpl> get copyWith =>
      __$$ScannedDataListImplCopyWithImpl<_$ScannedDataListImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScannedDataListImplToJson(
      this,
    );
  }
}

abstract class _ScannedDataList implements ScannedDataList {
  const factory _ScannedDataList(
      {final int? location_id,
      final String? location_name,
      final String? location_barcode,
      final int? lot_id,
      final String? lot_name,
      final double? quantity}) = _$ScannedDataListImpl;

  factory _ScannedDataList.fromJson(Map<String, dynamic> json) =
      _$ScannedDataListImpl.fromJson;

  @override
  int? get location_id;
  @override
  String? get location_name;
  @override
  String? get location_barcode;
  @override
  int? get lot_id;
  @override
  String? get lot_name;
  @override
  double? get quantity;

  /// Create a copy of ScannedDataList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScannedDataListImplCopyWith<_$ScannedDataListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
