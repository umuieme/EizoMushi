import 'package:eizo_mushi/app/utils/context_extension.dart';
import 'package:eizo_mushi/data/model/home/home_model.dart';
import 'package:eizo_mushi/features/anime-detail/ui/screen/anime_detail_screen.dart';
import 'package:eizo_mushi/features/common/widgets/app_image_view.dart';
import 'package:flutter/material.dart';

class TopAiring extends StatelessWidget {
  const TopAiring({required this.topAiringList, super.key});

  final List<AnimeInfoHomeModel> topAiringList;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            'Top Airing',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(),
          ),
        ),
        SizedBox(
          height: 200,
          child: ListView.builder(
            itemExtent: 200,
            itemCount: topAiringList.length,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemBuilder: (context, index) {
              return AnimeHorizItem(anime: topAiringList[index]);
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
