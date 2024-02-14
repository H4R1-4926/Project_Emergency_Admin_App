part of 'splash_bloc.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState({
    required bool loggedIn,
    required bool notLogged,
  }) = _SplashState;
  factory SplashState.initial() {
    return SplashState(loggedIn: false, notLogged: false);
  }
}
