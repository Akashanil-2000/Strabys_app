import 'package:freezed_annotation/freezed_annotation.dart';

part 'warehouse_scanned_data_list_model.freezed.dart';
part 'warehouse_scanned_data_list_model.g.dart';

@freezed
class ScannedDataListModel with _$ScannedDataListModel {
  const factory ScannedDataListModel({
    String? jsonrpc,
    Result? result,
  }) = _ScannedDataListModel;

  factory ScannedDataListModel.fromJson(Map<String, dynamic> json) => _$ScannedDataListModelFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    int? status,
    String? response,
    List<ScannedDataList>? scanned_data_list,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class ScannedDataList with _$ScannedDataList {
  const factory ScannedDataList({
    int? location_id,
    String? location_name,
    String? location_barcode,
    int? lot_id,
    String? lot_name,
    double? quantity,
  }) = _ScannedDataList;

  factory ScannedDataList.fromJson(Map<String, dynamic> json) => _$ScannedDataListFromJson(json);
}
