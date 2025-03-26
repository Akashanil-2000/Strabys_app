// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recieve_image_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RecieveImageModel _$RecieveImageModelFromJson(Map<String, dynamic> json) {
  return _RecieveImageModel.fromJson(json);
}

/// @nodoc
mixin _$RecieveImageModel {
  String? get jsonrpc => throw _privateConstructorUsedError; // Id? id,
  Result? get result => throw _privateConstructorUsedError;

  /// Serializes this RecieveImageModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RecieveImageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecieveImageModelCopyWith<RecieveImageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecieveImageModelCopyWith<$Res> {
  factory $RecieveImageModelCopyWith(
          RecieveImageModel value, $Res Function(RecieveImageModel) then) =
      _$RecieveImageModelCopyWithImpl<$Res, RecieveImageModel>;
  @useResult
  $Res call({String? jsonrpc, Result? result});

  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$RecieveImageModelCopyWithImpl<$Res, $Val extends RecieveImageModel>
    implements $RecieveImageModelCopyWith<$Res> {
  _$RecieveImageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecieveImageModel
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

  /// Create a copy of RecieveImageModel
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
abstract class _$$RecieveImageModelImplCopyWith<$Res>
    implements $RecieveImageModelCopyWith<$Res> {
  factory _$$RecieveImageModelImplCopyWith(_$RecieveImageModelImpl value,
          $Res Function(_$RecieveImageModelImpl) then) =
      __$$RecieveImageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? jsonrpc, Result? result});

  @override
  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$RecieveImageModelImplCopyWithImpl<$Res>
    extends _$RecieveImageModelCopyWithImpl<$Res, _$RecieveImageModelImpl>
    implements _$$RecieveImageModelImplCopyWith<$Res> {
  __$$RecieveImageModelImplCopyWithImpl(_$RecieveImageModelImpl _value,
      $Res Function(_$RecieveImageModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecieveImageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jsonrpc = freezed,
    Object? result = freezed,
  }) {
    return _then(_$RecieveImageModelImpl(
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
class _$RecieveImageModelImpl implements _RecieveImageModel {
  const _$RecieveImageModelImpl({this.jsonrpc, this.result});

  factory _$RecieveImageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecieveImageModelImplFromJson(json);

  @override
  final String? jsonrpc;
// Id? id,
  @override
  final Result? result;

  @override
  String toString() {
    return 'RecieveImageModel(jsonrpc: $jsonrpc, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecieveImageModelImpl &&
            (identical(other.jsonrpc, jsonrpc) || other.jsonrpc == jsonrpc) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, jsonrpc, result);

  /// Create a copy of RecieveImageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecieveImageModelImplCopyWith<_$RecieveImageModelImpl> get copyWith =>
      __$$RecieveImageModelImplCopyWithImpl<_$RecieveImageModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecieveImageModelImplToJson(
      this,
    );
  }
}

abstract class _RecieveImageModel implements RecieveImageModel {
  const factory _RecieveImageModel(
      {final String? jsonrpc, final Result? result}) = _$RecieveImageModelImpl;

  factory _RecieveImageModel.fromJson(Map<String, dynamic> json) =
      _$RecieveImageModelImpl.fromJson;

  @override
  String? get jsonrpc; // Id? id,
  @override
  Result? get result;

  /// Create a copy of RecieveImageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecieveImageModelImplCopyWith<_$RecieveImageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  int? get status => throw _privateConstructorUsedError;
  String? get response => throw _privateConstructorUsedError;
  List<ImageIds>? get image_ids => throw _privateConstructorUsedError;

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
  $Res call({int? status, String? response, List<ImageIds>? image_ids});
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
    Object? image_ids = freezed,
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
      image_ids: freezed == image_ids
          ? _value.image_ids
          : image_ids // ignore: cast_nullable_to_non_nullable
              as List<ImageIds>?,
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
  $Res call({int? status, String? response, List<ImageIds>? image_ids});
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
    Object? image_ids = freezed,
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
      image_ids: freezed == image_ids
          ? _value._image_ids
          : image_ids // ignore: cast_nullable_to_non_nullable
              as List<ImageIds>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultImpl implements _Result {
  const _$ResultImpl(
      {this.status, this.response, final List<ImageIds>? image_ids})
      : _image_ids = image_ids;

  factory _$ResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultImplFromJson(json);

  @override
  final int? status;
  @override
  final String? response;
  final List<ImageIds>? _image_ids;
  @override
  List<ImageIds>? get image_ids {
    final value = _image_ids;
    if (value == null) return null;
    if (_image_ids is EqualUnmodifiableListView) return _image_ids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Result(status: $status, response: $response, image_ids: $image_ids)';
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
                .equals(other._image_ids, _image_ids));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, response,
      const DeepCollectionEquality().hash(_image_ids));

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
      final List<ImageIds>? image_ids}) = _$ResultImpl;

  factory _Result.fromJson(Map<String, dynamic> json) = _$ResultImpl.fromJson;

  @override
  int? get status;
  @override
  String? get response;
  @override
  List<ImageIds>? get image_ids;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ImageIds _$ImageIdsFromJson(Map<String, dynamic> json) {
  return _ImageIds.fromJson(json);
}

/// @nodoc
mixin _$ImageIds {
  String? get image => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this ImageIds to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ImageIds
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImageIdsCopyWith<ImageIds> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageIdsCopyWith<$Res> {
  factory $ImageIdsCopyWith(ImageIds value, $Res Function(ImageIds) then) =
      _$ImageIdsCopyWithImpl<$Res, ImageIds>;
  @useResult
  $Res call({String? image, String? name});
}

/// @nodoc
class _$ImageIdsCopyWithImpl<$Res, $Val extends ImageIds>
    implements $ImageIdsCopyWith<$Res> {
  _$ImageIdsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImageIds
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageIdsImplCopyWith<$Res>
    implements $ImageIdsCopyWith<$Res> {
  factory _$$ImageIdsImplCopyWith(
          _$ImageIdsImpl value, $Res Function(_$ImageIdsImpl) then) =
      __$$ImageIdsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? image, String? name});
}

/// @nodoc
class __$$ImageIdsImplCopyWithImpl<$Res>
    extends _$ImageIdsCopyWithImpl<$Res, _$ImageIdsImpl>
    implements _$$ImageIdsImplCopyWith<$Res> {
  __$$ImageIdsImplCopyWithImpl(
      _$ImageIdsImpl _value, $Res Function(_$ImageIdsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImageIds
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? name = freezed,
  }) {
    return _then(_$ImageIdsImpl(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageIdsImpl implements _ImageIds {
  const _$ImageIdsImpl({this.image, this.name});

  factory _$ImageIdsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageIdsImplFromJson(json);

  @override
  final String? image;
  @override
  final String? name;

  @override
  String toString() {
    return 'ImageIds(image: $image, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageIdsImpl &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, image, name);

  /// Create a copy of ImageIds
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageIdsImplCopyWith<_$ImageIdsImpl> get copyWith =>
      __$$ImageIdsImplCopyWithImpl<_$ImageIdsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageIdsImplToJson(
      this,
    );
  }
}

abstract class _ImageIds implements ImageIds {
  const factory _ImageIds({final String? image, final String? name}) =
      _$ImageIdsImpl;

  factory _ImageIds.fromJson(Map<String, dynamic> json) =
      _$ImageIdsImpl.fromJson;

  @override
  String? get image;
  @override
  String? get name;

  /// Create a copy of ImageIds
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageIdsImplCopyWith<_$ImageIdsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
