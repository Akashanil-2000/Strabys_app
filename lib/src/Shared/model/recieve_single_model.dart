import 'package:freezed_annotation/freezed_annotation.dart';

part 'recieve_single_model.freezed.dart';
part 'recieve_single_model.g.dart';

@freezed
class RecieveSingleModel with _$RecieveSingleModel {
  const factory RecieveSingleModel({
    String? jsonrpc,
// Id? id,
    Result? result,
  }) = _RecieveSingleModel;

  factory RecieveSingleModel.fromJson(Map<String, dynamic> json) => _$RecieveSingleModelFromJson(json);
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
    int? picking_id,
    String? picking_name,
    String? grn_name,
    int? grn_id,
    String? status,
    bool? truck_show,
  }) = _PackingData;

  factory PackingData.fromJson(Map<String, dynamic> json) => _$PackingDataFromJson(json);
}
