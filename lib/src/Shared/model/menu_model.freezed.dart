// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'menu_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MenuModel _$MenuModelFromJson(Map<String, dynamic> json) {
  return _MenuModel.fromJson(json);
}

/// @nodoc
mixin _$MenuModel {
// String? jsonrpc,
  Result? get result => throw _privateConstructorUsedError;

  /// Serializes this MenuModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MenuModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MenuModelCopyWith<MenuModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuModelCopyWith<$Res> {
  factory $MenuModelCopyWith(MenuModel value, $Res Function(MenuModel) then) =
      _$MenuModelCopyWithImpl<$Res, MenuModel>;
  @useResult
  $Res call({Result? result});

  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$MenuModelCopyWithImpl<$Res, $Val extends MenuModel>
    implements $MenuModelCopyWith<$Res> {
  _$MenuModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MenuModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Result?,
    ) as $Val);
  }

  /// Create a copy of MenuModel
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
abstract class _$$MenuModelImplCopyWith<$Res>
    implements $MenuModelCopyWith<$Res> {
  factory _$$MenuModelImplCopyWith(
          _$MenuModelImpl value, $Res Function(_$MenuModelImpl) then) =
      __$$MenuModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Result? result});

  @override
  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$MenuModelImplCopyWithImpl<$Res>
    extends _$MenuModelCopyWithImpl<$Res, _$MenuModelImpl>
    implements _$$MenuModelImplCopyWith<$Res> {
  __$$MenuModelImplCopyWithImpl(
      _$MenuModelImpl _value, $Res Function(_$MenuModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MenuModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_$MenuModelImpl(
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Result?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MenuModelImpl implements _MenuModel {
  const _$MenuModelImpl({this.result});

  factory _$MenuModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MenuModelImplFromJson(json);

// String? jsonrpc,
  @override
  final Result? result;

  @override
  String toString() {
    return 'MenuModel(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MenuModelImpl &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, result);

  /// Create a copy of MenuModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MenuModelImplCopyWith<_$MenuModelImpl> get copyWith =>
      __$$MenuModelImplCopyWithImpl<_$MenuModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MenuModelImplToJson(
      this,
    );
  }
}

abstract class _MenuModel implements MenuModel {
  const factory _MenuModel({final Result? result}) = _$MenuModelImpl;

  factory _MenuModel.fromJson(Map<String, dynamic> json) =
      _$MenuModelImpl.fromJson;

// String? jsonrpc,
  @override
  Result? get result;

  /// Create a copy of MenuModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MenuModelImplCopyWith<_$MenuModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
// int? status,
// String? response,
  int? get receive_list => throw _privateConstructorUsedError;
  int? get put_away => throw _privateConstructorUsedError;
  int? get delivery_orders => throw _privateConstructorUsedError;

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
  $Res call({int? receive_list, int? put_away, int? delivery_orders});
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
    Object? receive_list = freezed,
    Object? put_away = freezed,
    Object? delivery_orders = freezed,
  }) {
    return _then(_value.copyWith(
      receive_list: freezed == receive_list
          ? _value.receive_list
          : receive_list // ignore: cast_nullable_to_non_nullable
              as int?,
      put_away: freezed == put_away
          ? _value.put_away
          : put_away // ignore: cast_nullable_to_non_nullable
              as int?,
      delivery_orders: freezed == delivery_orders
          ? _value.delivery_orders
          : delivery_orders // ignore: cast_nullable_to_non_nullable
              as int?,
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
  $Res call({int? receive_list, int? put_away, int? delivery_orders});
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
    Object? receive_list = freezed,
    Object? put_away = freezed,
    Object? delivery_orders = freezed,
  }) {
    return _then(_$ResultImpl(
      receive_list: freezed == receive_list
          ? _value.receive_list
          : receive_list // ignore: cast_nullable_to_non_nullable
              as int?,
      put_away: freezed == put_away
          ? _value.put_away
          : put_away // ignore: cast_nullable_to_non_nullable
              as int?,
      delivery_orders: freezed == delivery_orders
          ? _value.delivery_orders
          : delivery_orders // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultImpl implements _Result {
  const _$ResultImpl({this.receive_list, this.put_away, this.delivery_orders});

  factory _$ResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultImplFromJson(json);

// int? status,
// String? response,
  @override
  final int? receive_list;
  @override
  final int? put_away;
  @override
  final int? delivery_orders;

  @override
  String toString() {
    return 'Result(receive_list: $receive_list, put_away: $put_away, delivery_orders: $delivery_orders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultImpl &&
            (identical(other.receive_list, receive_list) ||
                other.receive_list == receive_list) &&
            (identical(other.put_away, put_away) ||
                other.put_away == put_away) &&
            (identical(other.delivery_orders, delivery_orders) ||
                other.delivery_orders == delivery_orders));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, receive_list, put_away, delivery_orders);

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
      {final int? receive_list,
      final int? put_away,
      final int? delivery_orders}) = _$ResultImpl;

  factory _Result.fromJson(Map<String, dynamic> json) = _$ResultImpl.fromJson;

// int? status,
// String? response,
  @override
  int? get receive_list;
  @override
  int? get put_away;
  @override
  int? get delivery_orders;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
