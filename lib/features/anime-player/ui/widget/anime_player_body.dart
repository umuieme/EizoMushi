import 'package:eizo_mushi/app/utils/context_extension.dart';
import 'package:eizo_mushi/features/anime-player/bloc/video_player/video_player_cubit.dart';
import 'package:eizo_mushi/features/anime-player/bloc/video_player/video_player_state.dart';
import 'package:eizo_mushi/features/anime-player/ui/widget/anime_player.dart';
import 'package:eizo_mushi/features/anime-player/ui/widget/episode_list.dart';
import 'package:eizo_mushi/features/common/widgets/app_loading.dart';
import 'package:eizo_mushi/features/episode-list/bloc/episode_list_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnimePlayerBody extends StatelessWidget {
  const AnimePlayerBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder<EpisodeListBloc, EpisodeListState>(
        builder: (context, state) {
          if (state is EpisodeListLoadInProgress) {
            return const AppLoading();
          }
          if (state is EpisodeListLoadFailure) {
            return Center(
              child: Text('Failed to load episodes:\n${state.message}'),
            );
          }

          if (state is EpisodeListLoadSuccess) {
            return Column(
              spacing: 8,
              children: [
                const AnimePlayer(),
                BlocBuilder<VideoPlayerCubit, VideoPlayerState>(
                  builder: (context, state) {
                    if (state.episodeModel == null) {
                      return const SizedBox.shrink();
                    }
                    final episode = state.episodeModel!;
                    return Text(
                      'Ep ${episode.episodeNo}: ${episode.title}',
                      style: context.textTheme.titleMedium,
                    );
                  },
                ),
                Expanded(
                  child: EpisodeListView(episodeList: state.data.episodes),
                ),
              ],
            );
          }

          return const SizedBox.shrink();
        },
      ),
    );
  }
}
