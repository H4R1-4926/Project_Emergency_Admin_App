// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sos_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SosModel _$SosModelFromJson(Map<String, dynamic> json) {
  return _SosModel.fromJson(json);
}

/// @nodoc
mixin _$SosModel {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get extra => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  String? get call => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SosModelCopyWith<SosModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SosModelCopyWith<$Res> {
  factory $SosModelCopyWith(SosModel value, $Res Function(SosModel) then) =
      _$SosModelCopyWithImpl<$Res, SosModel>;
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? location,
      String? phone,
      String? extra,
      String? date,
      String? call});
}

/// @nodoc
class _$SosModelCopyWithImpl<$Res, $Val extends SosModel>
    implements $SosModelCopyWith<$Res> {
  _$SosModelCopyWithImpl(this._value, this._then);

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
    Object? date = freezed,
    Object? call = freezed,
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
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      call: freezed == call
          ? _value.call
          : call // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SosModelImplCopyWith<$Res>
    implements $SosModelCopyWith<$Res> {
  factory _$$SosModelImplCopyWith(
          _$SosModelImpl value, $Res Function(_$SosModelImpl) then) =
      __$$SosModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? location,
      String? phone,
      String? extra,
      String? date,
      String? call});
}

/// @nodoc
class __$$SosModelImplCopyWithImpl<$Res>
    extends _$SosModelCopyWithImpl<$Res, _$SosModelImpl>
    implements _$$SosModelImplCopyWith<$Res> {
  __$$SosModelImplCopyWithImpl(
      _$SosModelImpl _value, $Res Function(_$SosModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? location = freezed,
    Object? phone = freezed,
    Object? extra = freezed,
    Object? date = freezed,
    Object? call = freezed,
  }) {
    return _then(_$SosModelImpl(
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
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      call: freezed == call
          ? _value.call
          : call // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SosModelImpl implements _SosModel {
  _$SosModelImpl(
      {this.id,
      this.name,
      this.location,
      this.phone,
      this.extra,
      this.date,
      this.call});

  factory _$SosModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SosModelImplFromJson(json);

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
  final String? date;
  @override
  final String? call;

  @override
  String toString() {
    return 'SosModel(id: $id, name: $name, location: $location, phone: $phone, extra: $extra, date: $date, call: $call)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SosModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.extra, extra) || other.extra == extra) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.call, call) || other.call == call));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, location, phone, extra, date, call);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SosModelImplCopyWith<_$SosModelImpl> get copyWith =>
      __$$SosModelImplCopyWithImpl<_$SosModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SosModelImplToJson(
      this,
    );
  }
}

abstract class _SosModel implements SosModel {
  factory _SosModel(
      {final String? id,
      final String? name,
      final String? location,
      final String? phone,
      final String? extra,
      final String? date,
      final String? call}) = _$SosModelImpl;

  factory _SosModel.fromJson(Map<String, dynamic> json) =
      _$SosModelImpl.fromJson;

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
  String? get date;
  @override
  String? get call;
  @override
  @JsonKey(ignore: true)
  _$$SosModelImplCopyWith<_$SosModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
