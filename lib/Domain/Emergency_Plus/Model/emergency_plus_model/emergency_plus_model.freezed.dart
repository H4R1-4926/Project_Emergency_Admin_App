// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'emergency_plus_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmergencyPlusModel _$EmergencyPlusModelFromJson(Map<String, dynamic> json) {
  return _EmergencyPlusModel.fromJson(json);
}

/// @nodoc
mixin _$EmergencyPlusModel {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'secondary_phone')
  String? get secondaryPhone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmergencyPlusModelCopyWith<EmergencyPlusModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmergencyPlusModelCopyWith<$Res> {
  factory $EmergencyPlusModelCopyWith(
          EmergencyPlusModel value, $Res Function(EmergencyPlusModel) then) =
      _$EmergencyPlusModelCopyWithImpl<$Res, EmergencyPlusModel>;
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? phone,
      String? location,
      String? date,
      @JsonKey(name: 'secondary_phone') String? secondaryPhone});
}

/// @nodoc
class _$EmergencyPlusModelCopyWithImpl<$Res, $Val extends EmergencyPlusModel>
    implements $EmergencyPlusModelCopyWith<$Res> {
  _$EmergencyPlusModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? phone = freezed,
    Object? location = freezed,
    Object? date = freezed,
    Object? secondaryPhone = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      secondaryPhone: freezed == secondaryPhone
          ? _value.secondaryPhone
          : secondaryPhone // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmergencyPlusModelImplCopyWith<$Res>
    implements $EmergencyPlusModelCopyWith<$Res> {
  factory _$$EmergencyPlusModelImplCopyWith(_$EmergencyPlusModelImpl value,
          $Res Function(_$EmergencyPlusModelImpl) then) =
      __$$EmergencyPlusModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? phone,
      String? location,
      String? date,
      @JsonKey(name: 'secondary_phone') String? secondaryPhone});
}

/// @nodoc
class __$$EmergencyPlusModelImplCopyWithImpl<$Res>
    extends _$EmergencyPlusModelCopyWithImpl<$Res, _$EmergencyPlusModelImpl>
    implements _$$EmergencyPlusModelImplCopyWith<$Res> {
  __$$EmergencyPlusModelImplCopyWithImpl(_$EmergencyPlusModelImpl _value,
      $Res Function(_$EmergencyPlusModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? phone = freezed,
    Object? location = freezed,
    Object? date = freezed,
    Object? secondaryPhone = freezed,
  }) {
    return _then(_$EmergencyPlusModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      secondaryPhone: freezed == secondaryPhone
          ? _value.secondaryPhone
          : secondaryPhone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmergencyPlusModelImpl implements _EmergencyPlusModel {
  _$EmergencyPlusModelImpl(
      {this.id,
      this.name,
      this.phone,
      this.location,
      this.date,
      @JsonKey(name: 'secondary_phone') this.secondaryPhone});

  factory _$EmergencyPlusModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmergencyPlusModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? phone;
  @override
  final String? location;
  @override
  final String? date;
  @override
  @JsonKey(name: 'secondary_phone')
  final String? secondaryPhone;

  @override
  String toString() {
    return 'EmergencyPlusModel(id: $id, name: $name, phone: $phone, location: $location, date: $date, secondaryPhone: $secondaryPhone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmergencyPlusModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.secondaryPhone, secondaryPhone) ||
                other.secondaryPhone == secondaryPhone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, phone, location, date, secondaryPhone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmergencyPlusModelImplCopyWith<_$EmergencyPlusModelImpl> get copyWith =>
      __$$EmergencyPlusModelImplCopyWithImpl<_$EmergencyPlusModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmergencyPlusModelImplToJson(
      this,
    );
  }
}

abstract class _EmergencyPlusModel implements EmergencyPlusModel {
  factory _EmergencyPlusModel(
          {final String? id,
          final String? name,
          final String? phone,
          final String? location,
          final String? date,
          @JsonKey(name: 'secondary_phone') final String? secondaryPhone}) =
      _$EmergencyPlusModelImpl;

  factory _EmergencyPlusModel.fromJson(Map<String, dynamic> json) =
      _$EmergencyPlusModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get phone;
  @override
  String? get location;
  @override
  String? get date;
  @override
  @JsonKey(name: 'secondary_phone')
  String? get secondaryPhone;
  @override
  @JsonKey(ignore: true)
  _$$EmergencyPlusModelImplCopyWith<_$EmergencyPlusModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
