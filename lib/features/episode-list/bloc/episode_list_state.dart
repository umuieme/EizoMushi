part of 'episode_list_bloc.dart';

abstract class EpisodeListState extends Equatable {
  const EpisodeListState();
}

class EpisodeListInitial extends EpisodeListState {
  @override
  List<Object?> get props => [];
}

class EpisodeListLoadInProgress extends EpisodeListState {
  @override
  List<Object?> get props => [];
}

class EpisodeListLoadFailure extends EpisodeListState {
  const EpisodeListLoadFailure({required this.message});
  final String message;
  @override
  List<Object?> get props => [message];
}

class EpisodeListLoadSuccess extends EpisodeListState {
  const EpisodeListLoadSuccess({required this.data});
  final EpisodeListResponse data;
  @override
  List<Object?> get props => [data];
}
