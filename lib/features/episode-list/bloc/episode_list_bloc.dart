import 'dart:developer';

import 'package:eizo_mushi/data/model/episode/episode_model.dart';
import 'package:eizo_mushi/data/repository/anime_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'episode_list_event.dart';
part 'episode_list_state.dart';

class EpisodeListBloc extends Bloc<EpisodeListEvent, EpisodeListState> {
  EpisodeListBloc({required this.repository}) : super(EpisodeListInitial()) {
    on<EpisodeListFetch>(_onFetchEpisodeList);
  }
  final AnimeRepository repository;

  Future<void> _onFetchEpisodeList(
    EpisodeListFetch event,
    Emitter<EpisodeListState> emit,
  ) async {
    emit(EpisodeListLoadInProgress());
    final response = await repository.fetchEpisodeList(event.animeId);
    response.fold(
      (error) {
        log(error.message);
        emit(EpisodeListLoadFailure(message: error.message));
      },
      (data) {
        emit(EpisodeListLoadSuccess(data: data, animeId: event.animeId));
      },
    );
  }
}
