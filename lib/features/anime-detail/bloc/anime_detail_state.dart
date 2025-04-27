part of 'anime_detail_bloc.dart';

abstract class AnimeDetailState extends Equatable {
  const AnimeDetailState();
}

class AnimeDetailInitial extends AnimeDetailState {
  @override
  List<Object?> get props => [];
}

class AnimeDetailLoadInProgress extends AnimeDetailState {
  const AnimeDetailLoadInProgress({
    required this.posterUrl,
    required this.title,
  });

  final String posterUrl;
  final String title;
  @override
  List<Object?> get props => [posterUrl, title];
}

class AnimeDetailLoadFailure extends AnimeDetailState {
  const AnimeDetailLoadFailure({
    required this.message,
    required this.posterUrl,
    required this.title,
  });
  final String message;
  final String posterUrl;
  final String title;
  @override
  List<Object?> get props => [message, posterUrl, title];
}

class AnimeDetailLoadSuccess extends AnimeDetailState {
  const AnimeDetailLoadSuccess({required this.data});
  final AnimeDetailResult data;
  @override
  List<Object?> get props => [data];
}
