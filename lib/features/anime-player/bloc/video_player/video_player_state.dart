import 'package:chewie/chewie.dart';
import 'package:eizo_mushi/data/model/episode/episode_model.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerState {
  VideoPlayerState._({
    required this.controller,
    required this.chewieController,
    required this.loaded,
    required this.episodeModel,
  });
  VideoPlayerState.init()
      : controller = null,
        chewieController = null,
        episodeModel = null,
        loaded = false;

  final VideoPlayerController? controller;
  final ChewieController? chewieController;
  final EpisodeModel? episodeModel;
  final bool loaded;

  bool get notLoaded => !loaded;

  VideoPlayerState copyWith({
    VideoPlayerController? controller,
    ChewieController? chewieController,
    EpisodeModel? episodeModel,
    bool? loaded,
  }) {
    return VideoPlayerState._(
      controller: controller ?? this.controller,
      loaded: loaded ?? this.loaded,
      chewieController: chewieController ?? this.chewieController,
      episodeModel: episodeModel ?? this.episodeModel,
    );
  }
}
