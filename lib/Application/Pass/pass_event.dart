part of 'pass_bloc.dart';

@freezed
class PassEvent with _$PassEvent {
  const factory PassEvent.pressed() = Pressed;
  const factory PassEvent.unpressed() = Unpressed;
}
