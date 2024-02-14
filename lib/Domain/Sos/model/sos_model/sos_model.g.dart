// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sos_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SosModelImpl _$$SosModelImplFromJson(Map<String, dynamic> json) =>
    _$SosModelImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      location: json['location'] as String?,
      phone: json['phone'] as String?,
      extra: json['extra'] as String?,
      date: json['date'] as String?,
      call: json['call'] as String?,
    );

Map<String, dynamic> _$$SosModelImplToJson(_$SosModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'location': instance.location,
      'phone': instance.phone,
      'extra': instance.extra,
      'date': instance.date,
      'call': instance.call,
    };
