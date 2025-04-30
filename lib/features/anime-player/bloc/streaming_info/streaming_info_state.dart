part of 'streaming_info_bloc.dart';

abstract class StreamingInfoState extends Equatable {
  const StreamingInfoState();
}

class StreamingInfoInitial extends StreamingInfoState {
  @override
  List<Object?> get props => [];
}

class StreamingInfoLoadInProgress extends StreamingInfoState {
  @override
  List<Object?> get props => [];
}

class StreamingInfoLoadFailure extends StreamingInfoState {
  const StreamingInfoLoadFailure({required this.message});
  final String message;
  @override
  List<Object?> get props => [message];
}

class StreamingInfoLoadSuccess extends StreamingInfoState {
  const StreamingInfoLoadSuccess({
    required this.data,
    required this.episodeModel,
  });
  final StreamingInfoModel data;
  final EpisodeModel episodeModel;
  @override
  List<Object?> get props => [data, episodeModel];
}
