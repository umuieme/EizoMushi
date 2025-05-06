part of 'favorite_list_bloc.dart';

abstract class FavoriteState extends Equatable {
  const FavoriteState();
}

class FavoriteInitial extends FavoriteState {
  @override
  List<Object?> get props => [];
}

class FavoriteLoadInProgress extends FavoriteState {
  @override
  List<Object?> get props => [];
}

class FavoriteLoadFailure extends FavoriteState {
  const FavoriteLoadFailure({required this.message});
  final String message;
  @override
  List<Object?> get props => [message];
}

class FavoriteAddFailure extends FavoriteState {
  const FavoriteAddFailure({required this.message});
  final String message;
  @override
  List<Object?> get props => [message];
}

class FavoriteLoadSuccess extends FavoriteState {
  const FavoriteLoadSuccess({required this.data});
  final Map<dynamic, AnimeInfoHomeModel> data;
  @override
  List<Object?> get props => [data];
}

class FavoriteAddSuccess extends FavoriteState {
  const FavoriteAddSuccess();
  @override
  List<Object?> get props => [];
}

class FavoriteRemoveSuccess extends FavoriteState {
  const FavoriteRemoveSuccess();
  @override
  List<Object?> get props => [];
}
