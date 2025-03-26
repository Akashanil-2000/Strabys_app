// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authenticate_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthenticateModel _$AuthenticateModelFromJson(Map<String, dynamic> json) {
  return _AuthenticateModel.fromJson(json);
}

/// @nodoc
mixin _$AuthenticateModel {
  String? get jsonrpc => throw _privateConstructorUsedError;
  dynamic get id => throw _privateConstructorUsedError;
  Result? get result => throw _privateConstructorUsedError;

  /// Serializes this AuthenticateModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthenticateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthenticateModelCopyWith<AuthenticateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticateModelCopyWith<$Res> {
  factory $AuthenticateModelCopyWith(
          AuthenticateModel value, $Res Function(AuthenticateModel) then) =
      _$AuthenticateModelCopyWithImpl<$Res, AuthenticateModel>;
  @useResult
  $Res call({String? jsonrpc, dynamic id, Result? result});

  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$AuthenticateModelCopyWithImpl<$Res, $Val extends AuthenticateModel>
    implements $AuthenticateModelCopyWith<$Res> {
  _$AuthenticateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthenticateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jsonrpc = freezed,
    Object? id = freezed,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      jsonrpc: freezed == jsonrpc
          ? _value.jsonrpc
          : jsonrpc // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Result?,
    ) as $Val);
  }

  /// Create a copy of AuthenticateModel
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
abstract class _$$AuthenticateModelImplCopyWith<$Res>
    implements $AuthenticateModelCopyWith<$Res> {
  factory _$$AuthenticateModelImplCopyWith(_$AuthenticateModelImpl value,
          $Res Function(_$AuthenticateModelImpl) then) =
      __$$AuthenticateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? jsonrpc, dynamic id, Result? result});

  @override
  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$AuthenticateModelImplCopyWithImpl<$Res>
    extends _$AuthenticateModelCopyWithImpl<$Res, _$AuthenticateModelImpl>
    implements _$$AuthenticateModelImplCopyWith<$Res> {
  __$$AuthenticateModelImplCopyWithImpl(_$AuthenticateModelImpl _value,
      $Res Function(_$AuthenticateModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jsonrpc = freezed,
    Object? id = freezed,
    Object? result = freezed,
  }) {
    return _then(_$AuthenticateModelImpl(
      jsonrpc: freezed == jsonrpc
          ? _value.jsonrpc
          : jsonrpc // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Result?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthenticateModelImpl implements _AuthenticateModel {
  const _$AuthenticateModelImpl({this.jsonrpc, this.id, this.result});

  factory _$AuthenticateModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthenticateModelImplFromJson(json);

  @override
  final String? jsonrpc;
  @override
  final dynamic id;
  @override
  final Result? result;

  @override
  String toString() {
    return 'AuthenticateModel(jsonrpc: $jsonrpc, id: $id, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticateModelImpl &&
            (identical(other.jsonrpc, jsonrpc) || other.jsonrpc == jsonrpc) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, jsonrpc, const DeepCollectionEquality().hash(id), result);

  /// Create a copy of AuthenticateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticateModelImplCopyWith<_$AuthenticateModelImpl> get copyWith =>
      __$$AuthenticateModelImplCopyWithImpl<_$AuthenticateModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthenticateModelImplToJson(
      this,
    );
  }
}

abstract class _AuthenticateModel implements AuthenticateModel {
  const factory _AuthenticateModel(
      {final String? jsonrpc,
      final dynamic id,
      final Result? result}) = _$AuthenticateModelImpl;

  factory _AuthenticateModel.fromJson(Map<String, dynamic> json) =
      _$AuthenticateModelImpl.fromJson;

  @override
  String? get jsonrpc;
  @override
  dynamic get id;
  @override
  Result? get result;

  /// Create a copy of AuthenticateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthenticateModelImplCopyWith<_$AuthenticateModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  String? get session_id => throw _privateConstructorUsedError;
  int? get uid => throw _privateConstructorUsedError;
  bool? get is_admin => throw _privateConstructorUsedError;
  String? get db => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get partner_display_name => throw _privateConstructorUsedError;

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
      {String? session_id,
      int? uid,
      bool? is_admin,
      String? db,
      String? name,
      String? username,
      String? partner_display_name});
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
    Object? session_id = freezed,
    Object? uid = freezed,
    Object? is_admin = freezed,
    Object? db = freezed,
    Object? name = freezed,
    Object? username = freezed,
    Object? partner_display_name = freezed,
  }) {
    return _then(_value.copyWith(
      session_id: freezed == session_id
          ? _value.session_id
          : session_id // ignore: cast_nullable_to_non_nullable
              as String?,
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as int?,
      is_admin: freezed == is_admin
          ? _value.is_admin
          : is_admin // ignore: cast_nullable_to_non_nullable
              as bool?,
      db: freezed == db
          ? _value.db
          : db // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      partner_display_name: freezed == partner_display_name
          ? _value.partner_display_name
          : partner_display_name // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {String? session_id,
      int? uid,
      bool? is_admin,
      String? db,
      String? name,
      String? username,
      String? partner_display_name});
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
    Object? session_id = freezed,
    Object? uid = freezed,
    Object? is_admin = freezed,
    Object? db = freezed,
    Object? name = freezed,
    Object? username = freezed,
    Object? partner_display_name = freezed,
  }) {
    return _then(_$ResultImpl(
      session_id: freezed == session_id
          ? _value.session_id
          : session_id // ignore: cast_nullable_to_non_nullable
              as String?,
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as int?,
      is_admin: freezed == is_admin
          ? _value.is_admin
          : is_admin // ignore: cast_nullable_to_non_nullable
              as bool?,
      db: freezed == db
          ? _value.db
          : db // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      partner_display_name: freezed == partner_display_name
          ? _value.partner_display_name
          : partner_display_name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultImpl implements _Result {
  const _$ResultImpl(
      {this.session_id,
      this.uid,
      this.is_admin,
      this.db,
      this.name,
      this.username,
      this.partner_display_name});

  factory _$ResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultImplFromJson(json);

  @override
  final String? session_id;
  @override
  final int? uid;
  @override
  final bool? is_admin;
  @override
  final String? db;
  @override
  final String? name;
  @override
  final String? username;
  @override
  final String? partner_display_name;

  @override
  String toString() {
    return 'Result(session_id: $session_id, uid: $uid, is_admin: $is_admin, db: $db, name: $name, username: $username, partner_display_name: $partner_display_name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultImpl &&
            (identical(other.session_id, session_id) ||
                other.session_id == session_id) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.is_admin, is_admin) ||
                other.is_admin == is_admin) &&
            (identical(other.db, db) || other.db == db) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.partner_display_name, partner_display_name) ||
                other.partner_display_name == partner_display_name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, session_id, uid, is_admin, db,
      name, username, partner_display_name);

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
      {final String? session_id,
      final int? uid,
      final bool? is_admin,
      final String? db,
      final String? name,
      final String? username,
      final String? partner_display_name}) = _$ResultImpl;

  factory _Result.fromJson(Map<String, dynamic> json) = _$ResultImpl.fromJson;

  @override
  String? get session_id;
  @override
  int? get uid;
  @override
  bool? get is_admin;
  @override
  String? get db;
  @override
  String? get name;
  @override
  String? get username;
  @override
  String? get partner_display_name;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
