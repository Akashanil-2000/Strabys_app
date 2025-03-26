// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'status_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StatusModel _$StatusModelFromJson(Map<String, dynamic> json) {
  return _StatusModel.fromJson(json);
}

/// @nodoc
mixin _$StatusModel {
  String? get jsonrpc => throw _privateConstructorUsedError;
  dynamic? get id => throw _privateConstructorUsedError;
  Result? get result => throw _privateConstructorUsedError;

  /// Serializes this StatusModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StatusModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StatusModelCopyWith<StatusModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusModelCopyWith<$Res> {
  factory $StatusModelCopyWith(
          StatusModel value, $Res Function(StatusModel) then) =
      _$StatusModelCopyWithImpl<$Res, StatusModel>;
  @useResult
  $Res call({String? jsonrpc, dynamic? id, Result? result});

  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$StatusModelCopyWithImpl<$Res, $Val extends StatusModel>
    implements $StatusModelCopyWith<$Res> {
  _$StatusModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StatusModel
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
              as dynamic?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Result?,
    ) as $Val);
  }

  /// Create a copy of StatusModel
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
abstract class _$$StatusModelImplCopyWith<$Res>
    implements $StatusModelCopyWith<$Res> {
  factory _$$StatusModelImplCopyWith(
          _$StatusModelImpl value, $Res Function(_$StatusModelImpl) then) =
      __$$StatusModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? jsonrpc, dynamic? id, Result? result});

  @override
  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$StatusModelImplCopyWithImpl<$Res>
    extends _$StatusModelCopyWithImpl<$Res, _$StatusModelImpl>
    implements _$$StatusModelImplCopyWith<$Res> {
  __$$StatusModelImplCopyWithImpl(
      _$StatusModelImpl _value, $Res Function(_$StatusModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of StatusModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jsonrpc = freezed,
    Object? id = freezed,
    Object? result = freezed,
  }) {
    return _then(_$StatusModelImpl(
      jsonrpc: freezed == jsonrpc
          ? _value.jsonrpc
          : jsonrpc // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Result?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatusModelImpl implements _StatusModel {
  const _$StatusModelImpl({this.jsonrpc, this.id, this.result});

  factory _$StatusModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatusModelImplFromJson(json);

  @override
  final String? jsonrpc;
  @override
  final dynamic? id;
  @override
  final Result? result;

  @override
  String toString() {
    return 'StatusModel(jsonrpc: $jsonrpc, id: $id, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatusModelImpl &&
            (identical(other.jsonrpc, jsonrpc) || other.jsonrpc == jsonrpc) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, jsonrpc, const DeepCollectionEquality().hash(id), result);

  /// Create a copy of StatusModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatusModelImplCopyWith<_$StatusModelImpl> get copyWith =>
      __$$StatusModelImplCopyWithImpl<_$StatusModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatusModelImplToJson(
      this,
    );
  }
}

abstract class _StatusModel implements StatusModel {
  const factory _StatusModel(
      {final String? jsonrpc,
      final dynamic? id,
      final Result? result}) = _$StatusModelImpl;

  factory _StatusModel.fromJson(Map<String, dynamic> json) =
      _$StatusModelImpl.fromJson;

  @override
  String? get jsonrpc;
  @override
  dynamic? get id;
  @override
  Result? get result;

  /// Create a copy of StatusModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatusModelImplCopyWith<_$StatusModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  int? get status => throw _privateConstructorUsedError;
  String? get response => throw _privateConstructorUsedError;
  Message? get message => throw _privateConstructorUsedError;

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
  $Res call({int? status, String? response, Message? message});

  $MessageCopyWith<$Res>? get message;
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
    Object? message = freezed,
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
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message?,
    ) as $Val);
  }

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MessageCopyWith<$Res>? get message {
    if (_value.message == null) {
      return null;
    }

    return $MessageCopyWith<$Res>(_value.message!, (value) {
      return _then(_value.copyWith(message: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResultImplCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$ResultImplCopyWith(
          _$ResultImpl value, $Res Function(_$ResultImpl) then) =
      __$$ResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? response, Message? message});

  @override
  $MessageCopyWith<$Res>? get message;
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
    Object? message = freezed,
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
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultImpl implements _Result {
  const _$ResultImpl({this.status, this.response, this.message});

  factory _$ResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultImplFromJson(json);

  @override
  final int? status;
  @override
  final String? response;
  @override
  final Message? message;

  @override
  String toString() {
    return 'Result(status: $status, response: $response, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, response, message);

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
      final Message? message}) = _$ResultImpl;

  factory _Result.fromJson(Map<String, dynamic> json) = _$ResultImpl.fromJson;

  @override
  int? get status;
  @override
  String? get response;
  @override
  Message? get message;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Message _$MessageFromJson(Map<String, dynamic> json) {
  return _Message.fromJson(json);
}

/// @nodoc
mixin _$Message {
  String? get state => throw _privateConstructorUsedError;
  String? get project => throw _privateConstructorUsedError;
  String? get panel_name => throw _privateConstructorUsedError;
  String? get work_sheet => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get qc_mould => throw _privateConstructorUsedError;
  String? get qc_finish => throw _privateConstructorUsedError;
  int? get dimension_height1 => throw _privateConstructorUsedError;
  int? get dimension_height2 => throw _privateConstructorUsedError;
  int? get dimension_width1 => throw _privateConstructorUsedError;
  int? get dimension_width2 => throw _privateConstructorUsedError;
  String? get delivery_type => throw _privateConstructorUsedError;
  String? get pallet_number => throw _privateConstructorUsedError;
  String? get shipment_number => throw _privateConstructorUsedError;
  String? get container_number => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;

  /// Serializes this Message to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageCopyWith<Message> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) then) =
      _$MessageCopyWithImpl<$Res, Message>;
  @useResult
  $Res call(
      {String? state,
      String? project,
      String? panel_name,
      String? work_sheet,
      String? message,
      String? qc_mould,
      String? qc_finish,
      int? dimension_height1,
      int? dimension_height2,
      int? dimension_width1,
      int? dimension_width2,
      String? delivery_type,
      String? pallet_number,
      String? shipment_number,
      String? container_number,
      String? name,
      String? code});
}

/// @nodoc
class _$MessageCopyWithImpl<$Res, $Val extends Message>
    implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = freezed,
    Object? project = freezed,
    Object? panel_name = freezed,
    Object? work_sheet = freezed,
    Object? message = freezed,
    Object? qc_mould = freezed,
    Object? qc_finish = freezed,
    Object? dimension_height1 = freezed,
    Object? dimension_height2 = freezed,
    Object? dimension_width1 = freezed,
    Object? dimension_width2 = freezed,
    Object? delivery_type = freezed,
    Object? pallet_number = freezed,
    Object? shipment_number = freezed,
    Object? container_number = freezed,
    Object? name = freezed,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      project: freezed == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as String?,
      panel_name: freezed == panel_name
          ? _value.panel_name
          : panel_name // ignore: cast_nullable_to_non_nullable
              as String?,
      work_sheet: freezed == work_sheet
          ? _value.work_sheet
          : work_sheet // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      qc_mould: freezed == qc_mould
          ? _value.qc_mould
          : qc_mould // ignore: cast_nullable_to_non_nullable
              as String?,
      qc_finish: freezed == qc_finish
          ? _value.qc_finish
          : qc_finish // ignore: cast_nullable_to_non_nullable
              as String?,
      dimension_height1: freezed == dimension_height1
          ? _value.dimension_height1
          : dimension_height1 // ignore: cast_nullable_to_non_nullable
              as int?,
      dimension_height2: freezed == dimension_height2
          ? _value.dimension_height2
          : dimension_height2 // ignore: cast_nullable_to_non_nullable
              as int?,
      dimension_width1: freezed == dimension_width1
          ? _value.dimension_width1
          : dimension_width1 // ignore: cast_nullable_to_non_nullable
              as int?,
      dimension_width2: freezed == dimension_width2
          ? _value.dimension_width2
          : dimension_width2 // ignore: cast_nullable_to_non_nullable
              as int?,
      delivery_type: freezed == delivery_type
          ? _value.delivery_type
          : delivery_type // ignore: cast_nullable_to_non_nullable
              as String?,
      pallet_number: freezed == pallet_number
          ? _value.pallet_number
          : pallet_number // ignore: cast_nullable_to_non_nullable
              as String?,
      shipment_number: freezed == shipment_number
          ? _value.shipment_number
          : shipment_number // ignore: cast_nullable_to_non_nullable
              as String?,
      container_number: freezed == container_number
          ? _value.container_number
          : container_number // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageImplCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$$MessageImplCopyWith(
          _$MessageImpl value, $Res Function(_$MessageImpl) then) =
      __$$MessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? state,
      String? project,
      String? panel_name,
      String? work_sheet,
      String? message,
      String? qc_mould,
      String? qc_finish,
      int? dimension_height1,
      int? dimension_height2,
      int? dimension_width1,
      int? dimension_width2,
      String? delivery_type,
      String? pallet_number,
      String? shipment_number,
      String? container_number,
      String? name,
      String? code});
}

