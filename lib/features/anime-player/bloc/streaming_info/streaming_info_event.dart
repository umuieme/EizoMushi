part of 'streaming_info_bloc.dart';

abstract class StreamingInfoEvent extends Equatable {
  const StreamingInfoEvent();
}

class StreamingInfoFetch extends StreamingInfoEvent {
  const StreamingInfoFetch({
    required this.episode,
  });
  final EpisodeModel episode;
  @override
  List<Object?> get props => [episode];
}
