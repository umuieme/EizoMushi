import 'dart:developer';

import 'package:eizo_mushi/data/model/home/home_model.dart';
import 'package:eizo_mushi/data/repository/anime_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'favorite_list_event.dart';
part 'favorite_list_state.dart';

class FavoriteBloc extends Bloc<FavoriteEvent, FavoriteState> {
  FavoriteBloc({required this.repository}) : super(FavoriteInitial()) {
    on<FavoriteFetch>(_onFetchFavorite);
    on<FavoriteUpdate>(_onUpdateFavorite);
  }
  final AnimeRepository repository;
  Map<dynamic, AnimeInfoHomeModel> _favoriteList = {};

  Future<void> _onFetchFavorite(
    FavoriteFetch event,
    Emitter<FavoriteState> emit,
  ) async {
    if (event.shouldShowLoading) {
      emit(FavoriteLoadInProgress());
    }
    final response = await repository.fetchFavorite();
    response.fold(
      (error) {
        log(error.message);
        emit(FavoriteLoadFailure(message: error.message));
      },
      (data) {
        _favoriteList = data;
        emit(FavoriteLoadSuccess(data: data));
      },
    );
  }

  Future<void> _onUpdateFavorite(
    FavoriteUpdate event,
    Emitter<FavoriteState> emit,
  ) async {
    final isFavorite = _favoriteList.containsKey(event.anime.id);
    if (isFavorite) {
      final response = await repository.removeFavorite(event.anime.id);
      response.fold(
        (error) {
          log(error.message);
          emit(FavoriteLoadFailure(message: error.message));
        },
        (data) {
          emit(const FavoriteRemoveSuccess());
          add(const FavoriteFetch(shouldShowLoading: false));
        },
      );
      return;
    }
    final response = await repository.addTofavorite(event.anime);
    response.fold(
      (error) {
        log(error.message);
        emit(FavoriteLoadFailure(message: error.message));
      },
      (data) {
        emit(const FavoriteRemoveSuccess());
        add(const FavoriteFetch(shouldShowLoading: false));
      },
    );
  }
}
