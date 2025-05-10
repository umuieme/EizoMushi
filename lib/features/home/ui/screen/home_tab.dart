import 'package:eizo_mushi/app/di/di.dart';
import 'package:eizo_mushi/features/common/widgets/app_loading.dart';
import 'package:eizo_mushi/features/common/widgets/error_view.dart';
import 'package:eizo_mushi/features/home/bloc/home_data_bloc.dart';
import 'package:eizo_mushi/features/home/ui/widgets/home_anime_list.dart';
import 'package:eizo_mushi/features/home/ui/widgets/spotlight_carousel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomeDataBloc>()..add(HomeDataFetch()),
      child: BlocBuilder<HomeDataBloc, HomeDataState>(
        builder: (context, state) {
          if (state is HomeDataLoadInProgress) {
            return const AppLoading();
          } else if (state is HomeDataLoadFailure) {
            return ErrorView(
              message: state.message,
              onPressed: () {
                context.read<HomeDataBloc>().add(HomeDataFetch());
              },
            );
          } else if (state is HomeDataLoadSuccess) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SpotlightCarousel(
                    spotlightList: state.data.spotlights,
                  ),
                  HomeAnimeListWidget(
                    title: 'Top Airing',
                    animeList: state.data.topAiring,
                  ),
                  HomeAnimeListWidget(
                    title: 'Latest Episode',
                    animeList: state.data.latestEpisode,
                  ),
                  HomeAnimeListWidget(
                    title: 'Latest Completed',
                    animeList: state.data.latestCompleted,
                  ),
                  HomeAnimeListWidget(
                    title: 'Recently Added',
                    animeList: state.data.recentlyAdded,
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
