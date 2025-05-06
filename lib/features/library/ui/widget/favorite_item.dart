import 'package:eizo_mushi/data/model/home/home_model.dart';
import 'package:flutter/material.dart';

class FavoriteAnimeCard extends StatelessWidget {
  const FavoriteAnimeCard({
    required this.anime,
    required this.onTap,
    required this.onRemove,
    super.key,
  });
  final AnimeInfoHomeModel anime;
  final VoidCallback onTap;
  final VoidCallback onRemove;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(anime.id),
      background: Container(
        color: Colors.red,
      ),
      onDismissed: (direction) {
        onRemove();
      },
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                anime.poster,
                width: 80,
                height: 120,
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
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
