// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ambulance_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AmbulanceModelImpl _$$AmbulanceModelImplFromJson(Map<String, dynamic> json) =>
    _$AmbulanceModelImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      location: json['location'] as String?,
      phone: json['phone'] as String?,
      extra: json['extra'] as String?,
      date: json['date'] as String?,
    );

Map<String, dynamic> _$$AmbulanceModelImplToJson(
        _$AmbulanceModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'location': instance.location,
      'phone': instance.phone,
      'extra': instance.extra,
      'date': instance.date,
    };
