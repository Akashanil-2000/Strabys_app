import 'package:freezed_annotation/freezed_annotation.dart';

part 'all_truck_list_model.freezed.dart';
part 'all_truck_list_model.g.dart';

@freezed
class AllTruckListModel with _$AllTruckListModel {
  const factory AllTruckListModel({
    String? jsonrpc,
    Result? result,
  }) = _AllTruckListModel;

  factory AllTruckListModel.fromJson(Map<String, dynamic> json) => _$AllTruckListModelFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    int? status,
    String? response,
    List<TruckIdsList>? truck_ids_list,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class TruckIdsList with _$TruckIdsList {
  const factory TruckIdsList({
    int? id,
    String? truck_name,
    String? truck_type_name,
    String? gate_in_date,
  }) = _TruckIdsList;

  factory TruckIdsList.fromJson(Map<String, dynamic> json) => _$TruckIdsListFromJson(json);
}
