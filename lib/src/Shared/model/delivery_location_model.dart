import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_location_model.freezed.dart';
part 'delivery_location_model.g.dart';

@freezed
class DeliveryLocationModel with _$DeliveryLocationModel {
  const factory DeliveryLocationModel({
    String? jsonrpc,
// Id? id,
    Result? result,
  }) = _DeliveryLocationModel;

  factory DeliveryLocationModel.fromJson(Map<String, dynamic> json) => _$DeliveryLocationModelFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    int? status,
    List<LocationDetailsList>? location_details,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class LocationDetailsList with _$LocationDetailsList {
  const factory LocationDetailsList({
    int? location_id,
    String? location_name,
    String? Location_barcode,
    double? total_volume,
    double? total_weight,
    int? total_qty,
    int? completed_qty,
  }) = _LocationDetailsList;

  factory LocationDetailsList.fromJson(Map<String, dynamic> json) => _$LocationDetailsListFromJson(json);
}
