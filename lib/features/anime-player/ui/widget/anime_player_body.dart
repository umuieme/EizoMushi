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
              child: Text('Failed to load episodes: ${state.message}'),
            );
          }

          if (state is EpisodeListLoadSuccess) {
            return Column(
              children: [
                const AnimePlayer(),
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
