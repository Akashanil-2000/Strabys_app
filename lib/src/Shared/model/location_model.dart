import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_model.freezed.dart';
part 'location_model.g.dart';

@freezed
class LocationModel with _$LocationModel {
  const factory LocationModel({
    String? jsonrpc,
    Result? result,
  }) = _LocationModel;

  factory LocationModel.fromJson(Map<String, dynamic> json) => _$LocationModelFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    int? status,
    String? response,
    LocationDetails? location_details,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class LocationDetails with _$LocationDetails {
  const factory LocationDetails({
    int? id,
    String? name,
    String? quantity,
    String? status,
  }) = _LocationDetails;

  factory LocationDetails.fromJson(Map<String, dynamic> json) => _$LocationDetailsFromJson(json);
}
