part of 'anime_search_bloc.dart';

sealed class AnimeSearchEvent extends Equatable {
  const AnimeSearchEvent();
  @override
  List<Object?> get props => [];
}

class AnimeSearchFetch extends AnimeSearchEvent {
  const AnimeSearchFetch({required this.query});
  final String query;
  @override
  List<Object?> get props => [];
}
