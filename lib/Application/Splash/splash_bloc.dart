import 'package:bloc/bloc.dart';
import 'package:emergency_admin_app/Presentation/Login/login.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'splash_event.dart';
part 'splash_state.dart';
part 'splash_bloc.freezed.dart';

@injectable
class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(SplashState.initial()) {
    on<Check>((event, emit) async {
      await Future.delayed(const Duration(seconds: 2));
      final po = await SharedPreferences.getInstance();
      final user = po.getBool(user_key);
      if (user == null || user == false) {
        emit(const SplashState(loggedIn: false, notLogged: true));
      } else {
        emit(const SplashState(loggedIn: true, notLogged: false));
      }
    });
  }
}
