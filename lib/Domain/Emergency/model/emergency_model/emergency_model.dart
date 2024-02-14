import 'package:freezed_annotation/freezed_annotation.dart';

part 'emergency_model.freezed.dart';
part 'emergency_model.g.dart';

@freezed
class EmergencyModel with _$EmergencyModel {
  factory EmergencyModel({
    String? id,
    String? name,
    String? location,
    String? phone,
    String? extra,
    String? level,
    String? call,
    String? date,
  }) = _EmergencyModel;

  factory EmergencyModel.fromJson(Map<String, dynamic> json) =>
      _$EmergencyModelFromJson(json);
}
