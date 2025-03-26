// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_truck_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AllTruckListModel _$AllTruckListModelFromJson(Map<String, dynamic> json) {
  return _AllTruckListModel.fromJson(json);
}

/// @nodoc
mixin _$AllTruckListModel {
  String? get jsonrpc => throw _privateConstructorUsedError;
  Result? get result => throw _privateConstructorUsedError;

  /// Serializes this AllTruckListModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AllTruckListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AllTruckListModelCopyWith<AllTruckListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllTruckListModelCopyWith<$Res> {
  factory $AllTruckListModelCopyWith(
          AllTruckListModel value, $Res Function(AllTruckListModel) then) =
      _$AllTruckListModelCopyWithImpl<$Res, AllTruckListModel>;
  @useResult
  $Res call({String? jsonrpc, Result? result});

  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$AllTruckListModelCopyWithImpl<$Res, $Val extends AllTruckListModel>
    implements $AllTruckListModelCopyWith<$Res> {
  _$AllTruckListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AllTruckListModel
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

  /// Create a copy of AllTruckListModel
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
abstract class _$$AllTruckListModelImplCopyWith<$Res>
    implements $AllTruckListModelCopyWith<$Res> {
  factory _$$AllTruckListModelImplCopyWith(_$AllTruckListModelImpl value,
          $Res Function(_$AllTruckListModelImpl) then) =
      __$$AllTruckListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? jsonrpc, Result? result});

  @override
  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$AllTruckListModelImplCopyWithImpl<$Res>
    extends _$AllTruckListModelCopyWithImpl<$Res, _$AllTruckListModelImpl>
    implements _$$AllTruckListModelImplCopyWith<$Res> {
  __$$AllTruckListModelImplCopyWithImpl(_$AllTruckListModelImpl _value,
      $Res Function(_$AllTruckListModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AllTruckListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jsonrpc = freezed,
    Object? result = freezed,
  }) {
    return _then(_$AllTruckListModelImpl(
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
class _$AllTruckListModelImpl implements _AllTruckListModel {
  const _$AllTruckListModelImpl({this.jsonrpc, this.result});

  factory _$AllTruckListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AllTruckListModelImplFromJson(json);

  @override
  final String? jsonrpc;
  @override
  final Result? result;

  @override
  String toString() {
    return 'AllTruckListModel(jsonrpc: $jsonrpc, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllTruckListModelImpl &&
            (identical(other.jsonrpc, jsonrpc) || other.jsonrpc == jsonrpc) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, jsonrpc, result);

  /// Create a copy of AllTruckListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AllTruckListModelImplCopyWith<_$AllTruckListModelImpl> get copyWith =>
      __$$AllTruckListModelImplCopyWithImpl<_$AllTruckListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AllTruckListModelImplToJson(
      this,
    );
  }
}

abstract class _AllTruckListModel implements AllTruckListModel {
  const factory _AllTruckListModel(
      {final String? jsonrpc, final Result? result}) = _$AllTruckListModelImpl;

  factory _AllTruckListModel.fromJson(Map<String, dynamic> json) =
      _$AllTruckListModelImpl.fromJson;

  @override
  String? get jsonrpc;
  @override
  Result? get result;

  /// Create a copy of AllTruckListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AllTruckListModelImplCopyWith<_$AllTruckListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  int? get status => throw _privateConstructorUsedError;
  String? get response => throw _privateConstructorUsedError;
  List<TruckIdsList>? get truck_ids_list => throw _privateConstructorUsedError;

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
      {int? status, String? response, List<TruckIdsList>? truck_ids_list});
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
    Object? truck_ids_list = freezed,
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
      truck_ids_list: freezed == truck_ids_list
          ? _value.truck_ids_list
          : truck_ids_list // ignore: cast_nullable_to_non_nullable
              as List<TruckIdsList>?,
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
      {int? status, String? response, List<TruckIdsList>? truck_ids_list});
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
    Object? truck_ids_list = freezed,
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
      truck_ids_list: freezed == truck_ids_list
          ? _value._truck_ids_list
          : truck_ids_list // ignore: cast_nullable_to_non_nullable
              as List<TruckIdsList>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultImpl implements _Result {
  const _$ResultImpl(
      {this.status, this.response, final List<TruckIdsList>? truck_ids_list})
      : _truck_ids_list = truck_ids_list;

  factory _$ResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultImplFromJson(json);

  @override
  final int? status;
  @override
  final String? response;
  final List<TruckIdsList>? _truck_ids_list;
  @override
  List<TruckIdsList>? get truck_ids_list {
    final value = _truck_ids_list;
    if (value == null) return null;
    if (_truck_ids_list is EqualUnmodifiableListView) return _truck_ids_list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Result(status: $status, response: $response, truck_ids_list: $truck_ids_list)';
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
                .equals(other._truck_ids_list, _truck_ids_list));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, response,
      const DeepCollectionEquality().hash(_truck_ids_list));

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
      final List<TruckIdsList>? truck_ids_list}) = _$ResultImpl;

  factory _Result.fromJson(Map<String, dynamic> json) = _$ResultImpl.fromJson;

  @override
  int? get status;
  @override
  String? get response;
  @override
  List<TruckIdsList>? get truck_ids_list;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TruckIdsList _$TruckIdsListFromJson(Map<String, dynamic> json) {
  return _TruckIdsList.fromJson(json);
}

/// @nodoc
mixin _$TruckIdsList {
  int? get id => throw _privateConstructorUsedError;
  String? get truck_name => throw _privateConstructorUsedError;
  String? get truck_type_name => throw _privateConstructorUsedError;
  String? get gate_in_date => throw _privateConstructorUsedError;

  /// Serializes this TruckIdsList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TruckIdsList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TruckIdsListCopyWith<TruckIdsList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TruckIdsListCopyWith<$Res> {
  factory $TruckIdsListCopyWith(
          TruckIdsList value, $Res Function(TruckIdsList) then) =
      _$TruckIdsListCopyWithImpl<$Res, TruckIdsList>;
  @useResult
  $Res call(
      {int? id,
      String? truck_name,
      String? truck_type_name,
      String? gate_in_date});
}

/// @nodoc
class _$TruckIdsListCopyWithImpl<$Res, $Val extends TruckIdsList>
    implements $TruckIdsListCopyWith<$Res> {
  _$TruckIdsListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TruckIdsList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? truck_name = freezed,
    Object? truck_type_name = freezed,
    Object? gate_in_date = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      truck_name: freezed == truck_name
          ? _value.truck_name
          : truck_name // ignore: cast_nullable_to_non_nullable
              as String?,
      truck_type_name: freezed == truck_type_name
          ? _value.truck_type_name
          : truck_type_name // ignore: cast_nullable_to_non_nullable
              as String?,
      gate_in_date: freezed == gate_in_date
          ? _value.gate_in_date
          : gate_in_date // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TruckIdsListImplCopyWith<$Res>
    implements $TruckIdsListCopyWith<$Res> {
  factory _$$TruckIdsListImplCopyWith(
          _$TruckIdsListImpl value, $Res Function(_$TruckIdsListImpl) then) =
      __$$TruckIdsListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? truck_name,
      String? truck_type_name,
      String? gate_in_date});
}

