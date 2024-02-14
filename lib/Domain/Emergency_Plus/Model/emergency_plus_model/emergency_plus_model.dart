// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'emergency_plus_model.freezed.dart';
part 'emergency_plus_model.g.dart';

@freezed
class EmergencyPlusModel with _$EmergencyPlusModel {
  factory EmergencyPlusModel({
    String? id,
    String? name,
    String? phone,
    String? location,
    String? date,
    @JsonKey(name: 'secondary_phone') String? secondaryPhone,
  }) = _EmergencyPlusModel;

  factory EmergencyPlusModel.fromJson(Map<String, dynamic> json) =>
      _$EmergencyPlusModelFromJson(json);
}
