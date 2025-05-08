import 'dart:math';

import 'package:eizo_mushi/app/utils/context_extension.dart';
import 'package:eizo_mushi/data/model/home/home_model.dart';
import 'package:eizo_mushi/features/anime-detail/ui/screen/anime_detail_screen.dart';
import 'package:eizo_mushi/features/anime-list/ui/screen/anime_list_screen.dart';
import 'package:eizo_mushi/features/common/widgets/app_image_view.dart';
import 'package:flutter/material.dart';

class HomeAnimeListWidget extends StatelessWidget {
  const HomeAnimeListWidget({
    required this.title,
    required this.animeList,
    super.key,
  });

  final List<AnimeInfoHomeModel> animeList;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: context.colorScheme.primaryFixedDim,
                    ),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {
                  Navigator.push<void>(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AnimeListScreen(
                        title: title,
                        animeList: animeList,
                      ),
                    ),
                  );
                },
                icon: Icon(
                  Icons.arrow_forward_rounded,
                  color: context.colorScheme.primaryFixedDim,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 200,
          child: ListView.builder(
            itemExtent: 200,
            itemCount: min(animeList.length, 10),
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemBuilder: (context, index) {
              return AnimeHorizItem(anime: animeList[index]);
            },
          ),
        ),
      ],
    );
  }
}

class AnimeHorizItem extends StatelessWidget {
  const AnimeHorizItem({
    required this.anime,
    super.key,
  });

  final AnimeInfoHomeModel anime;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: InkWell(
        onTap: () => Navigator.push<void>(
          context,
          MaterialPageRoute(
            builder: (context) => AnimeDetailScreen(
              animeBasicInfo: anime,
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: 4,
          children: [
            Expanded(
              child: Hero(
                tag: '${anime.id}-image',
                child: AppImageView(
                  imageUrl: anime.poster,
                  width: 100,
                  // height: 150,
                  fit: BoxFit.cover,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Hero(
                tag: '${anime.id}-title',
                child: Material(
                  color: Colors.transparent,
                  child: Text(
                    anime.title,
                    style: context.textTheme.titleLarge,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
