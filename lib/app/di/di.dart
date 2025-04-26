import 'package:eizo_mushi/data/api/api_service.dart';
import 'package:eizo_mushi/data/api/dio_helper.dart';
import 'package:eizo_mushi/data/repository/anime_repository.dart';
import 'package:eizo_mushi/features/home/bloc/home_data_bloc.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupDi() {
  getIt
    ..registerLazySingleton(() => ApiService(getIt()))
    ..registerLazySingleton(DioHelper.new)
    // repository
    ..registerLazySingleton(() => AnimeRepository(getIt()))
    // bloc
    ..registerLazySingleton(() => HomeDataBloc(repository: getIt()));
}
