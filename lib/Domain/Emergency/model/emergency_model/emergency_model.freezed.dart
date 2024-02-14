// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'emergency_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmergencyModel _$EmergencyModelFromJson(Map<String, dynamic> json) {
  return _EmergencyModel.fromJson(json);
}

/// @nodoc
mixin _$EmergencyModel {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get extra => throw _privateConstructorUsedError;
  String? get level => throw _privateConstructorUsedError;
  String? get call => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmergencyModelCopyWith<EmergencyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmergencyModelCopyWith<$Res> {
  factory $EmergencyModelCopyWith(
          EmergencyModel value, $Res Function(EmergencyModel) then) =
      _$EmergencyModelCopyWithImpl<$Res, EmergencyModel>;
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? location,
      String? phone,
      String? extra,
      String? level,
      String? call,
      String? date});
}

/// @nodoc
class _$EmergencyModelCopyWithImpl<$Res, $Val extends EmergencyModel>
    implements $EmergencyModelCopyWith<$Res> {
  _$EmergencyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? location = freezed,
    Object? phone = freezed,
    Object? extra = freezed,
    Object? level = freezed,
    Object? call = freezed,
    Object? date = freezed,
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
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      extra: freezed == extra
          ? _value.extra
          : extra // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
      call: freezed == call
          ? _value.call
          : call // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmergencyModelImplCopyWith<$Res>
    implements $EmergencyModelCopyWith<$Res> {
  factory _$$EmergencyModelImplCopyWith(_$EmergencyModelImpl value,
          $Res Function(_$EmergencyModelImpl) then) =
      __$$EmergencyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? location,
      String? phone,
      String? extra,
      String? level,
      String? call,
      String? date});
}

/// @nodoc
class __$$EmergencyModelImplCopyWithImpl<$Res>
    extends _$EmergencyModelCopyWithImpl<$Res, _$EmergencyModelImpl>
    implements _$$EmergencyModelImplCopyWith<$Res> {
  __$$EmergencyModelImplCopyWithImpl(
      _$EmergencyModelImpl _value, $Res Function(_$EmergencyModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? location = freezed,
    Object? phone = freezed,
    Object? extra = freezed,
    Object? level = freezed,
    Object? call = freezed,
    Object? date = freezed,
  }) {
    return _then(_$EmergencyModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      extra: freezed == extra
          ? _value.extra
          : extra // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
      call: freezed == call
          ? _value.call
          : call // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmergencyModelImpl implements _EmergencyModel {
  _$EmergencyModelImpl(
      {this.id,
      this.name,
      this.location,
      this.phone,
      this.extra,
      this.level,
      this.call,
      this.date});

  factory _$EmergencyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmergencyModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? location;
  @override
  final String? phone;
  @override
  final String? extra;
  @override
  final String? level;
  @override
  final String? call;
  @override
  final String? date;

  @override
  String toString() {
    return 'EmergencyModel(id: $id, name: $name, location: $location, phone: $phone, extra: $extra, level: $level, call: $call, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmergencyModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.extra, extra) || other.extra == extra) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.call, call) || other.call == call) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, location, phone, extra, level, call, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmergencyModelImplCopyWith<_$EmergencyModelImpl> get copyWith =>
      __$$EmergencyModelImplCopyWithImpl<_$EmergencyModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmergencyModelImplToJson(
      this,
    );
  }
}

abstract class _EmergencyModel implements EmergencyModel {
  factory _EmergencyModel(
      {final String? id,
      final String? name,
      final String? location,
      final String? phone,
      final String? extra,
      final String? level,
      final String? call,
      final String? date}) = _$EmergencyModelImpl;

  factory _EmergencyModel.fromJson(Map<String, dynamic> json) =
      _$EmergencyModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get location;
  @override
  String? get phone;
  @override
  String? get extra;
  @override
  String? get level;
  @override
  String? get call;
  @override
  String? get date;
  @override
  @JsonKey(ignore: true)
  _$$EmergencyModelImplCopyWith<_$EmergencyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