/// @nodoc
class __$$MessageImplCopyWithImpl<$Res>
    extends _$MessageCopyWithImpl<$Res, _$MessageImpl>
    implements _$$MessageImplCopyWith<$Res> {
  __$$MessageImplCopyWithImpl(
      _$MessageImpl _value, $Res Function(_$MessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = freezed,
    Object? project = freezed,
    Object? panel_name = freezed,
    Object? work_sheet = freezed,
    Object? message = freezed,
    Object? qc_mould = freezed,
    Object? qc_finish = freezed,
    Object? dimension_height1 = freezed,
    Object? dimension_height2 = freezed,
    Object? dimension_width1 = freezed,
    Object? dimension_width2 = freezed,
    Object? delivery_type = freezed,
    Object? pallet_number = freezed,
    Object? shipment_number = freezed,
    Object? container_number = freezed,
    Object? name = freezed,
    Object? code = freezed,
  }) {
    return _then(_$MessageImpl(
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      project: freezed == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as String?,
      panel_name: freezed == panel_name
          ? _value.panel_name
          : panel_name // ignore: cast_nullable_to_non_nullable
              as String?,
      work_sheet: freezed == work_sheet
          ? _value.work_sheet
          : work_sheet // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      qc_mould: freezed == qc_mould
          ? _value.qc_mould
          : qc_mould // ignore: cast_nullable_to_non_nullable
              as String?,
      qc_finish: freezed == qc_finish
          ? _value.qc_finish
          : qc_finish // ignore: cast_nullable_to_non_nullable
              as String?,
      dimension_height1: freezed == dimension_height1
          ? _value.dimension_height1
          : dimension_height1 // ignore: cast_nullable_to_non_nullable
              as int?,
      dimension_height2: freezed == dimension_height2
          ? _value.dimension_height2
          : dimension_height2 // ignore: cast_nullable_to_non_nullable
              as int?,
      dimension_width1: freezed == dimension_width1
          ? _value.dimension_width1
          : dimension_width1 // ignore: cast_nullable_to_non_nullable
              as int?,
      dimension_width2: freezed == dimension_width2
          ? _value.dimension_width2
          : dimension_width2 // ignore: cast_nullable_to_non_nullable
              as int?,
      delivery_type: freezed == delivery_type
          ? _value.delivery_type
          : delivery_type // ignore: cast_nullable_to_non_nullable
              as String?,
      pallet_number: freezed == pallet_number
          ? _value.pallet_number
          : pallet_number // ignore: cast_nullable_to_non_nullable
              as String?,
      shipment_number: freezed == shipment_number
          ? _value.shipment_number
          : shipment_number // ignore: cast_nullable_to_non_nullable
              as String?,
      container_number: freezed == container_number
          ? _value.container_number
          : container_number // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageImpl implements _Message {
  const _$MessageImpl(
      {this.state,
      this.project,
      this.panel_name,
      this.work_sheet,
      this.message,
      this.qc_mould,
      this.qc_finish,
      this.dimension_height1,
      this.dimension_height2,
      this.dimension_width1,
      this.dimension_width2,
      this.delivery_type,
      this.pallet_number,
      this.shipment_number,
      this.container_number,
      this.name,
      this.code});

  factory _$MessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageImplFromJson(json);

  @override
  final String? state;
  @override
  final String? project;
  @override
  final String? panel_name;
  @override
  final String? work_sheet;
  @override
  final String? message;
  @override
  final String? qc_mould;
  @override
  final String? qc_finish;
  @override
  final int? dimension_height1;
  @override
  final int? dimension_height2;
  @override
  final int? dimension_width1;
  @override
  final int? dimension_width2;
  @override
  final String? delivery_type;
  @override
  final String? pallet_number;
  @override
  final String? shipment_number;
  @override
  final String? container_number;
  @override
  final String? name;
  @override
  final String? code;

  @override
  String toString() {
    return 'Message(state: $state, project: $project, panel_name: $panel_name, work_sheet: $work_sheet, message: $message, qc_mould: $qc_mould, qc_finish: $qc_finish, dimension_height1: $dimension_height1, dimension_height2: $dimension_height2, dimension_width1: $dimension_width1, dimension_width2: $dimension_width2, delivery_type: $delivery_type, pallet_number: $pallet_number, shipment_number: $shipment_number, container_number: $container_number, name: $name, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.project, project) || other.project == project) &&
            (identical(other.panel_name, panel_name) ||
                other.panel_name == panel_name) &&
            (identical(other.work_sheet, work_sheet) ||
                other.work_sheet == work_sheet) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.qc_mould, qc_mould) ||
                other.qc_mould == qc_mould) &&
            (identical(other.qc_finish, qc_finish) ||
                other.qc_finish == qc_finish) &&
            (identical(other.dimension_height1, dimension_height1) ||
                other.dimension_height1 == dimension_height1) &&
            (identical(other.dimension_height2, dimension_height2) ||
                other.dimension_height2 == dimension_height2) &&
            (identical(other.dimension_width1, dimension_width1) ||
                other.dimension_width1 == dimension_width1) &&
            (identical(other.dimension_width2, dimension_width2) ||
                other.dimension_width2 == dimension_width2) &&
            (identical(other.delivery_type, delivery_type) ||
                other.delivery_type == delivery_type) &&
            (identical(other.pallet_number, pallet_number) ||
                other.pallet_number == pallet_number) &&
            (identical(other.shipment_number, shipment_number) ||
                other.shipment_number == shipment_number) &&
            (identical(other.container_number, container_number) ||
                other.container_number == container_number) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      state,
      project,
      panel_name,
      work_sheet,
      message,
      qc_mould,
      qc_finish,
      dimension_height1,
      dimension_height2,
      dimension_width1,
      dimension_width2,
      delivery_type,
      pallet_number,
      shipment_number,
      container_number,
      name,
      code);

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageImplCopyWith<_$MessageImpl> get copyWith =>
      __$$MessageImplCopyWithImpl<_$MessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageImplToJson(
      this,
    );
  }
}

abstract class _Message implements Message {
  const factory _Message(
      {final String? state,
      final String? project,
      final String? panel_name,
      final String? work_sheet,
      final String? message,
      final String? qc_mould,
      final String? qc_finish,
      final int? dimension_height1,
      final int? dimension_height2,
      final int? dimension_width1,
      final int? dimension_width2,
      final String? delivery_type,
      final String? pallet_number,
      final String? shipment_number,
      final String? container_number,
      final String? name,
      final String? code}) = _$MessageImpl;

  factory _Message.fromJson(Map<String, dynamic> json) = _$MessageImpl.fromJson;

  @override
  String? get state;
  @override
  String? get project;
  @override
  String? get panel_name;
  @override
  String? get work_sheet;
  @override
  String? get message;
  @override
  String? get qc_mould;
  @override
  String? get qc_finish;
  @override
  int? get dimension_height1;
  @override
  int? get dimension_height2;
  @override
  int? get dimension_width1;
  @override
  int? get dimension_width2;
  @override
  String? get delivery_type;
  @override
  String? get pallet_number;
  @override
  String? get shipment_number;
  @override
  String? get container_number;
  @override
  String? get name;
  @override
  String? get code;

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageImplCopyWith<_$MessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
