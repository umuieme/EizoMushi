import 'package:chewie/chewie.dart';
import 'package:eizo_mushi/data/model/episode/episode_model.dart';
import 'package:eizo_mushi/data/model/streaming_info/streaming_info_model.dart';
import 'package:eizo_mushi/data/repository/anime_repository.dart';
import 'package:eizo_mushi/features/anime-player/bloc/video_player/video_player_state.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerCubit extends Cubit<VideoPlayerState> {
  VideoPlayerCubit({required this.animeRepository, this.episodeModel})
      : super(VideoPlayerState.init());

  final AnimeRepository animeRepository;
  VideoPlayerController? _videoPlayerController;
  ChewieController? _chewieController;
  EpisodeModel? episodeModel;

  Future<void> setEpisode(
    EpisodeModel episode,
    StreamingInfoModel streamingInfo,
  ) async {
    episodeModel = episode;

    emit(
      state.copyWith(
        loaded: false,
        episodeModel: episode,
      ),
    );
    _chewieController?.dispose();
    await _videoPlayerController?.dispose();
    _videoPlayerController = VideoPlayerController.networkUrl(
      Uri.parse(streamingInfo.streamingLink.link.file),
    );
    await _videoPlayerController?.initialize();
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController!,
      autoPlay: true,
      deviceOrientationsOnEnterFullScreen: [
        DeviceOrientation.landscapeRight,
        DeviceOrientation.landscapeLeft,
      ],
      deviceOrientationsAfterFullScreen: [
        DeviceOrientation.portraitUp,
      ],
      systemOverlaysOnEnterFullScreen: [],
      showSubtitles: true,
    );
    emit(
      state.copyWith(
        controller: _videoPlayerController,
        chewieController: _chewieController,
        loaded: true,
      ),
    );
  }

  @override
  Future<void> close() {
    _chewieController?.dispose();
    _videoPlayerController?.dispose();
    return super.close();
  }
}
