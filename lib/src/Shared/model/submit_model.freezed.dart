// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submit_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SubmitModel _$SubmitModelFromJson(Map<String, dynamic> json) {
  return _SubmitModel.fromJson(json);
}

/// @nodoc
mixin _$SubmitModel {
  String? get jsonrpc => throw _privateConstructorUsedError; // Id? id,
  Result? get result => throw _privateConstructorUsedError;

  /// Serializes this SubmitModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubmitModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubmitModelCopyWith<SubmitModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmitModelCopyWith<$Res> {
  factory $SubmitModelCopyWith(
          SubmitModel value, $Res Function(SubmitModel) then) =
      _$SubmitModelCopyWithImpl<$Res, SubmitModel>;
  @useResult
  $Res call({String? jsonrpc, Result? result});

  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$SubmitModelCopyWithImpl<$Res, $Val extends SubmitModel>
    implements $SubmitModelCopyWith<$Res> {
  _$SubmitModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubmitModel
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

  /// Create a copy of SubmitModel
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
abstract class _$$SubmitModelImplCopyWith<$Res>
    implements $SubmitModelCopyWith<$Res> {
  factory _$$SubmitModelImplCopyWith(
          _$SubmitModelImpl value, $Res Function(_$SubmitModelImpl) then) =
      __$$SubmitModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? jsonrpc, Result? result});

  @override
  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$SubmitModelImplCopyWithImpl<$Res>
    extends _$SubmitModelCopyWithImpl<$Res, _$SubmitModelImpl>
    implements _$$SubmitModelImplCopyWith<$Res> {
  __$$SubmitModelImplCopyWithImpl(
      _$SubmitModelImpl _value, $Res Function(_$SubmitModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubmitModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jsonrpc = freezed,
    Object? result = freezed,
  }) {
    return _then(_$SubmitModelImpl(
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
class _$SubmitModelImpl implements _SubmitModel {
  const _$SubmitModelImpl({this.jsonrpc, this.result});

  factory _$SubmitModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubmitModelImplFromJson(json);

  @override
  final String? jsonrpc;
// Id? id,
  @override
  final Result? result;

  @override
  String toString() {
    return 'SubmitModel(jsonrpc: $jsonrpc, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitModelImpl &&
            (identical(other.jsonrpc, jsonrpc) || other.jsonrpc == jsonrpc) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, jsonrpc, result);

  /// Create a copy of SubmitModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitModelImplCopyWith<_$SubmitModelImpl> get copyWith =>
      __$$SubmitModelImplCopyWithImpl<_$SubmitModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubmitModelImplToJson(
      this,
    );
  }
}

abstract class _SubmitModel implements SubmitModel {
  const factory _SubmitModel({final String? jsonrpc, final Result? result}) =
      _$SubmitModelImpl;

  factory _SubmitModel.fromJson(Map<String, dynamic> json) =
      _$SubmitModelImpl.fromJson;

  @override
  String? get jsonrpc; // Id? id,
  @override
  Result? get result;

  /// Create a copy of SubmitModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitModelImplCopyWith<_$SubmitModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  int? get status => throw _privateConstructorUsedError;
  List<SubmitData>? get submit_data => throw _privateConstructorUsedError;

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
  $Res call({int? status, List<SubmitData>? submit_data});
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
    Object? submit_data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      submit_data: freezed == submit_data
          ? _value.submit_data
          : submit_data // ignore: cast_nullable_to_non_nullable
              as List<SubmitData>?,
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
  $Res call({int? status, List<SubmitData>? submit_data});
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
    Object? submit_data = freezed,
  }) {
    return _then(_$ResultImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      submit_data: freezed == submit_data
          ? _value._submit_data
          : submit_data // ignore: cast_nullable_to_non_nullable
              as List<SubmitData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultImpl implements _Result {
  const _$ResultImpl({this.status, final List<SubmitData>? submit_data})
      : _submit_data = submit_data;

  factory _$ResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultImplFromJson(json);

  @override
  final int? status;
  final List<SubmitData>? _submit_data;
  @override
  List<SubmitData>? get submit_data {
    final value = _submit_data;
    if (value == null) return null;
    if (_submit_data is EqualUnmodifiableListView) return _submit_data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Result(status: $status, submit_data: $submit_data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._submit_data, _submit_data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_submit_data));

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
      {final int? status, final List<SubmitData>? submit_data}) = _$ResultImpl;

  factory _Result.fromJson(Map<String, dynamic> json) = _$ResultImpl.fromJson;

  @override
  int? get status;
  @override
  List<SubmitData>? get submit_data;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SubmitData _$SubmitDataFromJson(Map<String, dynamic> json) {
  return _SubmitData.fromJson(json);
}

/// @nodoc
mixin _$SubmitData {
  int? get location_id => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;

  /// Serializes this SubmitData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubmitData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubmitDataCopyWith<SubmitData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmitDataCopyWith<$Res> {
  factory $SubmitDataCopyWith(
          SubmitData value, $Res Function(SubmitData) then) =
      _$SubmitDataCopyWithImpl<$Res, SubmitData>;
  @useResult
  $Res call({int? location_id, String? status});
}

/// @nodoc
class _$SubmitDataCopyWithImpl<$Res, $Val extends SubmitData>
    implements $SubmitDataCopyWith<$Res> {
  _$SubmitDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubmitData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location_id = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      location_id: freezed == location_id
          ? _value.location_id
          : location_id // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubmitDataImplCopyWith<$Res>
    implements $SubmitDataCopyWith<$Res> {
  factory _$$SubmitDataImplCopyWith(
          _$SubmitDataImpl value, $Res Function(_$SubmitDataImpl) then) =
      __$$SubmitDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? location_id, String? status});
}

/// @nodoc
class __$$SubmitDataImplCopyWithImpl<$Res>
    extends _$SubmitDataCopyWithImpl<$Res, _$SubmitDataImpl>
    implements _$$SubmitDataImplCopyWith<$Res> {
  __$$SubmitDataImplCopyWithImpl(
      _$SubmitDataImpl _value, $Res Function(_$SubmitDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubmitData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location_id = freezed,
    Object? status = freezed,
  }) {
    return _then(_$SubmitDataImpl(
      location_id: freezed == location_id
          ? _value.location_id
          : location_id // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubmitDataImpl implements _SubmitData {
  const _$SubmitDataImpl({this.location_id, this.status});

  factory _$SubmitDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubmitDataImplFromJson(json);

  @override
  final int? location_id;
  @override
  final String? status;

  @override
  String toString() {
    return 'SubmitData(location_id: $location_id, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitDataImpl &&
            (identical(other.location_id, location_id) ||
                other.location_id == location_id) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, location_id, status);

  /// Create a copy of SubmitData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitDataImplCopyWith<_$SubmitDataImpl> get copyWith =>
      __$$SubmitDataImplCopyWithImpl<_$SubmitDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubmitDataImplToJson(
      this,
    );
  }
}

abstract class _SubmitData implements SubmitData {
  const factory _SubmitData({final int? location_id, final String? status}) =
      _$SubmitDataImpl;

  factory _SubmitData.fromJson(Map<String, dynamic> json) =
      _$SubmitDataImpl.fromJson;

  @override
  int? get location_id;
  @override
  String? get status;

  /// Create a copy of SubmitData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitDataImplCopyWith<_$SubmitDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
