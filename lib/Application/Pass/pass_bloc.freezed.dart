// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pass_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PassEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pressed,
    required TResult Function() unpressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pressed,
    TResult? Function()? unpressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pressed,
    TResult Function()? unpressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Pressed value) pressed,
    required TResult Function(Unpressed value) unpressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Pressed value)? pressed,
    TResult? Function(Unpressed value)? unpressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Pressed value)? pressed,
    TResult Function(Unpressed value)? unpressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PassEventCopyWith<$Res> {
  factory $PassEventCopyWith(PassEvent value, $Res Function(PassEvent) then) =
      _$PassEventCopyWithImpl<$Res, PassEvent>;
}

/// @nodoc
class _$PassEventCopyWithImpl<$Res, $Val extends PassEvent>
    implements $PassEventCopyWith<$Res> {
  _$PassEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PressedImplCopyWith<$Res> {
  factory _$$PressedImplCopyWith(
          _$PressedImpl value, $Res Function(_$PressedImpl) then) =
      __$$PressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PressedImplCopyWithImpl<$Res>
    extends _$PassEventCopyWithImpl<$Res, _$PressedImpl>
    implements _$$PressedImplCopyWith<$Res> {
  __$$PressedImplCopyWithImpl(
      _$PressedImpl _value, $Res Function(_$PressedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PressedImpl implements Pressed {
  const _$PressedImpl();

  @override
  String toString() {
    return 'PassEvent.pressed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pressed,
    required TResult Function() unpressed,
  }) {
    return pressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pressed,
    TResult? Function()? unpressed,
  }) {
    return pressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pressed,
    TResult Function()? unpressed,
    required TResult orElse(),
  }) {
    if (pressed != null) {
      return pressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Pressed value) pressed,
    required TResult Function(Unpressed value) unpressed,
  }) {
    return pressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Pressed value)? pressed,
    TResult? Function(Unpressed value)? unpressed,
  }) {
    return pressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Pressed value)? pressed,
    TResult Function(Unpressed value)? unpressed,
    required TResult orElse(),
  }) {
    if (pressed != null) {
      return pressed(this);
    }
    return orElse();
  }
}

abstract class Pressed implements PassEvent {
  const factory Pressed() = _$PressedImpl;
}

/// @nodoc
abstract class _$$UnpressedImplCopyWith<$Res> {
  factory _$$UnpressedImplCopyWith(
          _$UnpressedImpl value, $Res Function(_$UnpressedImpl) then) =
      __$$UnpressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnpressedImplCopyWithImpl<$Res>
    extends _$PassEventCopyWithImpl<$Res, _$UnpressedImpl>
    implements _$$UnpressedImplCopyWith<$Res> {
  __$$UnpressedImplCopyWithImpl(
      _$UnpressedImpl _value, $Res Function(_$UnpressedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnpressedImpl implements Unpressed {
  const _$UnpressedImpl();

  @override
  String toString() {
    return 'PassEvent.unpressed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnpressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pressed,
    required TResult Function() unpressed,
  }) {
    return unpressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pressed,
    TResult? Function()? unpressed,
  }) {
    return unpressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pressed,
    TResult Function()? unpressed,
    required TResult orElse(),
  }) {
    if (unpressed != null) {
      return unpressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Pressed value) pressed,
    required TResult Function(Unpressed value) unpressed,
  }) {
    return unpressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Pressed value)? pressed,
    TResult? Function(Unpressed value)? unpressed,
  }) {
    return unpressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Pressed value)? pressed,
    TResult Function(Unpressed value)? unpressed,
    required TResult orElse(),
  }) {
    if (unpressed != null) {
      return unpressed(this);
    }
    return orElse();
  }
}

abstract class Unpressed implements PassEvent {
  const factory Unpressed() = _$UnpressedImpl;
}

/// @nodoc
mixin _$PassState {
  bool get toggle => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PassStateCopyWith<PassState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PassStateCopyWith<$Res> {
  factory $PassStateCopyWith(PassState value, $Res Function(PassState) then) =
      _$PassStateCopyWithImpl<$Res, PassState>;
  @useResult
  $Res call({bool toggle});
}

/// @nodoc
class _$PassStateCopyWithImpl<$Res, $Val extends PassState>
    implements $PassStateCopyWith<$Res> {
  _$PassStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toggle = null,
  }) {
    return _then(_value.copyWith(
      toggle: null == toggle
          ? _value.toggle
          : toggle // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PassStateImplCopyWith<$Res>
    implements $PassStateCopyWith<$Res> {
  factory _$$PassStateImplCopyWith(
          _$PassStateImpl value, $Res Function(_$PassStateImpl) then) =
      __$$PassStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool toggle});
}

/// @nodoc
class __$$PassStateImplCopyWithImpl<$Res>
    extends _$PassStateCopyWithImpl<$Res, _$PassStateImpl>
    implements _$$PassStateImplCopyWith<$Res> {
  __$$PassStateImplCopyWithImpl(
      _$PassStateImpl _value, $Res Function(_$PassStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toggle = null,
  }) {
    return _then(_$PassStateImpl(
      toggle: null == toggle
          ? _value.toggle
          : toggle // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PassStateImpl implements _PassState {
  const _$PassStateImpl({required this.toggle});

  @override
  final bool toggle;

  @override
  String toString() {
    return 'PassState(toggle: $toggle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PassStateImpl &&
            (identical(other.toggle, toggle) || other.toggle == toggle));
  }

  @override
  int get hashCode => Object.hash(runtimeType, toggle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PassStateImplCopyWith<_$PassStateImpl> get copyWith =>
      __$$PassStateImplCopyWithImpl<_$PassStateImpl>(this, _$identity);
}

abstract class _PassState implements PassState {
  const factory _PassState({required final bool toggle}) = _$PassStateImpl;

  @override
  bool get toggle;
  @override
  @JsonKey(ignore: true)
  _$$PassStateImplCopyWith<_$PassStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
