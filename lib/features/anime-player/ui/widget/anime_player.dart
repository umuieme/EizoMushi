import 'package:chewie/chewie.dart';
import 'package:eizo_mushi/data/model/streaming_info/streaming_info_model.dart';
import 'package:eizo_mushi/features/anime-player/bloc/streaming_info/streaming_info_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player/video_player.dart';

class AnimePlayer extends StatefulWidget {
  const AnimePlayer({super.key});
  @override
  State createState() => _AnimePlayerState();
}

class _AnimePlayerState extends State<AnimePlayer> {
  late VideoPlayerController? _videoPlayerController;
  ChewieController? _chewieController;
  StreamingInfoModel? streamingInfo;
  @override
  void initState() {
    super.initState();
  }

  Future<void> _initializePlayer() async {
    _videoPlayerController = VideoPlayerController.networkUrl(
      Uri.parse(streamingInfo!.streamingLink.link.file),
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
    setState(() {}); // rebuild to show the player
  }

  @override
  void dispose() {
    _chewieController?.dispose();
    _videoPlayerController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<StreamingInfoBloc, StreamingInfoState>(
      listener: (context, state) {
        if (state is StreamingInfoLoadSuccess) {
          streamingInfo = state.data;
          _initializePlayer();
        }
      },
      child: Column(
        children: [
          if (_chewieController != null &&
              _videoPlayerController != null &&
              _videoPlayerController!.value.isInitialized)
            AspectRatio(
              aspectRatio: _videoPlayerController!.value.aspectRatio,
              child: Chewie(controller: _chewieController!),
            )
          else
            const CircularProgressIndicator(),
        ],
      ),
    );
  }
}
