import 'dart:collection';

import 'package:chewie/chewie.dart';
import 'package:eizo_mushi/data/model/episode/episode_model.dart';
import 'package:eizo_mushi/data/model/streaming_info/streaming_info_model.dart';
import 'package:eizo_mushi/data/repository/anime_repository.dart';
import 'package:eizo_mushi/features/anime-player/bloc/video_player/video_player_state.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerCubit extends Cubit<VideoPlayerState> {
  VideoPlayerCubit({
    required this.animeRepository,
    required this.animeId,
    required this.episodeList,
  }) : super(VideoPlayerState.init()) {
    setEpisode(episodeList.first);
  }

  final AnimeRepository animeRepository;
  VideoPlayerController? _videoPlayerController;
  ChewieController? _chewieController;
  EpisodeModel? episodeModel;
  final UnmodifiableListView<EpisodeModel> episodeList;
  String animeId;

  Future<void> setEpisode(EpisodeModel episode, {bool autoPlay = true}) async {
    episodeModel = episode;
    emit(
      state.copyWith(
        loaded: false,
        episodeModel: episode,
      ),
    );
    final result = await animeRepository.fetchStreamingInfo(
      animeId: animeId,
      episodeId: episode.id,
    );
    await result.fold(
      (l) {},
      (r) => _initializeVideo(r, autoPlay),
    );
  }

  void _nextEpisode() {
    if (state.notLoaded) {
      return;
    }
    // ignore: lines_longer_than_80_chars
    // this is a work around to stop showing loading view when last episode comppletes
    if (episodeModel?.episodeNo == episodeList.length) {
      setEpisode(episodeModel!, autoPlay: false);
      return;
    }
    final nextEpisode = episodeList[episodeModel!.episodeNo];

    setEpisode(nextEpisode);
  }

  Future<void> _initializeVideo(
    StreamingInfoModel streamingInfo,
    bool autoPlay,
  ) async {
    _chewieController?.dispose();

    await _videoPlayerController?.dispose();
    _videoPlayerController = VideoPlayerController.networkUrl(
      Uri.parse(streamingInfo.streamingLink.link.file),
    );

    _videoPlayerController?.addListener(
      () {
        if (_videoPlayerController?.value.isCompleted ?? false) {
          _videoPlayerController?.removeListener(
            () {},
          );
          _nextEpisode();
        }
      },
    );
    await _videoPlayerController?.initialize();
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController!,
      autoPlay: autoPlay,
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
