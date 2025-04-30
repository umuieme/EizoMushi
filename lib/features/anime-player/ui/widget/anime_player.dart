import 'package:chewie/chewie.dart';
import 'package:eizo_mushi/features/anime-player/bloc/video_player/video_player_cubit.dart';
import 'package:eizo_mushi/features/anime-player/bloc/video_player/video_player_state.dart';
import 'package:eizo_mushi/features/common/widgets/app_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnimePlayer extends StatelessWidget {
  const AnimePlayer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VideoPlayerCubit, VideoPlayerState>(
      builder: (context, state) {
        if (state.notLoaded) {
          return const AspectRatio(
            aspectRatio: 4 / 3,
            child: AppLoading(
              color: Colors.blue,
            ),
          );
        }

        return AspectRatio(
          aspectRatio: state.controller!.value.aspectRatio,
          child: Chewie(controller: state.chewieController!),
        );
      },
    );
  }
}
