// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'police_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PoliceModel _$PoliceModelFromJson(Map<String, dynamic> json) {
  return _PoliceModel.fromJson(json);
}

/// @nodoc
mixin _$PoliceModel {
  String? get id => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get extra => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PoliceModelCopyWith<PoliceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PoliceModelCopyWith<$Res> {
  factory $PoliceModelCopyWith(
          PoliceModel value, $Res Function(PoliceModel) then) =
      _$PoliceModelCopyWithImpl<$Res, PoliceModel>;
  @useResult
  $Res call(
      {String? id,
      String? date,
      String? name,
      String? location,
      String? phone,
      String? extra});
}

/// @nodoc
class _$PoliceModelCopyWithImpl<$Res, $Val extends PoliceModel>
    implements $PoliceModelCopyWith<$Res> {
  _$PoliceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? date = freezed,
    Object? name = freezed,
    Object? location = freezed,
    Object? phone = freezed,
    Object? extra = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PoliceModelImplCopyWith<$Res>
    implements $PoliceModelCopyWith<$Res> {
  factory _$$PoliceModelImplCopyWith(
          _$PoliceModelImpl value, $Res Function(_$PoliceModelImpl) then) =
      __$$PoliceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? date,
      String? name,
      String? location,
      String? phone,
      String? extra});
}

/// @nodoc
class __$$PoliceModelImplCopyWithImpl<$Res>
    extends _$PoliceModelCopyWithImpl<$Res, _$PoliceModelImpl>
    implements _$$PoliceModelImplCopyWith<$Res> {
  __$$PoliceModelImplCopyWithImpl(
      _$PoliceModelImpl _value, $Res Function(_$PoliceModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? date = freezed,
    Object? name = freezed,
    Object? location = freezed,
    Object? phone = freezed,
    Object? extra = freezed,
  }) {
    return _then(_$PoliceModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PoliceModelImpl implements _PoliceModel {
  _$PoliceModelImpl(
      {this.id, this.date, this.name, this.location, this.phone, this.extra});

  factory _$PoliceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PoliceModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String? date;
  @override
  final String? name;
  @override
  final String? location;
  @override
  final String? phone;
  @override
  final String? extra;

  @override
  String toString() {
    return 'PoliceModel(id: $id, date: $date, name: $name, location: $location, phone: $phone, extra: $extra)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PoliceModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.extra, extra) || other.extra == extra));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, date, name, location, phone, extra);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PoliceModelImplCopyWith<_$PoliceModelImpl> get copyWith =>
      __$$PoliceModelImplCopyWithImpl<_$PoliceModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PoliceModelImplToJson(
      this,
    );
  }
}

abstract class _PoliceModel implements PoliceModel {
  factory _PoliceModel(
      {final String? id,
      final String? date,
      final String? name,
      final String? location,
      final String? phone,
      final String? extra}) = _$PoliceModelImpl;

  factory _PoliceModel.fromJson(Map<String, dynamic> json) =
      _$PoliceModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get date;
  @override
  String? get name;
  @override
  String? get location;
  @override
  String? get phone;
  @override
  String? get extra;
  @override
  @JsonKey(ignore: true)
  _$$PoliceModelImplCopyWith<_$PoliceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
