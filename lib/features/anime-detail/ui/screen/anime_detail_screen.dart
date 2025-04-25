import 'package:cached_network_image/cached_network_image.dart';
import 'package:eizo_mushi/data/model/anime-detail/anime_detail_model.dart';
import 'package:eizo_mushi/features/anime-detail/ui/widgets/anime_detail_overview.dart';
import 'package:eizo_mushi/features/anime-player/ui/screen/anime_player_screen.dart';
import 'package:eizo_mushi/features/common/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class AnimeDetailPage extends StatelessWidget {
  const AnimeDetailPage({required this.anime, super.key});
  final AnimeDetailModel anime;

  @override
  Widget build(BuildContext context) {
    final info = anime.animeInfo;
    final tv = info.tvInfo;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _AnimePoster(posterUrl: anime.poster),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        anime.title,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 8),
                      AppPrimaryButton(
                        expanded: false,
                        title: 'Play',
                        onPressed: () {
                          Navigator.push<void>(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AnimePlayerScreen(
                                animeId: anime.dataId,
                              ),
                            ),
                          );
                        },
                        icon: const Icon(Icons.play_arrow),
                        iconPosition: IconPosition.right,
                      ),
                      const SizedBox(height: 8),
                      Wrap(
                        spacing: 8,
                        children: [
                          InfoChip(label: anime.showType),
                          InfoChip(label: tv.rating),
                          InfoChip(label: info.status),
                        ],
                      ),
                      const SizedBox(height: 16),
                      ExpandableOverview(overview: info.overview),
                      const SizedBox(height: 16),
                      _InfoList(anime: anime),
                      const SizedBox(height: 24),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: kToolbarHeight + MediaQuery.paddingOf(context).top + 60,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.black,
                  Colors.transparent,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class InfoChip extends StatelessWidget {
  const InfoChip({
    required this.label,
    super.key,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(label, style: const TextStyle(color: Colors.white)),
      backgroundColor: Colors.grey[800],
    );
  }
}

class _AnimePoster extends StatelessWidget {
  const _AnimePoster({required this.posterUrl});
  final String posterUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),
      child: CachedNetworkImage(
        imageUrl: posterUrl,
        height: 320,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}

class _InfoList extends StatelessWidget {
  const _InfoList({required this.anime});
  final AnimeDetailModel anime;

  @override
  Widget build(BuildContext context) {
    final info = anime.animeInfo;
    final tv = info.tvInfo;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _infoRow('Genres', info.genres.join(', ')),
        _infoRow('Studio', info.studios),
        _infoRow('Premiered', info.premiered),
        _infoRow('Duration', info.duration),
        _infoRow('Score', info.malScore),
        _infoRow('Episodes (Sub/Dub)', '${tv.sub}/${tv.dub}'),
      ],
    );
  }

  Widget _infoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 120,
            child: Text('$label:', style: const TextStyle(color: Colors.grey)),
          ),
          Expanded(
            child: Text(value, style: const TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
