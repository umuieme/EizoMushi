import 'package:eizo_mushi/app/di/di.dart';
import 'package:eizo_mushi/features/anime-player/bloc/streaming_info/streaming_info_bloc.dart';
import 'package:eizo_mushi/features/anime-player/bloc/video_player/video_player_cubit.dart';
import 'package:eizo_mushi/features/anime-player/ui/widget/anime_player_body.dart';
import 'package:eizo_mushi/features/episode-list/bloc/episode_list_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnimePlayerScreen extends StatelessWidget {
  const AnimePlayerScreen({
    required this.animeId,
    super.key,
  });
  final String animeId;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<EpisodeListBloc>()..add(EpisodeListFetch(animeId: animeId)),
        ),
        BlocProvider(
          create: (context) => getIt<StreamingInfoBloc>(param1: animeId),
        ),
        BlocProvider(
          create: (context) => getIt<VideoPlayerCubit>(),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<EpisodeListBloc, EpisodeListState>(
            listener: (context, state) {
              if (state is EpisodeListLoadSuccess) {
                context.read<StreamingInfoBloc>().add(
                      StreamingInfoFetch(episode: state.data.episodes.first),
                    );
              }
            },
          ),
          BlocListener<StreamingInfoBloc, StreamingInfoState>(
            listener: (context, state) {
              if (state is StreamingInfoLoadSuccess) {
                context
                    .read<VideoPlayerCubit>()
                    .setEpisode(state.episodeModel, state.data);
              }
            },
          ),
        ],
        child: const AnimePlayerBody(),
      ),
    );
  }
}
