part of 'anime_search_bloc.dart';

abstract class AnimeSearchState extends Equatable {
  const AnimeSearchState();
}

class AnimeSearchInitial extends AnimeSearchState {
  @override
  List<Object?> get props => [];
}

class AnimeSearchLoadInProgress extends AnimeSearchState {
  @override
  List<Object?> get props => [];
}

class AnimeSearchLoadFailure extends AnimeSearchState {
  const AnimeSearchLoadFailure({required this.message});
  final String message;
  @override
  List<Object?> get props => [message];
}

class AnimeSearchLoadSuccess extends AnimeSearchState {
  const AnimeSearchLoadSuccess({required this.data});
  final List<AnimeInfoHomeModel> data;
  @override
  List<Object?> get props => [data];
}
