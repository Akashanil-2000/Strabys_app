// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'warehouse_stock_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WarehouseStockListModel _$WarehouseStockListModelFromJson(
    Map<String, dynamic> json) {
  return _WarehouseStockListModel.fromJson(json);
}

/// @nodoc
mixin _$WarehouseStockListModel {
  String? get jsonrpc => throw _privateConstructorUsedError;
  Result? get result => throw _privateConstructorUsedError;

  /// Serializes this WarehouseStockListModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WarehouseStockListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WarehouseStockListModelCopyWith<WarehouseStockListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WarehouseStockListModelCopyWith<$Res> {
  factory $WarehouseStockListModelCopyWith(WarehouseStockListModel value,
          $Res Function(WarehouseStockListModel) then) =
      _$WarehouseStockListModelCopyWithImpl<$Res, WarehouseStockListModel>;
  @useResult
  $Res call({String? jsonrpc, Result? result});

  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$WarehouseStockListModelCopyWithImpl<$Res,
        $Val extends WarehouseStockListModel>
    implements $WarehouseStockListModelCopyWith<$Res> {
  _$WarehouseStockListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WarehouseStockListModel
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

  /// Create a copy of WarehouseStockListModel
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
abstract class _$$WarehouseStockListModelImplCopyWith<$Res>
    implements $WarehouseStockListModelCopyWith<$Res> {
  factory _$$WarehouseStockListModelImplCopyWith(
          _$WarehouseStockListModelImpl value,
          $Res Function(_$WarehouseStockListModelImpl) then) =
      __$$WarehouseStockListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? jsonrpc, Result? result});

  @override
  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$WarehouseStockListModelImplCopyWithImpl<$Res>
    extends _$WarehouseStockListModelCopyWithImpl<$Res,
        _$WarehouseStockListModelImpl>
    implements _$$WarehouseStockListModelImplCopyWith<$Res> {
  __$$WarehouseStockListModelImplCopyWithImpl(
      _$WarehouseStockListModelImpl _value,
      $Res Function(_$WarehouseStockListModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of WarehouseStockListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jsonrpc = freezed,
    Object? result = freezed,
  }) {
    return _then(_$WarehouseStockListModelImpl(
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
class _$WarehouseStockListModelImpl implements _WarehouseStockListModel {
  const _$WarehouseStockListModelImpl({this.jsonrpc, this.result});

  factory _$WarehouseStockListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WarehouseStockListModelImplFromJson(json);

  @override
  final String? jsonrpc;
  @override
  final Result? result;

  @override
  String toString() {
    return 'WarehouseStockListModel(jsonrpc: $jsonrpc, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WarehouseStockListModelImpl &&
            (identical(other.jsonrpc, jsonrpc) || other.jsonrpc == jsonrpc) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, jsonrpc, result);

  /// Create a copy of WarehouseStockListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WarehouseStockListModelImplCopyWith<_$WarehouseStockListModelImpl>
      get copyWith => __$$WarehouseStockListModelImplCopyWithImpl<
          _$WarehouseStockListModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WarehouseStockListModelImplToJson(
      this,
    );
  }
}

abstract class _WarehouseStockListModel implements WarehouseStockListModel {
  const factory _WarehouseStockListModel(
      {final String? jsonrpc,
      final Result? result}) = _$WarehouseStockListModelImpl;

  factory _WarehouseStockListModel.fromJson(Map<String, dynamic> json) =
      _$WarehouseStockListModelImpl.fromJson;

  @override
  String? get jsonrpc;
  @override
  Result? get result;

  /// Create a copy of WarehouseStockListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WarehouseStockListModelImplCopyWith<_$WarehouseStockListModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  int? get status => throw _privateConstructorUsedError;
  String? get response => throw _privateConstructorUsedError;
  List<StockOutList>? get stock_out_list => throw _privateConstructorUsedError;
  List<StockInList>? get stock_in_list => throw _privateConstructorUsedError;

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
      List<StockOutList>? stock_out_list,
      List<StockInList>? stock_in_list});
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
    Object? stock_out_list = freezed,
    Object? stock_in_list = freezed,
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
      stock_out_list: freezed == stock_out_list
          ? _value.stock_out_list
          : stock_out_list // ignore: cast_nullable_to_non_nullable
              as List<StockOutList>?,
      stock_in_list: freezed == stock_in_list
          ? _value.stock_in_list
          : stock_in_list // ignore: cast_nullable_to_non_nullable
              as List<StockInList>?,
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
      List<StockOutList>? stock_out_list,
      List<StockInList>? stock_in_list});
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
    Object? stock_out_list = freezed,
    Object? stock_in_list = freezed,
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
      stock_out_list: freezed == stock_out_list
          ? _value._stock_out_list
          : stock_out_list // ignore: cast_nullable_to_non_nullable
              as List<StockOutList>?,
      stock_in_list: freezed == stock_in_list
          ? _value._stock_in_list
          : stock_in_list // ignore: cast_nullable_to_non_nullable
              as List<StockInList>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultImpl implements _Result {
  const _$ResultImpl(
      {this.status,
      this.response,
      final List<StockOutList>? stock_out_list,
      final List<StockInList>? stock_in_list})
      : _stock_out_list = stock_out_list,
        _stock_in_list = stock_in_list;

  factory _$ResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultImplFromJson(json);

  @override
  final int? status;
  @override
  final String? response;
  final List<StockOutList>? _stock_out_list;
  @override
  List<StockOutList>? get stock_out_list {
    final value = _stock_out_list;
    if (value == null) return null;
    if (_stock_out_list is EqualUnmodifiableListView) return _stock_out_list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<StockInList>? _stock_in_list;
  @override
  List<StockInList>? get stock_in_list {
    final value = _stock_in_list;
    if (value == null) return null;
    if (_stock_in_list is EqualUnmodifiableListView) return _stock_in_list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Result(status: $status, response: $response, stock_out_list: $stock_out_list, stock_in_list: $stock_in_list)';
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
                .equals(other._stock_out_list, _stock_out_list) &&
            const DeepCollectionEquality()
                .equals(other._stock_in_list, _stock_in_list));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      response,
      const DeepCollectionEquality().hash(_stock_out_list),
      const DeepCollectionEquality().hash(_stock_in_list));

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
      final List<StockOutList>? stock_out_list,
      final List<StockInList>? stock_in_list}) = _$ResultImpl;

  factory _Result.fromJson(Map<String, dynamic> json) = _$ResultImpl.fromJson;

  @override
  int? get status;
  @override
  String? get response;
  @override
  List<StockOutList>? get stock_out_list;
  @override
  List<StockInList>? get stock_in_list;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StockOutList _$StockOutListFromJson(Map<String, dynamic> json) {
  return _StockOutList.fromJson(json);
}

