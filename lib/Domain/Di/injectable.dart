import 'package:emergency_admin_app/Domain/Di/injectable.config.dart';

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getit = GetIt.instance;

@InjectableInit()
Future<void> configureInjectable() async {
  $initGetIt(getit, environment: Environment.prod);
}
