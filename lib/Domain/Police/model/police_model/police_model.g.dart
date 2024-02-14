// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'police_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PoliceModelImpl _$$PoliceModelImplFromJson(Map<String, dynamic> json) =>
    _$PoliceModelImpl(
      id: json['id'] as String?,
      date: json['date'] as String?,
      name: json['name'] as String?,
      location: json['location'] as String?,
      phone: json['phone'] as String?,
      extra: json['extra'] as String?,
    );

Map<String, dynamic> _$$PoliceModelImplToJson(_$PoliceModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date,
      'name': instance.name,
      'location': instance.location,
      'phone': instance.phone,
      'extra': instance.extra,
    };