/// @nodoc
mixin _$StockOutList {
  String? get name => throw _privateConstructorUsedError;
  int? get warehouse_id => throw _privateConstructorUsedError;
  String? get warehouse_name => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  int? get picking_id => throw _privateConstructorUsedError;
  int? get transfer_id => throw _privateConstructorUsedError;

  /// Serializes this StockOutList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StockOutList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StockOutListCopyWith<StockOutList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockOutListCopyWith<$Res> {
  factory $StockOutListCopyWith(
          StockOutList value, $Res Function(StockOutList) then) =
      _$StockOutListCopyWithImpl<$Res, StockOutList>;
  @useResult
  $Res call(
      {String? name,
      int? warehouse_id,
      String? warehouse_name,
      String? date,
      int? picking_id,
      int? transfer_id});
}

/// @nodoc
class _$StockOutListCopyWithImpl<$Res, $Val extends StockOutList>
    implements $StockOutListCopyWith<$Res> {
  _$StockOutListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StockOutList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? warehouse_id = freezed,
    Object? warehouse_name = freezed,
    Object? date = freezed,
    Object? picking_id = freezed,
    Object? transfer_id = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      warehouse_id: freezed == warehouse_id
          ? _value.warehouse_id
          : warehouse_id // ignore: cast_nullable_to_non_nullable
              as int?,
      warehouse_name: freezed == warehouse_name
          ? _value.warehouse_name
          : warehouse_name // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      picking_id: freezed == picking_id
          ? _value.picking_id
          : picking_id // ignore: cast_nullable_to_non_nullable
              as int?,
      transfer_id: freezed == transfer_id
          ? _value.transfer_id
          : transfer_id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StockOutListImplCopyWith<$Res>
    implements $StockOutListCopyWith<$Res> {
  factory _$$StockOutListImplCopyWith(
          _$StockOutListImpl value, $Res Function(_$StockOutListImpl) then) =
      __$$StockOutListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      int? warehouse_id,
      String? warehouse_name,
      String? date,
      int? picking_id,
      int? transfer_id});
}

