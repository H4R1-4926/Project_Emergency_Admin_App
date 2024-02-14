// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'completed_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompletedDataModelImpl _$$CompletedDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CompletedDataModelImpl(
      completed: json['completed'] as String?,
      date: json['date'] as String?,
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      secondaryPhone: json['secondary_phone'] as String?,
      email: json['email'] as String?,
      location: json['location'] as String?,
      reason: json['reason'] as String?,
      storedDate: json['storedDate'] as String?,
    );

Map<String, dynamic> _$$CompletedDataModelImplToJson(
        _$CompletedDataModelImpl instance) =>
    <String, dynamic>{
      'completed': instance.completed,
      'date': instance.date,
      'name': instance.name,
      'phone': instance.phone,
      'secondary_phone': instance.secondaryPhone,
      'email': instance.email,
      'location': instance.location,
      'reason': instance.reason,
      'storedDate': instance.storedDate,
    };
