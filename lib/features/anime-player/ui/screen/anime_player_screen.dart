import 'package:chewie/chewie.dart';
import 'package:eizo_mushi/data/dummy_model.dart';
import 'package:eizo_mushi/data/model/streaming_info/streaming_info_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';

class AnimePlayerScreen extends StatefulWidget {
  const AnimePlayerScreen({required this.animeId, super.key});
  final String animeId;
  @override
  State createState() => _AnimePlayerScreenState();
}

class _AnimePlayerScreenState extends State<AnimePlayerScreen> {
  late VideoPlayerController _videoPlayerController;
  ChewieController? _chewieController;
  StreamingInfo? streamingInfo;
  @override
  void initState() {
    super.initState();
    streamingInfo = Dummy.getStreamingInfo();
    _initializePlayer();
  }

  Future<void> _initializePlayer() async {
    _videoPlayerController = VideoPlayerController.networkUrl(
      Uri.parse(streamingInfo!.streamingLink.link.file),
    );
    await _videoPlayerController.initialize();
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
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
    _videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          if (_chewieController != null &&
              _videoPlayerController.value.isInitialized)
            AspectRatio(
              aspectRatio: _videoPlayerController.value.aspectRatio,
              child: Chewie(controller: _chewieController!),
            )
          else
            const CircularProgressIndicator(),
        ],
      ),
    );
  }
}
