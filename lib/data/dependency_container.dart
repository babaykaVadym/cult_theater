import 'package:cult_app/data/auth_getway.dart';
import 'package:cult_app/data/repository/account_reposity.dart';
import 'package:cult_app/data/repository/actor_repository.dart';
import 'package:cult_app/data/repository/afisha.dart';
import 'package:cult_app/data/repository/auth.dart';
import 'package:cult_app/data/repository/event_tikets.dart';
import 'package:cult_app/data/repository/ewents.dart';
import 'package:cult_app/data/repository/news.dart';
import 'package:cult_app/data/repository/order_reposity.dart';
import 'package:cult_app/router/router.dart';
import 'package:cult_app/ui/screens/afisha/cubit/afisha_cubit.dart';
import 'package:cult_app/ui/screens/new/cubit/news_cubit.dart';
import 'package:cult_app/ui/screens/registration/cubit/registration_cubit.dart';
import 'package:cult_app/ui/screens/ticket/cubit/tiket_cubit.dart';
import 'package:cult_app/ui/screens/trypa/cubit/trypa_cubit.dart';
import 'package:cult_app/ui/screens/user_information/cubit/user_information_cubit.dart';
import 'package:cult_app/ui/theater/cubit/theater_cubit.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;
String urlDomen = '';

Future<void> resolveDependencies() async {
  getIt.registerLazySingleton<ActorRepository>(() => ActorRepository());
  getIt.registerLazySingleton<NewsRepository>(() => NewsRepository());
  getIt.registerLazySingleton<AuthRepository>(() => AuthRepository());
  getIt.registerFactory<AccountRepository>(() => AccountRepository());
  getIt.registerFactory<OrderRepository>(() => OrderRepository());
  getIt.registerLazySingleton<EwentsRepository>(() => EwentsRepository());
  getIt.registerLazySingleton<EwentTicketsRepository>(
      () => EwentTicketsRepository());
  getIt.registerLazySingleton<AfishaRepository>(() => AfishaRepository());

  getIt.registerSingleton<AuthService>(AuthService());
  getIt.registerLazySingleton<NewsCubit>(() => NewsCubit());
  getIt.registerLazySingleton<TrypaCubit>(() => TrypaCubit());
  getIt.registerSingleton<AppRouter>(AppRouter());
  getIt.registerLazySingleton<RegistrationCubit>(() => RegistrationCubit());
  getIt.registerLazySingleton<TeaterCubit>(() => TeaterCubit());
  getIt.registerLazySingleton<AfishaCubit>(() => AfishaCubit());
  getIt.registerLazySingleton<TiketCubit>(() => TiketCubit());
  getIt.registerFactory<UserInformationCubit>(() => UserInformationCubit());
}
