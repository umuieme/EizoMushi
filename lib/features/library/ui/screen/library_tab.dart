import 'package:eizo_mushi/app/utils/context_extension.dart';
import 'package:eizo_mushi/features/anime-detail/ui/screen/anime_detail_screen.dart';
import 'package:eizo_mushi/features/common/widgets/app_loading.dart';
import 'package:eizo_mushi/features/common/widgets/error_view.dart';
import 'package:eizo_mushi/features/library/bloc/favorite_list_bloc.dart';
import 'package:eizo_mushi/features/library/ui/widget/favorite_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LibraryTab extends StatelessWidget {
  const LibraryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 16,
          children: [
            const SizedBox(height: 16),
            Text(
              'Favorites',
              style: context.textTheme.headlineLarge,
            ),
            Expanded(
              child: BlocBuilder<FavoriteBloc, FavoriteState>(
                builder: (context, state) {
                  if (state is FavoriteLoadInProgress) {
                    return const AppLoading();
                  }

                  if (state is FavoriteLoadFailure) {
                    return ErrorView(message: state.message);
                  }

                  if (state is FavoriteLoadSuccess) {
                    return ListView.separated(
                      itemCount: state.data.length,
                      separatorBuilder: (context, index) => const Divider(),
                      itemBuilder: (context, index) {
                        final anime = state.data.values.elementAt(index);
                        return FavoriteAnimeCard(
                          anime: anime,
                          onTap: () {
                            Navigator.of(context).push<void>(
                              MaterialPageRoute(
                                builder: (context) => AnimeDetailScreen(
                                  animeBasicInfo: anime,
                                ),
                              ),
                            );
                          },
                          onRemove: () {
                            context
                                .read<FavoriteBloc>()
                                .add(FavoriteUpdate(anime: anime));
                          },
                        );
                      },
                    );
                  }
                  return const SizedBox.shrink();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
