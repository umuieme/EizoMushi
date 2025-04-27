import 'package:cached_network_image/cached_network_image.dart';
import 'package:eizo_mushi/app/di/di.dart';
import 'package:eizo_mushi/app/utils/string_extension.dart';
import 'package:eizo_mushi/data/model/anime-detail/anime_detail_model.dart';
import 'package:eizo_mushi/data/model/home/home_model.dart';
import 'package:eizo_mushi/features/anime-detail/bloc/anime_detail_bloc.dart';
import 'package:eizo_mushi/features/anime-detail/ui/widgets/anime_detail_overview.dart';
import 'package:eizo_mushi/features/anime-player/ui/screen/anime_player_screen.dart';
import 'package:eizo_mushi/features/common/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnimeDetailPage extends StatelessWidget {
  const AnimeDetailPage({required this.animeBasicInfo, super.key});
  final AnimeInfoHomeModel animeBasicInfo;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AnimeDetailBloc>(param1: animeBasicInfo)
        ..add(AnimeDetailFetch()),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: BlocBuilder<AnimeDetailBloc, AnimeDetailState>(
          builder: (context, state) {
            return Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Hero(
                        tag: '${animeBasicInfo.id}-image',
                        child: _AnimePoster(posterUrl: animeBasicInfo.poster),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Hero(
                              tag: '${animeBasicInfo.id}-title',
                              child: Material(
                                child: Text(
                                  animeBasicInfo.title,
                                  style: const TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),
                            if (state is AnimeDetailLoadSuccess)
                              AnimeDetailInfo(
                                anime: state.data.data,
                              )
                            else if (state is AnimeDetailLoadInProgress)
                              const Center(
                                child: CircularProgressIndicator(),
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height:
                      kToolbarHeight + MediaQuery.paddingOf(context).top + 60,
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
            );
          },
        ),
      ),
    );
  }
}

class AnimeDetailInfo extends StatelessWidget {
  const AnimeDetailInfo({
    required this.anime,
    super.key,
  });
  final AnimeDetailModel anime;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
            InfoChip(label: anime.animeInfo.tvInfo.rating),
            if (anime.animeInfo.status.isNotNullOrNotEmpty)
              InfoChip(label: anime.animeInfo.status!),
          ],
        ),
        const SizedBox(height: 16),
        ExpandableOverview(overview: anime.animeInfo.overview),
        const SizedBox(height: 16),
        _InfoList(anime: anime),
        const SizedBox(height: 24),
      ],
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
        if (info.genres != null) _infoRow('Genres', info.genres!.join(', ')),
        if (info.studios != null) _infoRow('Studio', info.studios!),
        if (info.premiered != null) _infoRow('Premiered', info.premiered!),
        if (info.duration != null) _infoRow('Duration', info.duration!),
        if (info.malScore != null) _infoRow('Score', info.malScore!),
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
