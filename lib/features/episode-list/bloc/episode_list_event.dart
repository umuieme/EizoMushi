part of 'episode_list_bloc.dart';

abstract class EpisodeListEvent extends Equatable {}

class EpisodeListFetch extends EpisodeListEvent {
  EpisodeListFetch({required this.animeId});

  final String animeId;
  @override
  List<Object?> get props => [];
}
