import 'package:eizo_mushi/app/utils/context_extension.dart';
import 'package:eizo_mushi/features/anime-list/ui/widget/anime_item.dart';
import 'package:eizo_mushi/features/common/widgets/app_loading.dart';
import 'package:eizo_mushi/features/common/widgets/empty_widget.dart';
import 'package:eizo_mushi/features/common/widgets/error_view.dart';
import 'package:eizo_mushi/features/search/bloc/anime_search_bloc.dart';
import 'package:eizo_mushi/features/search/ui/widget/search_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnimeSearchBody extends StatelessWidget {
  const AnimeSearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      children: [
        SearchTextField(
          onSearch: (value) => context
              .read<AnimeSearchBloc>()
              .add(AnimeSearchFetch(query: value ?? '')),
        ),
        BlocBuilder<AnimeSearchBloc, AnimeSearchState>(
          builder: (context, state) {
            if (state is AnimeSearchLoadInProgress) {
              return const AppLoading();
            }
            if (state is AnimeSearchLoadFailure) {
              return ErrorView(message: state.message);
            }
            if (state is AnimeSearchLoadSuccess) {
              if (state.data.isEmpty) {
                return const Expanded(
                  child: EmptyWidget(
                    message: 'No anime found',
                  ),
                );
              }

              return Expanded(
                child: ListView.separated(
                  itemCount: state.data.length,
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 16),
                  padding: const EdgeInsets.symmetric(
                    vertical: 16,
                  ),
                  itemBuilder: (context, index) {
                    final anime = state.data[index];
                    return AnimeItemWidget(anime: anime);
                  },
                ),
              );
            }
            return Expanded(
              child: Center(
                child: Text(
                  'Search for anime by title',
                  style: context.textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