/// @nodoc
class __$$StockOutListImplCopyWithImpl<$Res>
    extends _$StockOutListCopyWithImpl<$Res, _$StockOutListImpl>
    implements _$$StockOutListImplCopyWith<$Res> {
  __$$StockOutListImplCopyWithImpl(
      _$StockOutListImpl _value, $Res Function(_$StockOutListImpl) _then)
      : super(_value, _then);

  /// Create a copy of StockOutList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? warehouse_id = freezed,
    Object? warehouse_name = freezed,
    Object? date = freezed,
    Object? picking_id = freezed,
    Object? transfer_id = freezed,
  }) {
    return _then(_$StockOutListImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      warehouse_id: freezed == warehouse_id
          ? _value.warehouse_id
          : warehouse_id // ignore: cast_nullable_to_non_nullable
              as int?,
      warehouse_name: freezed == warehouse_name
          ? _value.warehouse_name
          : warehouse_name // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      picking_id: freezed == picking_id
          ? _value.picking_id
          : picking_id // ignore: cast_nullable_to_non_nullable
              as int?,
      transfer_id: freezed == transfer_id
          ? _value.transfer_id
          : transfer_id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StockOutListImpl implements _StockOutList {
  const _$StockOutListImpl(
      {this.name,
      this.warehouse_id,
      this.warehouse_name,
      this.date,
      this.picking_id,
      this.transfer_id});

  factory _$StockOutListImpl.fromJson(Map<String, dynamic> json) =>
      _$$StockOutListImplFromJson(json);

  @override
  final String? name;
  @override
  final int? warehouse_id;
  @override
  final String? warehouse_name;
  @override
  final String? date;
  @override
  final int? picking_id;
  @override
  final int? transfer_id;

  @override
  String toString() {
    return 'StockOutList(name: $name, warehouse_id: $warehouse_id, warehouse_name: $warehouse_name, date: $date, picking_id: $picking_id, transfer_id: $transfer_id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StockOutListImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.warehouse_id, warehouse_id) ||
                other.warehouse_id == warehouse_id) &&
            (identical(other.warehouse_name, warehouse_name) ||
                other.warehouse_name == warehouse_name) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.picking_id, picking_id) ||
                other.picking_id == picking_id) &&
            (identical(other.transfer_id, transfer_id) ||
                other.transfer_id == transfer_id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, warehouse_id,
      warehouse_name, date, picking_id, transfer_id);

  /// Create a copy of StockOutList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StockOutListImplCopyWith<_$StockOutListImpl> get copyWith =>
      __$$StockOutListImplCopyWithImpl<_$StockOutListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StockOutListImplToJson(
      this,
    );
  }
}

abstract class _StockOutList implements StockOutList {
  const factory _StockOutList(
      {final String? name,
      final int? warehouse_id,
      final String? warehouse_name,
      final String? date,
      final int? picking_id,
      final int? transfer_id}) = _$StockOutListImpl;

  factory _StockOutList.fromJson(Map<String, dynamic> json) =
      _$StockOutListImpl.fromJson;

  @override
  String? get name;
  @override
  int? get warehouse_id;
  @override
  String? get warehouse_name;
  @override
  String? get date;
  @override
  int? get picking_id;
  @override
  int? get transfer_id;

  /// Create a copy of StockOutList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StockOutListImplCopyWith<_$StockOutListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StockInList _$StockInListFromJson(Map<String, dynamic> json) {
  return _StockInList.fromJson(json);
}

/// @nodoc
mixin _$StockInList {
  String? get name => throw _privateConstructorUsedError;
  int? get warehouse_id => throw _privateConstructorUsedError;
  String? get warehouse_name => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  int? get picking_id => throw _privateConstructorUsedError;
  int? get transfer_id => throw _privateConstructorUsedError;

  /// Serializes this StockInList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StockInList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StockInListCopyWith<StockInList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockInListCopyWith<$Res> {
  factory $StockInListCopyWith(
          StockInList value, $Res Function(StockInList) then) =
      _$StockInListCopyWithImpl<$Res, StockInList>;
  @useResult
  $Res call(
      {String? name,
      int? warehouse_id,
      String? warehouse_name,
      String? date,
      int? picking_id,
      int? transfer_id});
}

