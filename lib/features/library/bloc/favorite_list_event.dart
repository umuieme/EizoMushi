part of 'favorite_list_bloc.dart';

abstract class FavoriteEvent extends Equatable {
  const FavoriteEvent();
}

class FavoriteFetch extends FavoriteEvent {
  const FavoriteFetch({this.shouldShowLoading = true});
  final bool shouldShowLoading;
  @override
  List<Object?> get props => [];
}

class FavoriteUpdate extends FavoriteEvent {
  const FavoriteUpdate({required this.anime});
  final AnimeInfoHomeModel anime;
  @override
  List<Object?> get props => [anime];
}
