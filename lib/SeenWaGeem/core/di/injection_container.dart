import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../../presentation/bloc/auth_bloc/auth_bloc.dart';
import '../../presentation/bloc/avatar_bloc/avatar_bloc.dart';
import '../../presentation/bloc/home_bloc/home_bloc.dart';
import '../../presentation/bloc/onboarding_bloc/onboarding_bloc.dart';
import 'injection_container.config.dart';

final sl = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
)
Future<void> configureDependencies() async {
  await sl.init();
  sl.registerFactory(() => OnboardingBloc());
  sl.registerFactory(() => AuthBloc(sl(), sl(), sl()));
  sl.registerFactory(() => AvatarBloc(sl()));
  sl.registerFactory(() => HomeBloc(sl()));
}
