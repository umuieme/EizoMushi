import 'dart:developer';

import 'package:eizo_mushi/data/model/anime-detail/anime_detail_wrapper.dart';
import 'package:eizo_mushi/data/model/home/home_model.dart';
import 'package:eizo_mushi/data/repository/anime_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'anime_detail_event.dart';
part 'anime_detail_state.dart';

class AnimeDetailBloc extends Bloc<AnimeDetailEvent, AnimeDetailState> {
  AnimeDetailBloc({required this.animeInfo, required this.repository})
      : super(AnimeDetailInitial()) {
    on<AnimeDetailFetch>(_onFetchAnimeDetail);
  }
  final AnimeRepository repository;
  final AnimeInfoHomeModel animeInfo;

  Future<void> _onFetchAnimeDetail(
    AnimeDetailFetch event,
    Emitter<AnimeDetailState> emit,
  ) async {
    emit(
      AnimeDetailLoadInProgress(
        posterUrl: animeInfo.poster,
        title: animeInfo.title,
      ),
    );
    final response = await repository.fetchAnimeInfo(animeInfo.id);
    response.fold(
      (error) {
        log(error.message);
        emit(
          AnimeDetailLoadFailure(
            message: error.message,
            posterUrl: animeInfo.poster,
            title: animeInfo.title,
          ),
        );
      },
      (data) {
        emit(AnimeDetailLoadSuccess(data: data));
      },
    );
  }
}
