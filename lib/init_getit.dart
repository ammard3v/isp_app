import 'package:get_it/get_it.dart';
import 'services/navigation_service.dart';
import 'services/auth_service.dart';
import 'viewmodels/auth_view_model.dart';
import 'viewmodels/user_view_model.dart';

final GetIt getIt = GetIt.instance;

void setupLocator() {
  getIt.registerLazySingleton<NavigationService>(() => NavigationService());
  getIt.registerLazySingleton<AuthService>(() => AuthService());
  getIt.registerLazySingleton<LoginViewModel>(() => LoginViewModel());
  getIt.registerFactory<AuthViewModel>(
      () => AuthViewModel(getIt<AuthService>(), getIt<LoginViewModel>()));
}
