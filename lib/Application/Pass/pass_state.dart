part of 'pass_bloc.dart';

@freezed
class PassState with _$PassState {
  const factory PassState({required bool toggle}) = _PassState;
  factory PassState.initial() {
    return const PassState(toggle: true);
  }
}
