import 'dart:developer';

import 'package:eizo_mushi/app/utils/debounce_helper.dart';
import 'package:eizo_mushi/data/model/home/home_model.dart';
import 'package:eizo_mushi/data/repository/anime_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'anime_search_event.dart';
part 'anime_search_state.dart';

class AnimeSearchBloc extends Bloc<AnimeSearchEvent, AnimeSearchState> {
  AnimeSearchBloc({required this.repository}) : super(AnimeSearchInitial()) {
    on<AnimeSearchFetch>(
      _onFetchAnimeSearch,
      transformer: debounce(duration: const Duration(milliseconds: 500)),
    );
  }
  final AnimeRepository repository;

  Future<void> _onFetchAnimeSearch(
    AnimeSearchFetch event,
    Emitter<AnimeSearchState> emit,
  ) async {
    if (event.query.isEmpty) {
      emit(AnimeSearchInitial());
      return;
    }
    emit(AnimeSearchLoadInProgress());
    final response = await repository.searchAnime(keyword: event.query);
    response.fold(
      (error) {
        log(error.message);
        emit(AnimeSearchLoadFailure(message: error.message));
      },
      (data) {
        emit(AnimeSearchLoadSuccess(data: data));
      },
    );
  }
}
