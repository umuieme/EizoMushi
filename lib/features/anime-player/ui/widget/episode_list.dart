import 'package:eizo_mushi/app/utils/context_extension.dart';
import 'package:eizo_mushi/data/model/episode/episode_model.dart';
import 'package:eizo_mushi/features/anime-player/bloc/streaming_info/streaming_info_bloc.dart';
import 'package:eizo_mushi/features/common/widgets/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class EpisodeListView extends HookWidget {
  const EpisodeListView({required this.episodeList, super.key});

  final List<EpisodeModel> episodeList;
  static const _itemPerPage = 50;

  @override
  Widget build(BuildContext context) {
    final pageController = usePageController();
    final query = useState('');
    final currentItems = useMemoized<List<EpisodeModel>>(
      () {
        return episodeList
            .where(
              (element) => element.episodeNo.toString().startsWith(query.value),
            )
            .toList();
      },
      [episodeList, query.value],
    );
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 20,
        children: [
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_left_rounded),
                padding: EdgeInsets.zero,
                iconSize: 48,
                onPressed: () {
                  pageController.previousPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
              ),
              Expanded(
                child: AppTextField(
                  hint: 'Episode No',
                  hintStyle: context.textTheme.bodyMedium,
                  inputTextStyle: context.textTheme.bodyMedium,
                  contentPadding: EdgeInsets.zero,
                  prefixIcon: const Icon(
                    Icons.search,
                    size: 24,
                  ),
                  onChanged: (p0) => query.value = p0!,
                ),
              ),
              IconButton(
                icon: const Icon(Icons.arrow_right_rounded),
                iconSize: 48,
                padding: EdgeInsets.zero,
                onPressed: () {
                  pageController.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
              ),
            ],
          ),
          Expanded(
            child: PageView.builder(
              controller: pageController,
              physics: const ClampingScrollPhysics(),
              itemCount: (currentItems.length / 50).ceil(),
              itemBuilder: (context, index) {
                final startValue = _itemPerPage * index;
                final items = currentItems
                    .skip(startValue)
                    .take(_itemPerPage)
                    .toList(growable: false);
                return _EpisodeGridView(
                  episodeList: items,
                  onPressed: (episode) => context
                      .read<StreamingInfoBloc>()
                      .add(StreamingInfoFetch(episode: episode)),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _EpisodeGridView extends StatelessWidget {
  const _EpisodeGridView({
    required this.episodeList,
    required this.onPressed,
  });

  final List<EpisodeModel> episodeList;
  final void Function(EpisodeModel episode) onPressed;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: episodeList.length,
      padding: EdgeInsets.only(
        left: 16,
        right: 16,
        bottom: MediaQuery.paddingOf(context).bottom,
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 5,
        crossAxisSpacing: 16,
        mainAxisSpacing: 12,
        childAspectRatio: 2,
      ),
      itemBuilder: (context, index) {
        final episode = episodeList[index];
        return InkWell(
          onTap: () => onPressed(episode),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Text(
                episode.episodeNo.toString(),
                style: context.textTheme.titleMedium,
              ),
            ),
          ),
        );
      },
    );
  }
}
