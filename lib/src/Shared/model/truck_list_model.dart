import 'package:freezed_annotation/freezed_annotation.dart';

part 'truck_list_model.freezed.dart';
part 'truck_list_model.g.dart';

@freezed
class TruckListModel with _$TruckListModel {
  const factory TruckListModel({
    String? jsonrpc,
    Result? result,
  }) = _TruckListModel;

  factory TruckListModel.fromJson(Map<String, dynamic> json) => _$TruckListModelFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    int? status,
    String? response,
    List<TruckTypeList>? truck_type_list,
    List<ContainerList>? container_list,
    List<TruckCapacityList>? truck_capacity_list,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class TruckTypeList with _$TruckTypeList {
  const factory TruckTypeList({
    int? id,
    String? name,
  }) = _TruckTypeList;

  factory TruckTypeList.fromJson(Map<String, dynamic> json) => _$TruckTypeListFromJson(json);
}

@freezed
class ContainerList with _$ContainerList {
  const factory ContainerList({
    int? id,
    String? name,
  }) = _ContainerList;

  factory ContainerList.fromJson(Map<String, dynamic> json) => _$ContainerListFromJson(json);
}

@freezed
class TruckCapacityList with _$TruckCapacityList {
  const factory TruckCapacityList({
    int? id,
    String? name,
  }) = _TruckCapacityList;

  factory TruckCapacityList.fromJson(Map<String, dynamic> json) => _$TruckCapacityListFromJson(json);
}