/// @nodoc
class __$$TruckIdsListImplCopyWithImpl<$Res>
    extends _$TruckIdsListCopyWithImpl<$Res, _$TruckIdsListImpl>
    implements _$$TruckIdsListImplCopyWith<$Res> {
  __$$TruckIdsListImplCopyWithImpl(
      _$TruckIdsListImpl _value, $Res Function(_$TruckIdsListImpl) _then)
      : super(_value, _then);

  /// Create a copy of TruckIdsList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? truck_name = freezed,
    Object? truck_type_name = freezed,
    Object? gate_in_date = freezed,
  }) {
    return _then(_$TruckIdsListImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      truck_name: freezed == truck_name
          ? _value.truck_name
          : truck_name // ignore: cast_nullable_to_non_nullable
              as String?,
      truck_type_name: freezed == truck_type_name
          ? _value.truck_type_name
          : truck_type_name // ignore: cast_nullable_to_non_nullable
              as String?,
      gate_in_date: freezed == gate_in_date
          ? _value.gate_in_date
          : gate_in_date // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TruckIdsListImpl implements _TruckIdsList {
  const _$TruckIdsListImpl(
      {this.id, this.truck_name, this.truck_type_name, this.gate_in_date});

  factory _$TruckIdsListImpl.fromJson(Map<String, dynamic> json) =>
      _$$TruckIdsListImplFromJson(json);

  @override
  final int? id;
  @override
  final String? truck_name;
  @override
  final String? truck_type_name;
  @override
  final String? gate_in_date;

  @override
  String toString() {
    return 'TruckIdsList(id: $id, truck_name: $truck_name, truck_type_name: $truck_type_name, gate_in_date: $gate_in_date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TruckIdsListImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.truck_name, truck_name) ||
                other.truck_name == truck_name) &&
            (identical(other.truck_type_name, truck_type_name) ||
                other.truck_type_name == truck_type_name) &&
            (identical(other.gate_in_date, gate_in_date) ||
                other.gate_in_date == gate_in_date));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, truck_name, truck_type_name, gate_in_date);

  /// Create a copy of TruckIdsList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TruckIdsListImplCopyWith<_$TruckIdsListImpl> get copyWith =>
      __$$TruckIdsListImplCopyWithImpl<_$TruckIdsListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TruckIdsListImplToJson(
      this,
    );
  }
}

abstract class _TruckIdsList implements TruckIdsList {
  const factory _TruckIdsList(
      {final int? id,
      final String? truck_name,
      final String? truck_type_name,
      final String? gate_in_date}) = _$TruckIdsListImpl;

  factory _TruckIdsList.fromJson(Map<String, dynamic> json) =
      _$TruckIdsListImpl.fromJson;

  @override
  int? get id;
  @override
  String? get truck_name;
  @override
  String? get truck_type_name;
  @override
  String? get gate_in_date;

  /// Create a copy of TruckIdsList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TruckIdsListImplCopyWith<_$TruckIdsListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
