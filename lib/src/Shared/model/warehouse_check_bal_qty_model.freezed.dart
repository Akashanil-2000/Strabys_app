// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'warehouse_check_bal_qty_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WarehouseCheckQtyBal _$WarehouseCheckQtyBalFromJson(Map<String, dynamic> json) {
  return _WarehouseCheckQtyBal.fromJson(json);
}

/// @nodoc
mixin _$WarehouseCheckQtyBal {
  String? get jsonrpc => throw _privateConstructorUsedError;
  Result? get result => throw _privateConstructorUsedError;

  /// Serializes this WarehouseCheckQtyBal to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WarehouseCheckQtyBal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WarehouseCheckQtyBalCopyWith<WarehouseCheckQtyBal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WarehouseCheckQtyBalCopyWith<$Res> {
  factory $WarehouseCheckQtyBalCopyWith(WarehouseCheckQtyBal value,
          $Res Function(WarehouseCheckQtyBal) then) =
      _$WarehouseCheckQtyBalCopyWithImpl<$Res, WarehouseCheckQtyBal>;
  @useResult
  $Res call({String? jsonrpc, Result? result});

  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$WarehouseCheckQtyBalCopyWithImpl<$Res,
        $Val extends WarehouseCheckQtyBal>
    implements $WarehouseCheckQtyBalCopyWith<$Res> {
  _$WarehouseCheckQtyBalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WarehouseCheckQtyBal
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

  /// Create a copy of WarehouseCheckQtyBal
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
abstract class _$$WarehouseCheckQtyBalImplCopyWith<$Res>
    implements $WarehouseCheckQtyBalCopyWith<$Res> {
  factory _$$WarehouseCheckQtyBalImplCopyWith(_$WarehouseCheckQtyBalImpl value,
          $Res Function(_$WarehouseCheckQtyBalImpl) then) =
      __$$WarehouseCheckQtyBalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? jsonrpc, Result? result});

  @override
  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$WarehouseCheckQtyBalImplCopyWithImpl<$Res>
    extends _$WarehouseCheckQtyBalCopyWithImpl<$Res, _$WarehouseCheckQtyBalImpl>
    implements _$$WarehouseCheckQtyBalImplCopyWith<$Res> {
  __$$WarehouseCheckQtyBalImplCopyWithImpl(_$WarehouseCheckQtyBalImpl _value,
      $Res Function(_$WarehouseCheckQtyBalImpl) _then)
      : super(_value, _then);

  /// Create a copy of WarehouseCheckQtyBal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jsonrpc = freezed,
    Object? result = freezed,
  }) {
    return _then(_$WarehouseCheckQtyBalImpl(
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
class _$WarehouseCheckQtyBalImpl implements _WarehouseCheckQtyBal {
  const _$WarehouseCheckQtyBalImpl({this.jsonrpc, this.result});

  factory _$WarehouseCheckQtyBalImpl.fromJson(Map<String, dynamic> json) =>
      _$$WarehouseCheckQtyBalImplFromJson(json);

  @override
  final String? jsonrpc;
  @override
  final Result? result;

  @override
  String toString() {
    return 'WarehouseCheckQtyBal(jsonrpc: $jsonrpc, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WarehouseCheckQtyBalImpl &&
            (identical(other.jsonrpc, jsonrpc) || other.jsonrpc == jsonrpc) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, jsonrpc, result);

  /// Create a copy of WarehouseCheckQtyBal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WarehouseCheckQtyBalImplCopyWith<_$WarehouseCheckQtyBalImpl>
      get copyWith =>
          __$$WarehouseCheckQtyBalImplCopyWithImpl<_$WarehouseCheckQtyBalImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WarehouseCheckQtyBalImplToJson(
      this,
    );
  }
}

abstract class _WarehouseCheckQtyBal implements WarehouseCheckQtyBal {
  const factory _WarehouseCheckQtyBal(
      {final String? jsonrpc,
      final Result? result}) = _$WarehouseCheckQtyBalImpl;

  factory _WarehouseCheckQtyBal.fromJson(Map<String, dynamic> json) =
      _$WarehouseCheckQtyBalImpl.fromJson;

  @override
  String? get jsonrpc;
  @override
  Result? get result;

  /// Create a copy of WarehouseCheckQtyBal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WarehouseCheckQtyBalImplCopyWith<_$WarehouseCheckQtyBalImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  int? get status => throw _privateConstructorUsedError;
  String? get response => throw _privateConstructorUsedError;
  double? get balance_qty => throw _privateConstructorUsedError;

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
  $Res call({int? status, String? response, double? balance_qty});
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
    Object? balance_qty = freezed,
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
      balance_qty: freezed == balance_qty
          ? _value.balance_qty
          : balance_qty // ignore: cast_nullable_to_non_nullable
              as double?,
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
  $Res call({int? status, String? response, double? balance_qty});
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
    Object? balance_qty = freezed,
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
      balance_qty: freezed == balance_qty
          ? _value.balance_qty
          : balance_qty // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultImpl implements _Result {
  const _$ResultImpl({this.status, this.response, this.balance_qty});

  factory _$ResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultImplFromJson(json);

  @override
  final int? status;
  @override
  final String? response;
  @override
  final double? balance_qty;

  @override
  String toString() {
    return 'Result(status: $status, response: $response, balance_qty: $balance_qty)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.balance_qty, balance_qty) ||
                other.balance_qty == balance_qty));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, response, balance_qty);

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
      final double? balance_qty}) = _$ResultImpl;

  factory _Result.fromJson(Map<String, dynamic> json) = _$ResultImpl.fromJson;

  @override
  int? get status;
  @override
  String? get response;
  @override
  double? get balance_qty;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
