// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emergency_plus_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmergencyPlusModelImpl _$$EmergencyPlusModelImplFromJson(
        Map<String, dynamic> json) =>
    _$EmergencyPlusModelImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      location: json['location'] as String?,
      date: json['date'] as String?,
      secondaryPhone: json['secondary_phone'] as String?,
    );

Map<String, dynamic> _$$EmergencyPlusModelImplToJson(
        _$EmergencyPlusModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'location': instance.location,
      'date': instance.date,
      'secondary_phone': instance.secondaryPhone,
    };
