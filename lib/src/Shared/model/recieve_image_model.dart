import 'package:freezed_annotation/freezed_annotation.dart';

part 'recieve_image_model.freezed.dart';
part 'recieve_image_model.g.dart';

@freezed
class RecieveImageModel with _$RecieveImageModel {
  const factory RecieveImageModel({
    String? jsonrpc,
// Id? id,
    Result? result,
  }) = _RecieveImageModel;

  factory RecieveImageModel.fromJson(Map<String, dynamic> json) => _$RecieveImageModelFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    int? status,
    String? response,
    List<ImageIds>? image_ids,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class ImageIds with _$ImageIds {
  const factory ImageIds({
    String? image,
    String? name,
  }) = _ImageIds;

  factory ImageIds.fromJson(Map<String, dynamic> json) => _$ImageIdsFromJson(json);
}
