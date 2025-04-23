import 'package:freezed_annotation/freezed_annotation.dart';

part 'contract_list_model.freezed.dart';
part 'contract_list_model.g.dart';

@freezed
class ContractListModel with _$ContractListModel {
  const factory ContractListModel({
    required String jsonrpc,
    required ContractResult result,
  }) = _ContractListModel;

  factory ContractListModel.fromJson(Map<String, dynamic> json) =>
      _$ContractListModelFromJson(json);
}

@freezed
class ContractResult with _$ContractResult {
  const factory ContractResult({
    required int status,
    required String response,
    required List<ContractItem> contract_data,
  }) = _ContractResult;

  factory ContractResult.fromJson(Map<String, dynamic> json) =>
      _$ContractResultFromJson(json);
}

@freezed
class ContractItem with _$ContractItem {
  const factory ContractItem({
    required int id,
    required String name,
  }) = _ContractItem;

  factory ContractItem.fromJson(Map<String, dynamic> json) =>
      _$ContractItemFromJson(json);
}