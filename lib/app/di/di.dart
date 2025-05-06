import 'dart:collection';

import 'package:eizo_mushi/data/api/api_service.dart';
import 'package:eizo_mushi/data/api/dio_helper.dart';
import 'package:eizo_mushi/data/data_source/local_data_source.dart';
import 'package:eizo_mushi/data/model/episode/episode_model.dart';
import 'package:eizo_mushi/data/model/home/home_model.dart';
import 'package:eizo_mushi/data/repository/anime_repository.dart';
import 'package:eizo_mushi/features/anime-detail/bloc/anime_detail_bloc.dart';
import 'package:eizo_mushi/features/anime-player/bloc/streaming_info/streaming_info_bloc.dart';
import 'package:eizo_mushi/features/anime-player/bloc/video_player/video_player_cubit.dart';
import 'package:eizo_mushi/features/episode-list/bloc/episode_list_bloc.dart';
import 'package:eizo_mushi/features/home/bloc/home_data_bloc.dart';
import 'package:eizo_mushi/features/library/bloc/favorite_list_bloc.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupDi() {
  getIt
    ..registerLazySingleton(() => ApiService(getIt()))
    ..registerLazySingleton(DioHelper.new)
    ..registerLazySingleton(LocalDataSource.new)
    // repository
    ..registerLazySingleton(() => AnimeRepository(getIt(), getIt()))
    // bloc
    ..registerFactory(() => HomeDataBloc(repository: getIt()))
    ..registerFactoryParam(
      (param, _) => AnimeDetailBloc(
        animeInfo: param! as AnimeInfoHomeModel,
        repository: getIt(),
      ),
    )
    ..registerFactory(
      () => EpisodeListBloc(repository: getIt()),
    )
    ..registerFactoryParam(
      (param, _) =>
          StreamingInfoBloc(repository: getIt(), animeId: param! as String),
    )
    ..registerFactoryParam(
      (animeId, episodeList) => VideoPlayerCubit(
        animeRepository: getIt(),
        animeId: animeId! as String,
        episodeList: episodeList! as UnmodifiableListView<EpisodeModel>,
      ),
    )
    ..registerFactory(
      () => FavoriteBloc(repository: getIt()),
    );
}