/// @nodoc
class _$StockInListCopyWithImpl<$Res, $Val extends StockInList>
    implements $StockInListCopyWith<$Res> {
  _$StockInListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StockInList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? warehouse_id = freezed,
    Object? warehouse_name = freezed,
    Object? date = freezed,
    Object? picking_id = freezed,
    Object? transfer_id = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      warehouse_id: freezed == warehouse_id
          ? _value.warehouse_id
          : warehouse_id // ignore: cast_nullable_to_non_nullable
              as int?,
      warehouse_name: freezed == warehouse_name
          ? _value.warehouse_name
          : warehouse_name // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      picking_id: freezed == picking_id
          ? _value.picking_id
          : picking_id // ignore: cast_nullable_to_non_nullable
              as int?,
      transfer_id: freezed == transfer_id
          ? _value.transfer_id
          : transfer_id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StockInListImplCopyWith<$Res>
    implements $StockInListCopyWith<$Res> {
  factory _$$StockInListImplCopyWith(
          _$StockInListImpl value, $Res Function(_$StockInListImpl) then) =
      __$$StockInListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      int? warehouse_id,
      String? warehouse_name,
      String? date,
      int? picking_id,
      int? transfer_id});
}

/// @nodoc
class __$$StockInListImplCopyWithImpl<$Res>
    extends _$StockInListCopyWithImpl<$Res, _$StockInListImpl>
    implements _$$StockInListImplCopyWith<$Res> {
  __$$StockInListImplCopyWithImpl(
      _$StockInListImpl _value, $Res Function(_$StockInListImpl) _then)
      : super(_value, _then);

  /// Create a copy of StockInList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? warehouse_id = freezed,
    Object? warehouse_name = freezed,
    Object? date = freezed,
    Object? picking_id = freezed,
    Object? transfer_id = freezed,
  }) {
    return _then(_$StockInListImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      warehouse_id: freezed == warehouse_id
          ? _value.warehouse_id
          : warehouse_id // ignore: cast_nullable_to_non_nullable
              as int?,
      warehouse_name: freezed == warehouse_name
          ? _value.warehouse_name
          : warehouse_name // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      picking_id: freezed == picking_id
          ? _value.picking_id
          : picking_id // ignore: cast_nullable_to_non_nullable
              as int?,
      transfer_id: freezed == transfer_id
          ? _value.transfer_id
          : transfer_id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StockInListImpl implements _StockInList {
  const _$StockInListImpl(
      {this.name,
      this.warehouse_id,
      this.warehouse_name,
      this.date,
      this.picking_id,
      this.transfer_id});

  factory _$StockInListImpl.fromJson(Map<String, dynamic> json) =>
      _$$StockInListImplFromJson(json);

  @override
  final String? name;
  @override
  final int? warehouse_id;
  @override
  final String? warehouse_name;
  @override
  final String? date;
  @override
  final int? picking_id;
  @override
  final int? transfer_id;

  @override
  String toString() {
    return 'StockInList(name: $name, warehouse_id: $warehouse_id, warehouse_name: $warehouse_name, date: $date, picking_id: $picking_id, transfer_id: $transfer_id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StockInListImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.warehouse_id, warehouse_id) ||
                other.warehouse_id == warehouse_id) &&
            (identical(other.warehouse_name, warehouse_name) ||
                other.warehouse_name == warehouse_name) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.picking_id, picking_id) ||
                other.picking_id == picking_id) &&
            (identical(other.transfer_id, transfer_id) ||
                other.transfer_id == transfer_id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, warehouse_id,
      warehouse_name, date, picking_id, transfer_id);

  /// Create a copy of StockInList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StockInListImplCopyWith<_$StockInListImpl> get copyWith =>
      __$$StockInListImplCopyWithImpl<_$StockInListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StockInListImplToJson(
      this,
    );
  }
}

abstract class _StockInList implements StockInList {
  const factory _StockInList(
      {final String? name,
      final int? warehouse_id,
      final String? warehouse_name,
      final String? date,
      final int? picking_id,
      final int? transfer_id}) = _$StockInListImpl;

  factory _StockInList.fromJson(Map<String, dynamic> json) =
      _$StockInListImpl.fromJson;

  @override
  String? get name;
  @override
  int? get warehouse_id;
  @override
  String? get warehouse_name;
  @override
  String? get date;
  @override
  int? get picking_id;
  @override
  int? get transfer_id;

  /// Create a copy of StockInList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StockInListImplCopyWith<_$StockInListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
