import 'package:eizo_mushi/app/utils/context_extension.dart';
import 'package:eizo_mushi/data/model/home/home_model.dart';
import 'package:eizo_mushi/features/anime-detail/ui/screen/anime_detail_screen.dart';
import 'package:eizo_mushi/features/common/widgets/app_image_view.dart';
import 'package:flutter/material.dart';

class AnimeItemWidget extends StatelessWidget {
  const AnimeItemWidget({
    required this.anime,
    super.key,
  });

  final AnimeInfoHomeModel anime;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute<void>(
            builder: (context) => AnimeDetailScreen(
              animeBasicInfo: anime,
            ),
          ),
        );
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: AppImageView(
              imageUrl: anime.poster,
              width: 120,
              height: 160,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  anime.title,
                  style: context.textTheme.titleLarge,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 8),
                Text(
                  anime.tvInfo?.duration ?? 'null',
                  style: context.textTheme.bodyMedium,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Row(
                  spacing: 24,
                  children: [
                    if (anime.tvInfo?.totalSub != null)
                      Text(
                        'Sub: ${anime.tvInfo?.totalSub}',
                        style: context.textTheme.bodyMedium,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    if (anime.tvInfo?.totalDub != null)
                      Text(
                        'Dub: ${anime.tvInfo?.totalDub}',
                        style: context.textTheme.bodyMedium,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  anime.description,
                  style: context.textTheme.bodySmall,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
