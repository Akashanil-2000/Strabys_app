import 'package:freezed_annotation/freezed_annotation.dart';

part 'scanned_location_model.freezed.dart';
part 'scanned_location_model.g.dart';

@freezed
class ScannedLocationModel with _$ScannedLocationModel {
  const factory ScannedLocationModel({
    String? jsonrpc,
    Result? result,
  }) = _ScannedLocationModel;

  factory ScannedLocationModel.fromJson(Map<String, dynamic> json) => _$ScannedLocationModelFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    int? status,
    List<PackingData>? packing_data,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class PackingData with _$PackingData {
  const factory PackingData({
    int? location_id,
    String? location_name,
    double? qty,
  }) = _PackingData;

  factory PackingData.fromJson(Map<String, dynamic> json) => _$PackingDataFromJson(json);
}
