import 'package:freezed_annotation/freezed_annotation.dart'; 

part 'submit_model.freezed.dart';
part 'submit_model.g.dart';

@freezed
class SubmitModel with _$SubmitModel {
	const factory SubmitModel({
String? jsonrpc,
// Id? id,
Result? result,
	}) = _SubmitModel;

	factory SubmitModel.fromJson(Map<String, dynamic> json) => _$SubmitModelFromJson(json);
}


@freezed
class Result with _$Result {
	const factory Result({
int? status,
List<SubmitData>? submit_data,
	}) = _Result;

	factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class SubmitData with _$SubmitData {
	const factory SubmitData({
int? location_id,
String? status,
	}) = _SubmitData;

	factory SubmitData.fromJson(Map<String, dynamic> json) => _$SubmitDataFromJson(json);
}