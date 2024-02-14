// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'completed_data_model.freezed.dart';
part 'completed_data_model.g.dart';

@freezed
class CompletedDataModel with _$CompletedDataModel {
  factory CompletedDataModel({
    String? completed,
    String? date,
    String? name,
    String? phone,
    @JsonKey(name: 'secondary_phone') String? secondaryPhone,
    String? email,
    String? location,
    String? reason,
    String? storedDate,
  }) = _CompletedDataModel;

  factory CompletedDataModel.fromJson(Map<String, dynamic> json) =>
      _$CompletedDataModelFromJson(json);
}
