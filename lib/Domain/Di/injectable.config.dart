// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../Application/Pass/pass_bloc.dart' as _i15;
import '../../Application/Splash/splash_bloc.dart' as _i16;
import '../../Infrastructure/Ambulance/ambulance_repository.dart' as _i4;
import '../../Infrastructure/Emergency/emergency_repository.dart' as _i8;
import '../../Infrastructure/Emergency_plus/emergency_plus_repo.dart' as _i6;
import '../../Infrastructure/Police/police_repository.dart' as _i10;
import '../../Infrastructure/Sos/sos_repository.dart' as _i12;
import '../../Infrastructure/User/user_repository.dart' as _i14;
import '../Ambulance/i_ambulance_repo.dart' as _i3;
import '../Emergency/i_emergency_repo.dart' as _i7;
import '../Emergency_Plus/i_emergency_plus_repo.dart' as _i5;
import '../Police/i_police_repo.dart' as _i9;
import '../Sos/i_sos_repo.dart' as _i11;
import '../User/i_user_repo.dart'
    as _i13; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.IAmbulanceRepo>(() => _i4.AmbulanceController());
  gh.lazySingleton<_i5.IEmergencyPlusRepo>(() => _i6.EmergencyPlusController());
  gh.lazySingleton<_i7.IEmergencyRepo>(() => _i8.EmergencyController());
  gh.lazySingleton<_i9.IPoliceRepo>(() => _i10.GetDoc());
  gh.lazySingleton<_i11.ISosRepo>(() => _i12.SosController());
  gh.lazySingleton<_i13.IUserRepo>(() => _i14.UserController());
  gh.factory<_i15.PassBloc>(() => _i15.PassBloc());
  gh.factory<_i16.SplashBloc>(() => _i16.SplashBloc());
  return get;
}
